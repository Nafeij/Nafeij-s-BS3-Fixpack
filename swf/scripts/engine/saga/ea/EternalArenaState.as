package engine.saga.ea
{
   import engine.core.fsm.Fsm;
   import engine.core.fsm.State;
   import engine.core.fsm.StateData;
   import engine.core.logging.ILogger;
   import engine.saga.Saga;
   
   public class EternalArenaState extends State
   {
       
      
      public var eaFsm:EternalArenaFsm;
      
      public function EternalArenaState(param1:StateData, param2:Fsm, param3:ILogger)
      {
         super(param1,param2,param3);
         this.eaFsm = param2 as EternalArenaFsm;
      }
      
      override protected function handleEnteredState() : void
      {
         this.setEternalArenaChallenge();
      }
      
      protected function setEternalArenaChallenge() : void
      {
         if(data == null)
         {
            logger.info("EternalArenaState::SetEternalArenaChallenge - Passed in null data");
            return;
         }
         var _loc1_:Saga = Saga.instance;
         var _loc2_:SagaEternalArena = !!_loc1_ ? _loc1_.eternalArena : null;
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:EternalArenaChallenge = !!this.eaFsm.challenge ? this.eaFsm.challenge.clone() : null;
         var _loc4_:SagaEternalArenaDef_Leaderboards = _loc2_.def.leaderboards;
         if(_loc3_)
         {
            _loc4_.overrideLeaderboardEnvironment(SagaEternalArenaDef_Leaderboards.LB_ID_CURR,_loc3_.steam_lb_current);
            _loc4_.overrideLeaderboardEnvironment(SagaEternalArenaDef_Leaderboards.LB_ID_PREV,_loc3_.steam_lb_prev);
            _loc4_.overrideLeaderboardEnvironment(SagaEternalArenaDef_Leaderboards.LB_ID_WINS,_loc3_.steam_lb_wins);
         }
         _loc2_.challenge = _loc3_;
      }
      
      public function get errorString() : String
      {
         return "ea_challenge_network_failed";
      }
   }
}
