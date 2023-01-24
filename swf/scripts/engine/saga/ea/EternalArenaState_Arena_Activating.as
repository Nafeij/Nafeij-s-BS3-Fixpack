package engine.saga.ea
{
   import engine.core.fsm.Fsm;
   import engine.core.fsm.StateData;
   import engine.core.logging.ILogger;
   
   public class EternalArenaState_Arena_Activating extends EternalArenaState
   {
       
      
      public function EternalArenaState_Arena_Activating(param1:StateData, param2:Fsm, param3:ILogger)
      {
         super(param1,param2,param3);
      }
      
      override protected function handleEnteredState() : void
      {
         super.handleEnteredState();
         if(EternalArenaConfig.DEBUG)
         {
            logger.debug("EternalArenaState_Arena_Activating entered");
         }
      }
   }
}
