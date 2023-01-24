package engine.saga.ea
{
   import engine.battle.ability.def.BattleAbilityTag;
   import engine.battle.ability.effect.model.IEffect;
   import engine.battle.ability.model.IBattleAbility;
   import engine.battle.board.BattleBoardEvent;
   import engine.battle.board.model.IBattleBoard;
   import engine.battle.board.model.IBattleEntity;
   import engine.battle.fsm.BattleFsmEvent;
   import engine.battle.fsm.IBattleFsm;
   import engine.battle.fsm.state.BaseBattleState;
   import engine.battle.sim.IBattleParty;
   import engine.core.logging.ILogger;
   import engine.expression.ISymbols;
   import engine.saga.ISaga;
   import engine.saga.SagaVar;
   import engine.stat.def.StatType;
   import flash.utils.Dictionary;
   
   public class EternalArenaScorecard implements ISymbols
   {
       
      
      public var kills:int;
      
      public var kills_ability:int;
      
      public var kills_str:int;
      
      public var damage_done:int;
      
      public var damage_taken:int;
      
      public var injuries:int;
      
      public var turns:int;
      
      public var turns_player:int;
      
      public var turns_enemy:int;
      
      public var party_empty_slots:int;
      
      public var party_items:int;
      
      public var party_count:int;
      
      public var party_titles:int;
      
      public var tiles_moved_player:int;
      
      public var tiles_moved_enemy:int;
      
      public var seconds:int;
      
      public var danger:int;
      
      public var wave_count:int;
      
      public var big_hits:int;
      
      public var multi_wave_hero_sum:int;
      
      public var renown_spent:int;
      
      public var difficulty_mult:Number;
      
      public var victory:int;
      
      public var caches:Dictionary;
      
      public var _heroWaveCounts:Dictionary;
      
      public var score:int;
      
      public var scoring:EternalArenaScoring;
      
      public var logger:ILogger;
      
      public var saga:ISaga;
      
      public var arrangement:EternalArenaArrangement;
      
      public var board:IBattleBoard;
      
      public var battleFsm:IBattleFsm;
      
      private var _battleStarted:Boolean = false;
      
      public function EternalArenaScorecard(param1:EternalArenaScoring, param2:ISaga, param3:EternalArenaArrangement, param4:ILogger)
      {
         this.caches = new Dictionary();
         this._heroWaveCounts = new Dictionary();
         super();
         this.scoring = param1;
         this.logger = param4;
         this.saga = param2;
         this.arrangement = param3;
      }
      
      public function cleanup() : void
      {
         if(this.board)
         {
            this.board.removeEventListener(BattleBoardEvent.BOARD_ENTITY_KILLING_EFFECT,this.killingEffectHandler);
            this.board.removeEventListener(BattleBoardEvent.BOARD_ENTITY_DAMAGED,this.damagedHandler);
            this.board.removeEventListener(BattleBoardEvent.BOARD_ENTITY_TURN_STARTED,this.turnStartedHandler);
         }
         if(this.battleFsm)
         {
            this.battleFsm.removeEventListener(BattleFsmEvent.TURN_COMMITTED,this.turnCommittedHandler);
            this.battleFsm.removeEventListener(BattleFsmEvent.WAVE_RESPAWN_COMPLETED,this.waveRespawnHandler);
         }
         this._battleStarted = false;
      }
      
      public function startBattle(param1:IBattleBoard) : void
      {
         if(this._battleStarted)
         {
            return;
         }
         this._battleStarted = true;
         this.battleFsm = param1.fsm;
         this.board = param1;
         param1.addEventListener(BattleBoardEvent.BOARD_ENTITY_KILLING_EFFECT,this.killingEffectHandler);
         param1.addEventListener(BattleBoardEvent.BOARD_ENTITY_DAMAGED,this.damagedHandler);
         param1.addEventListener(BattleBoardEvent.BOARD_ENTITY_TURN_STARTED,this.turnStartedHandler);
         this.battleFsm.addEventListener(BattleFsmEvent.TURN_COMMITTED,this.turnCommittedHandler);
         this.battleFsm.addEventListener(BattleFsmEvent.WAVE_RESPAWN_COMPLETED,this.waveRespawnHandler);
         this.capturePartyValues();
         this.danger += param1.danger;
         this.difficulty_mult = this.getDifficultyMult();
         this.updateHeroWaveTracking();
         this.renown_spent = parseInt(this.arrangement.getValue(EternalArenaOptionGroupTypes.COMBATANTS,"renown")) - this.saga.icaravan.legend.renown;
      }
      
      private function capturePartyValues() : void
      {
         var _loc2_:IBattleParty = null;
         var _loc3_:int = 0;
         var _loc4_:IBattleEntity = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.board.numParties)
         {
            _loc2_ = this.board.getParty(_loc1_);
            if(_loc2_.isPlayer)
            {
               this.party_count = _loc2_.numMembers;
               this.party_empty_slots = 6 - this.party_count;
               _loc3_ = 0;
               while(_loc3_ < _loc2_.numMembers)
               {
                  _loc4_ = _loc2_.getMember(_loc3_);
                  if(_loc4_.item != null)
                  {
                     ++this.party_items;
                  }
                  if(_loc4_.titleItem != null)
                  {
                     ++this.party_titles;
                  }
                  _loc3_++;
               }
            }
            _loc1_++;
         }
      }
      
      private function getDifficultyMult() : Number
      {
         switch(this.saga.getVarInt(SagaVar.VAR_DIFFICULTY))
         {
            case 1:
               return this.saga.getVarNumber("ea_scoring_easy_difficulty_mult");
            case 2:
               return this.saga.getVarNumber("ea_scoring_medium_difficulty_mult");
            case 3:
               return this.saga.getVarNumber("ea_scoring_hard_difficulty_mult");
            default:
               return 0;
         }
      }
      
      private function updateHeroWaveTracking() : void
      {
         var _loc2_:* = null;
         var _loc3_:IBattleParty = null;
         var _loc4_:int = 0;
         var _loc5_:IBattleEntity = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.board.numParties)
         {
            _loc3_ = this.board.getParty(_loc1_);
            if(_loc3_.isPlayer)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc3_.numAlive)
               {
                  _loc5_ = _loc3_.getAliveMember(_loc4_);
                  _loc6_ = _loc5_.id;
                  if(this._heroWaveCounts.hasOwnProperty(_loc6_))
                  {
                     this._heroWaveCounts[_loc6_] += 1;
                  }
                  else
                  {
                     this._heroWaveCounts[_loc6_] = 1;
                  }
                  _loc4_++;
               }
            }
            _loc1_++;
         }
         this.multi_wave_hero_sum = 0;
         for(_loc2_ in this._heroWaveCounts)
         {
            _loc7_ = int(this._heroWaveCounts[_loc2_]);
            if(_loc7_ > 1)
            {
               this.multi_wave_hero_sum += _loc7_;
            }
         }
      }
      
      public function getSymbolValue(param1:String, param2:Boolean) : Number
      {
         if(!this.hasOwnProperty(param1))
         {
            if(this.caches[param1] == undefined)
            {
               throw new ArgumentError("invalid scorecard stat [" + param1 + "] not supported or present");
            }
            return this.caches[param1];
         }
         return this[param1];
      }
      
      public function computeScore(param1:Boolean) : void
      {
         this.victory = param1 ? 1 : 0;
         this.scoring.computeFunctions(this,this.logger);
         this.score = this.caches[this.scoring.score_function];
         this.logger.info("SCORE: " + this.score);
      }
      
      public function handleMoveComplete(param1:IBattleEntity, param2:int) : void
      {
      }
      
      public function turnCommittedHandler(param1:BattleFsmEvent) : void
      {
         var _loc2_:BaseBattleState = null;
         if(this.battleFsm)
         {
            if(this.battleFsm.activeEntity.isPlayer)
            {
               _loc2_ = this.battleFsm.current as BaseBattleState;
               if(_loc2_)
               {
                  this.seconds += Math.round(_loc2_.timeoutElapsedMs / 1000);
               }
               this.tiles_moved_player += this.battleFsm.turn.move.numSteps;
            }
            else
            {
               this.tiles_moved_enemy += this.battleFsm.turn.move.numSteps;
            }
         }
      }
      
      public function waveRespawnHandler(param1:BattleFsmEvent) : void
      {
         ++this.wave_count;
         this.danger += this.board.danger;
         this.updateHeroWaveTracking();
      }
      
      public function turnStartedHandler(param1:BattleBoardEvent) : void
      {
         ++this.turns;
         if(param1.entity.playerControlled)
         {
            ++this.turns_player;
         }
         else
         {
            ++this.turns_enemy;
         }
         this.scoring.handleTurnStarting(param1.entity);
      }
      
      public function damagedHandler(param1:BattleBoardEvent) : void
      {
         if(param1.statType != StatType.STRENGTH)
         {
            return;
         }
         if(param1.entity.isPlayer)
         {
            this.damage_taken += param1.amount;
         }
         else if(param1.entity.isEnemy)
         {
            this.damage_done += param1.amount;
            if(param1.amount >= 8)
            {
               ++this.big_hits;
            }
         }
      }
      
      public function killingEffectHandler(param1:BattleBoardEvent) : void
      {
         var _loc2_:IEffect = param1.entity.killingEffect;
         this.scoring.handleEffectKill(_loc2_);
         var _loc3_:IBattleAbility = _loc2_.ability;
         if(_loc2_.target.isPlayer)
         {
            this.injuries += _loc2_.target.stats.rank - 1;
            return;
         }
         if(_loc2_.target.isEnemy)
         {
            if(_loc3_.def.tag == BattleAbilityTag.ATTACK_STR)
            {
               ++this.kills_str;
            }
            else
            {
               ++this.kills_ability;
            }
            ++this.kills;
            return;
         }
      }
   }
}
