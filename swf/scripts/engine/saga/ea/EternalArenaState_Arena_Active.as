package engine.saga.ea
{
   import engine.core.fsm.Fsm;
   import engine.core.fsm.StateData;
   import engine.core.logging.ILogger;
   
   public class EternalArenaState_Arena_Active extends EternalArenaState
   {
       
      
      public function EternalArenaState_Arena_Active(param1:StateData, param2:Fsm, param3:ILogger)
      {
         super(param1,param2,param3);
      }
      
      override protected function handleEnteredState() : void
      {
         super.handleEnteredState();
         logger.info("EternalArenaState_Arena_Active entered");
      }
   }
}
