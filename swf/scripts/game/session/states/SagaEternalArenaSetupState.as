package game.session.states
{
   import engine.core.fsm.Fsm;
   import engine.core.fsm.StateData;
   import engine.core.logging.ILogger;
   import engine.saga.ea.EternalArenaArrangement;
   import game.session.GameState;
   
   public class SagaEternalArenaSetupState extends GameState
   {
       
      
      public var arrangement:EternalArenaArrangement;
      
      public var readonly:Boolean;
      
      public function SagaEternalArenaSetupState(param1:StateData, param2:Fsm, param3:ILogger)
      {
         super(param1,param2,param3);
      }
      
      override protected function handleEnteredState() : void
      {
         this.arrangement = data.getValue(GameStateDataEnum.EA_ARRANGEMENT);
         this.readonly = data.getValue(GameStateDataEnum.EA_ARRANGEMENT_READONLY);
      }
   }
}
