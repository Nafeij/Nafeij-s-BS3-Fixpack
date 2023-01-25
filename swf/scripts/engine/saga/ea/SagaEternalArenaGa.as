package engine.saga.ea
{
   import engine.core.analytic.Ga;
   import engine.core.logging.ILogger;
   import engine.entity.def.IEntityDef;
   
   public class SagaEternalArenaGa
   {
      
      private static const MASTER_CHALLENGE_KEY_:String = "challenge_last_";
      
      public static const CAT_CHO:String = "ea_cho";
      
      public static const CAT_CHS:String = "ea_chs";
      
      public static const CAT_RRA:String = "ea_rra";
      
      public static const CAT_RCH:String = "ea_rch";
      
      public static const CAT_ARK:String = "ea_ark";
      
      public static const CAT_ARS:String = "ea_ars";
      
      public static const PLAY:String = "play";
      
      public static const VIEW:String = "view";
      
      public static const WINS:String = "wins";
      
      public static const WIN:String = "win";
       
      
      public var ea:SagaEternalArena;
      
      public var logger:ILogger;
      
      private var battleStarted:Boolean;
      
      public function SagaEternalArenaGa(param1:SagaEternalArena)
      {
         super();
         this.ea = param1;
         this.logger = param1.saga.logger;
      }
      
      private function _reportChallengeSituation(param1:int, param2:String, param3:String, param4:int) : void
      {
         var _loc6_:String = null;
         if(param1 <= 0)
         {
            this.logger.e("ETAR","invalid challenge ordinal reported to _reportChallengeSituation " + param3);
            return;
         }
         if(!param2)
         {
            this.logger.e("ETAR","invalid config hash reported to _reportChallengeSituation " + param3);
            return;
         }
         if(param3 != WINS)
         {
            _loc6_ = MASTER_CHALLENGE_KEY_ + param3;
            if(param2 == this.ea.saga.getMasterSaveKey(_loc6_))
            {
               return;
            }
            this.ea.saga.setMasterSaveKey(_loc6_,param2);
         }
         var _loc5_:String = param1.toString();
         Ga.normal(CAT_CHO,_loc5_,param3,param4);
         Ga.normal(CAT_CHS,param3,_loc5_,param4);
      }
      
      public function reportViewChallenge(param1:int, param2:String) : void
      {
         this._reportChallengeSituation(param1,param2,VIEW,1);
      }
      
      public function reportBattleStart() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         this.battleStarted = true;
         if(this.ea && this.ea.challenge && this.ea.isChallengeArrangement)
         {
            _loc1_ = this.ea.arrangement.ordinal;
            _loc2_ = this.ea.challenge.configHash;
            this._reportChallengeSituation(_loc1_,_loc2_,PLAY,1);
         }
      }
      
      public function reportBattleEnd(param1:Boolean) : void
      {
         var ord:int = 0;
         var configHash:String = null;
         var value:int = 0;
         var composite:String = null;
         var victory:Boolean = param1;
         if(!this.battleStarted)
         {
            this.logger.i("ETAR","reportBattleEnd skipping reporting due to false battleStarted");
            return;
         }
         this.battleStarted = false;
         if(this.ea)
         {
            if(Boolean(this.ea.challenge) && this.ea.isChallengeArrangement)
            {
               ord = this.ea.arrangement.ordinal;
               configHash = this.ea.challenge.configHash;
               if(victory)
               {
                  this._reportChallengeSituation(ord,configHash,WIN,1);
               }
               this._reportChallengeSituation(ord,configHash,WINS,victory ? 1 : 0);
            }
            else
            {
               value = victory ? 1 : 0;
               composite = this.ea.def.optionGroups.reportOptionChoices(this.ea.arrangement.valuesByType,function(param1:String, param2:String, param3:String):void
               {
                  Ga.normal(CAT_ARK,param2,param3,value);
               });
               Ga.normal(CAT_ARS,PLAY,composite,value);
            }
         }
      }
      
      public function reportHeroReset(param1:IEntityDef) : void
      {
         if(!param1)
         {
            this.logger.i("ETAR","reportHeroRespec skipping reporting due to null entity");
            return;
         }
         var _loc2_:String = String(param1.name);
         var _loc3_:String = String(param1.stats.rank.toString());
         Ga.normal(CAT_RRA,_loc3_,_loc2_,1);
         Ga.normal(CAT_RCH,_loc2_,_loc3_,1);
      }
   }
}
