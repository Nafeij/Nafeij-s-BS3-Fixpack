package engine.saga.ea
{
   import com.stoicstudio.platform.Platform;
   import engine.ability.IAbilityDefLevel;
   import engine.ability.IAbilityDefLevels;
   import engine.battle.board.model.IBattleBoard;
   import engine.core.logging.ILogger;
   import engine.core.util.StringUtil;
   import engine.entity.def.EntitiesMetadata;
   import engine.entity.def.IEntityDef;
   import engine.entity.def.IEntityListDef;
   import engine.entity.def.ILegend;
   import engine.entity.def.ITitleDef;
   import engine.entity.def.ITitleListDef;
   import engine.entity.def.Item;
   import engine.entity.def.ItemList;
   import engine.saga.ISaga;
   import engine.saga.SagaLeaderboards;
   import engine.saga.SagaLeaderboardsEvent;
   import engine.saga.SagaVar;
   import engine.saga.action.ActionDef;
   import engine.saga.action.ActionType;
   import engine.saga.action.Action_Battle;
   import engine.talent.TalentDefs;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import tbs.srv.data.LeaderboardData;
   
   public class SagaEternalArena extends EventDispatcher
   {
      
      public static const EVENT_CHALLENGE:String = "EVENT_CHALLENGE";
      
      public static var ENABLED:Boolean;
      
      public static var ENABLED_LEADERBOARDS:Boolean = true;
      
      public static var categories:Array = ["easy","norm","hard"];
      
      public static var dispatcher:EventDispatcher = new EventDispatcher();
      
      public static const T_COMBATANTS:String = EternalArenaOptionGroupTypes.COMBATANTS;
      
      public static const T_RULES:String = EternalArenaOptionGroupTypes.RULES;
      
      public static const T_BOARD:String = EternalArenaOptionGroupTypes.BOARD;
      
      public static const K_SAGA:String = EternalArenaBoards.KEY_SAGA;
      
      public static const K_SCENE:String = EternalArenaBoards.KEY_SCENE;
      
      public static var _difficulties:Array = ["easy","medium","hard"];
       
      
      public var def:SagaEternalArenaDef;
      
      public var saga:ISaga;
      
      private var eaga:SagaEternalArenaGa;
      
      private var savedCastAbilities:Dictionary;
      
      private var _challenge:EternalArenaChallenge;
      
      public var leaderboards_global:Vector.<LeaderboardData>;
      
      public var leaderboards_friends:Vector.<LeaderboardData>;
      
      private var _logger:ILogger;
      
      private var _fsm:EternalArenaFsm;
      
      private var _scorecard:EternalArenaScorecard;
      
      public var mutators:EternalArenaScoringMutators;
      
      private var _eMeta:EntitiesMetadata;
      
      private var _talents:TalentDefs;
      
      private var _arrangement:EternalArenaArrangement;
      
      private var _isChallengeArrangement:Boolean;
      
      public function SagaEternalArena(param1:ISaga, param2:SagaEternalArenaDef, param3:ILogger, param4:EntitiesMetadata, param5:TalentDefs)
      {
         var _loc9_:IEntityDef = null;
         this._challenge = new EternalArenaChallenge();
         this.leaderboards_global = new Vector.<LeaderboardData>();
         this.leaderboards_friends = new Vector.<LeaderboardData>();
         super();
         this.saga = param1;
         this.def = param2;
         this._logger = param3;
         this._eMeta = param4;
         this._talents = param5;
         this.eaga = new SagaEternalArenaGa(this);
         this._initLeaderboard();
         SagaLeaderboards.dispatcher.addEventListener(SagaLeaderboardsEvent.FETCHED,this.leaderboardFetchedHandler);
         SagaLeaderboards.dispatcher.addEventListener(SagaLeaderboardsEvent.FETCH_ERROR,this.leaderboardFetchErrorHandler);
         this.savedCastAbilities = new Dictionary();
         var _loc6_:int = 0;
         while(_loc6_ < param1.cast.numEntityDefs)
         {
            _loc9_ = param1.cast.getEntityDef(_loc6_);
            if(_loc9_.saves)
            {
               this.savedCastAbilities[_loc9_.id] = _loc9_.actives.clone(this._logger);
            }
            _loc6_++;
         }
         var _loc7_:String = EternalArenaConfig.HOST_URL;
         var _loc8_:String = Platform.environment;
         this._logger.i("EA  ","Environment is " + Platform.environment);
         if(_loc8_)
         {
            _loc8_ = _loc8_.replace(/\./g,"-");
         }
         _loc8_ = !!_loc8_ ? _loc8_ + "." : "";
         _loc7_ = _loc7_.replace("{ENVIRONMENT}",_loc8_);
         this._logger.i("EA  ","Using \'" + _loc7_ + "\' for server URL");
         this._fsm = new EternalArenaFsm(param2.optionGroups,param2.contentVersion,_loc7_,this._logger);
         this._fsm.startFsm(null);
      }
      
      public function get scorecard() : EternalArenaScorecard
      {
         return this._scorecard;
      }
      
      public function set scorecard(param1:EternalArenaScorecard) : void
      {
         if(this._scorecard == param1)
         {
            return;
         }
         if(this._scorecard)
         {
            this._scorecard.cleanup();
         }
         this._scorecard = param1;
      }
      
      public function get challenge() : EternalArenaChallenge
      {
         return this._challenge;
      }
      
      public function set challenge(param1:EternalArenaChallenge) : void
      {
         if(this._challenge == param1)
         {
            return;
         }
         this._challenge = param1;
         dispatchEvent(new Event(EVENT_CHALLENGE));
      }
      
      public function cleanup() : void
      {
         SagaLeaderboards.dispatcher.removeEventListener(SagaLeaderboardsEvent.FETCHED,this.leaderboardFetchedHandler);
         SagaLeaderboards.dispatcher.removeEventListener(SagaLeaderboardsEvent.FETCH_ERROR,this.leaderboardFetchErrorHandler);
         if(this.scorecard)
         {
            this.scorecard.cleanup();
            this.scorecard = null;
         }
         if(this.mutators)
         {
            this.mutators.cleanup();
            this.mutators = null;
         }
         if(this._fsm)
         {
            this._fsm.stopFsm(true);
            this._fsm = null;
         }
         this.def = null;
         this.saga = null;
         this.savedCastAbilities = null;
      }
      
      private function leaderboardFetchErrorHandler(param1:SagaLeaderboardsEvent) : void
      {
         dispatcher.dispatchEvent(new SagaLeaderboardsEvent(SagaLeaderboardsEvent.FETCH_ERROR,param1.lbname));
      }
      
      private function leaderboardFetchedHandler(param1:SagaLeaderboardsEvent) : void
      {
         var _loc2_:String = param1.lbname;
         var _loc3_:LeaderboardData = SagaLeaderboards.getLeaderboard_friends(_loc2_);
         var _loc4_:LeaderboardData = SagaLeaderboards.getLeaderboard_global(_loc2_);
         var _loc5_:int = this.def.leaderboards.getLeaderboardIndexByName(_loc2_);
         this.leaderboards_global[_loc5_] = _loc4_;
         this.leaderboards_friends[_loc5_] = _loc3_;
         dispatcher.dispatchEvent(new SagaEternalArenaEvent(SagaEternalArenaEvent.CHANGED,_loc3_));
         dispatcher.dispatchEvent(new SagaEternalArenaEvent(SagaEternalArenaEvent.CHANGED,_loc4_));
      }
      
      private function _initLeaderboard() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = this.def.leaderboards.numLeaderboards;
         this.leaderboards_global = new Vector.<LeaderboardData>(_loc2_);
         this.leaderboards_friends = new Vector.<LeaderboardData>(_loc2_);
      }
      
      public function requestAllEternalArenaLeaderboards() : void
      {
         var _loc1_:SagaEternalArenaDef_Leaderboard = null;
         for each(_loc1_ in this.def.leaderboards._leaderboards)
         {
            SagaLeaderboards.fetchLeaderboard(_loc1_.override);
         }
      }
      
      public function initArrangement(param1:Boolean, param2:EternalArenaArrangement) : EternalArenaArrangement
      {
         var _loc3_:EternalArenaOptionGroup = null;
         param2 = !!param2 ? param2 : new EternalArenaArrangement();
         for each(_loc3_ in this.def.optionGroups.groupsById)
         {
            param2 = this.initArrangementGroup(_loc3_.id,param1,param2);
         }
         return param2;
      }
      
      public function initArrangementGroup(param1:String, param2:Boolean, param3:EternalArenaArrangement) : EternalArenaArrangement
      {
         param3 = !!param3 ? param3 : new EternalArenaArrangement();
         var _loc4_:EternalArenaOptionGroup = this.def.optionGroups.getGroupById(param1);
         _loc4_.initArrangementValues(param3,param2);
         return param3;
      }
      
      public function get currentArrangement() : EternalArenaArrangement
      {
         return this._arrangement;
      }
      
      public function get arrangement() : EternalArenaArrangement
      {
         return this._arrangement;
      }
      
      public function get isChallengeArrangement() : Boolean
      {
         return Boolean(this._arrangement) && this._isChallengeArrangement;
      }
      
      public function get isChallengeArrangementActive() : Boolean
      {
         if(this.isChallengeArrangement)
         {
            if(this._challenge && this._challenge.isActive && Boolean(this._challenge.arrangement))
            {
               return this._challenge.arrangement.equals(this._arrangement);
            }
         }
         return false;
      }
      
      public function get isTimedBattle() : Boolean
      {
         if(!this._arrangement)
         {
            return false;
         }
         var _loc1_:String = this._arrangement.getValue(T_RULES,"timer");
         if(_loc1_ == "on")
         {
            return true;
         }
         return false;
      }
      
      public function playBattle(param1:EternalArenaArrangement, param2:Boolean) : void
      {
         var _loc11_:Object = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         if(param1)
         {
            _loc11_ = param1.toJson();
            _loc12_ = JSON.stringify(_loc11_);
            this._logger.i("EA  ","Arrangement: " + _loc12_);
         }
         var _loc3_:String = param1.getValue(T_COMBATANTS,"tier");
         var _loc4_:EternalArenaTierDef = this.def.getTierById(_loc3_);
         if(!_loc4_)
         {
            this._logger.error("An invalid tierId was supplied by the arrangement [" + _loc3_ + "]");
            return;
         }
         this._arrangement = param1;
         this._isChallengeArrangement = param2;
         this.saga.setVar("ea_start_arena_setup",true);
         this._setupBattle_roster(_loc4_);
         this.saga.icaravan.legend.party.clear();
         this.saga.icaravan.legend.renown = parseInt(param1.getValue(T_COMBATANTS,"renown"));
         this.saga.difficulty = this._interpretDifficulty(param1.getValue(T_RULES,"difficulty"));
         var _loc5_:String = param1.getValue(T_RULES,"scoring");
         var _loc6_:EternalArenaScoring = this.def.scorings.getScoring(_loc5_);
         if(!_loc6_)
         {
            this._logger.error("unknown scoring entry for arena battle scoring id [" + _loc5_ + "]");
            this._logger.info("defaulting to [regular]");
            _loc6_ = this.def.scorings.getScoring("regular");
            if(!_loc6_)
            {
               throw new IllegalOperationError("unknown scoring entry for arena battle scoring id [regular]");
            }
         }
         this.saga.setVar(SagaVar.VAR_TRAVEL_HUD_APPEARANCE,this._interpretArtifact(param1.getValue(T_RULES,"artifact")));
         var _loc7_:ActionDef = new ActionDef(null);
         _loc7_.battle_timer = this._interpretTimer(param1.getValue(T_RULES,"timer"));
         this.scorecard = new EternalArenaScorecard(_loc6_,this.saga,this._arrangement,this._logger);
         this.mutators = new EternalArenaScoringMutators(this.saga,this._arrangement,this._logger);
         _loc7_.type = ActionType.BATTLE;
         _loc7_.instant = false;
         _loc7_.restore_scene = false;
         var _loc8_:* = this.def.boards.getUrl(param1.getValue(T_BOARD,K_SAGA),param1.getValue(T_BOARD,K_SCENE));
         if(!StringUtil.endsWith(_loc8_,".z"))
         {
            _loc8_ += ".z";
         }
         _loc7_.scene = _loc8_;
         _loc7_.assemble_heroes = true;
         _loc7_.bucket_quota = _loc4_.danger;
         _loc7_.board_id = param1.getValue(T_BOARD,EternalArenaBoards.KEY_BOARD);
         _loc7_.use_waves = param1.getValue(T_BOARD,EternalArenaBoards.KEY_WAVES) == "true" ? true : false;
         var _loc9_:EternalArenaEnemiesDef = this.def.getEnemyGroupById(param1.getValue(T_COMBATANTS,"enemies"));
         if(_loc9_ == null)
         {
            throw new IllegalOperationError("Invalid Enemy Group [ " + param1.getValue(T_COMBATANTS,"enemies") + " ]");
         }
         _loc7_.bucket = _loc9_.bucket;
         if(_loc9_.waveBuckets)
         {
            _loc13_ = "";
            _loc14_ = 0;
            while(_loc14_ < _loc9_.waveBuckets.length)
            {
               _loc13_ += _loc9_.waveBuckets[_loc14_] + ",";
               _loc14_++;
            }
            if(_loc14_ > 0)
            {
               _loc13_ = _loc13_.slice(0,_loc13_.length - 1);
            }
            _loc7_.param = _loc13_;
         }
         var _loc10_:Action_Battle = this.saga.executeActionDef(_loc7_,null,null) as Action_Battle;
         if(_loc10_)
         {
            _loc10_.skipRewards = true;
         }
      }
      
      private function _setupBattle_roster(param1:EternalArenaTierDef) : void
      {
         var _loc6_:String = null;
         var _loc7_:IEntityDef = null;
         var _loc8_:IAbilityDefLevels = null;
         var _loc9_:int = 0;
         var _loc10_:IAbilityDefLevel = null;
         if(!param1)
         {
            throw new ArgumentError("no tier supplied");
         }
         var _loc2_:String = this._arrangement.getValue(T_COMBATANTS,"roster");
         var _loc3_:EternalArenaRoster = this.def.getRosterById(_loc2_);
         var _loc4_:IEntityListDef = this.saga.cast;
         this.saga.setCaravanById("ea");
         this.saga.resetConsumedTitles();
         this.saga.icaravan.roster.clear();
         this._setupBattle_items(param1);
         var _loc5_:EternalArenaCastModifiers = this.def.castMods;
         if(!_loc5_)
         {
            this._logger.e("ETAR","SagaEternalArena.spendEntityPoints() SagaEternalArenaDef missing EternalArenaCastModifiers!");
         }
         for each(_loc6_ in _loc3_.units)
         {
            _loc7_ = _loc4_.getEntityDefById(_loc6_);
            if(_loc7_ == null)
            {
               this._logger.e("ETAR","SagaEternalArena._setupBattle_roster() cannot find roster unit " + _loc6_);
            }
            else
            {
               _loc8_ = this.savedCastAbilities[_loc7_.id] as IAbilityDefLevels;
               if(_loc8_)
               {
                  _loc9_ = 0;
                  while(_loc9_ < _loc8_.numAbilities)
                  {
                     _loc10_ = _loc8_.getAbilityDefLevel(_loc9_);
                     if(Boolean(_loc10_) && !_loc7_.actives.hasAbility(_loc10_.id))
                     {
                        _loc7_.actives.addAbilityDefLevel(_loc10_,this._logger);
                     }
                     _loc9_++;
                  }
               }
               _loc7_.doApplyRankLimits(param1.player_minrank,param1.player_minrank,this.saga.unitStatCosts,this._logger);
               _loc7_.doFullRespec(this.saga,false);
               if(_loc5_)
               {
                  _loc7_.spendPoints(_loc5_,this._eMeta,this.saga.unitStatCosts,this._talents);
                  this._equipBestItem(_loc7_,_loc5_.getItemList(_loc7_.id));
                  this._equipBestTitle(_loc7_,_loc5_.getTitleList(_loc7_.id));
               }
               this.saga.icaravan.roster.addEntityDef(_loc7_);
            }
         }
         this.saga.icaravan.legend.computeRosterRowCount();
         this.saga.uninjureAll();
      }
      
      private function _equipBestTitle(param1:IEntityDef, param2:Vector.<String>) : void
      {
         var _loc5_:ITitleDef = null;
         var _loc3_:ITitleListDef = this.saga.iSagaDef.titleDefs;
         if(!param1 || !param2 || !_loc3_)
         {
            this._logger.e("ETAR","SagaEternalArena._equipBestTitle( " + param1 + ", " + param2 + ") Failed!");
            return;
         }
         var _loc4_:int = 0;
         while(_loc4_ < param2.length)
         {
            _loc5_ = _loc3_.getTitleDef(param2[_loc4_]);
            if(this.saga.isTitleValid(param1,_loc5_))
            {
               this._logger.i("ETAR","SagaEternalArena._equipBestTitle() equipped title " + _loc5_ + " to " + param1);
               param1.defTitle = _loc5_;
               param1.stats.titleRank = param1.maxEATitleRank;
               this.saga.consumeTitle(_loc5_);
               return;
            }
            _loc4_++;
         }
      }
      
      private function _equipBestItem(param1:IEntityDef, param2:Vector.<String>) : void
      {
         var _loc6_:Item = null;
         var _loc3_:ItemList = this.saga.icaravan.legend.items;
         var _loc4_:ILegend = this.saga.icaravan.legend;
         if(!param1 || !param2)
         {
            this._logger.e("ETAR","SagaEternalArena._equipBestItem( " + param1 + ", " + param2 + ") Failed!");
            return;
         }
         var _loc5_:int = 0;
         while(_loc5_ < param2.length)
         {
            _loc6_ = _loc3_.getFirstItemByDefId(param2[_loc5_]);
            if(_loc6_ != null)
            {
               if(_loc6_.owner == null)
               {
                  this._logger.i("ETAR","SagaEternalArena._equipBestItem() adding item " + _loc6_.id + " to " + param1.id);
                  _loc4_.putItemOnEntity(param1,_loc6_);
                  return;
               }
            }
            _loc5_++;
         }
         this._logger.i("ETAR","SagaEternalArena._equipBestItem() failed to find available item");
      }
      
      private function _setupBattle_items(param1:EternalArenaTierDef) : void
      {
         var _loc5_:String = null;
         var _loc6_:Item = null;
         var _loc2_:String = this._arrangement.getValue(T_COMBATANTS,"items");
         var _loc3_:EternalArenaItems = this.def.getItemsById(_loc2_);
         var _loc4_:ItemList = this.saga.icaravan.legend.items;
         _loc4_.clearItems();
         for each(_loc5_ in _loc3_.items)
         {
            _loc6_ = this.saga.createItemByDefId(_loc5_);
            if(param1.player_maxrank - 1 >= _loc6_.def.rank)
            {
               _loc4_.addItem(_loc6_);
            }
         }
      }
      
      private function _interpretDifficulty(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < _difficulties.length)
         {
            if(param1 == _difficulties[_loc2_])
            {
               return _loc2_ + 1;
            }
            _loc2_++;
         }
         this._logger.error("bad difficulty " + param1);
         return 1;
      }
      
      private function _interpretArtifact(param1:String) : int
      {
         var _loc2_:String = "spear";
         if(param1 == _loc2_)
         {
            return 1;
         }
         return 0;
      }
      
      private function _interpretTimer(param1:String) : int
      {
         var _loc2_:String = "on";
         if(param1 == _loc2_)
         {
            return 30;
         }
         return 0;
      }
      
      public function get isPillage() : Boolean
      {
         var _loc1_:String = "pillage";
         return Boolean(this._arrangement) && this._arrangement.getValue(EternalArenaOptionGroupTypes.RULES,"initiative") == _loc1_;
      }
      
      public function handleBattleStarted(param1:IBattleBoard) : void
      {
         if(!this.scorecard)
         {
            this._logger.error("need a scorecard to start a battle");
            return;
         }
         this.scorecard.startBattle(param1);
         if(this.mutators)
         {
            this.mutators.startBattle(param1);
         }
         this.gaReportBattleStart();
      }
      
      public function handleBattleEnded(param1:Boolean) : void
      {
         if(!this.scorecard)
         {
            this._logger.error("need a scorecard to end a battle");
            return;
         }
         this.scorecard.computeScore(param1);
         if(this.mutators)
         {
            this.mutators.endBattle();
         }
         this.uploadLeaderboardScore(param1);
         this.gaReportBattleEnd(param1);
      }
      
      private function uploadLeaderboardScore(param1:Boolean) : void
      {
         var _loc2_:SagaEternalArenaDef_Leaderboards = null;
         var _loc3_:String = null;
         if(this.isChallengeArrangement)
         {
            if(param1)
            {
               _loc2_ = this.def.leaderboards;
               _loc3_ = _loc2_.getLeaderboardIdByName(SagaEternalArenaDef_Leaderboards.LB_ID_CURR.base);
               if(this.isChallengeArrangementActive)
               {
                  this._logger.i("ETAR","handleBattleEnded challenge ACTIVE, reporting score " + this.scorecard.score + " to [" + _loc3_ + "]");
                  SagaLeaderboards.uploadLeaderboardScore(_loc3_,this.scorecard.score,false);
               }
               else
               {
                  this._logger.i("ETAR","handleBattleEnded challenge ENDED, skipping score " + this.scorecard.score);
               }
            }
            else
            {
               this._logger.i("ETAR","handleBattleEnded defeat, ignoring score " + this.scorecard.score);
            }
         }
      }
      
      public function gaReportViewChallenge(param1:int, param2:String) : void
      {
         this.eaga.reportViewChallenge(param1,param2);
      }
      
      public function gaReportBattleEnd(param1:Boolean) : void
      {
         this.eaga.reportBattleEnd(param1);
      }
      
      public function gaReportBattleStart() : void
      {
         this.eaga.reportBattleStart();
      }
      
      public function gaReportHeroRespec(param1:IEntityDef) : void
      {
         this.eaga.reportHeroReset(param1);
      }
      
      public function get errorStateString() : String
      {
         var _loc1_:EternalArenaState = null;
         if(this._fsm)
         {
            _loc1_ = this._fsm.current as EternalArenaState;
            if(_loc1_)
            {
               return _loc1_.errorString;
            }
         }
         return "";
      }
   }
}
