package engine.saga.ea
{
   import engine.core.fsm.Fsm;
   import engine.core.fsm.StateData;
   import engine.core.logging.ILogger;
   
   public class EternalArenaState_NetworkFailed extends EternalArenaState
   {
       
      
      public function EternalArenaState_NetworkFailed(param1:StateData, param2:Fsm, param3:ILogger)
      {
         super(param1,param2,param3);
      }
      
      override protected function handleEnteredState() : void
      {
         super.handleEnteredState();
         logger.info("EternalArenaState_NetworkState entered");
      }
      
      override public function get errorString() : String
      {
         return "ea_challenge_error_network_failed";
      }
   }
}
