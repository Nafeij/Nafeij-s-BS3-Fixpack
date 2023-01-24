package engine.saga.ea
{
   import engine.core.fsm.Fsm;
   import engine.core.http.HttpJsonAction;
   import engine.core.logging.ILogger;
   import engine.saga.Saga;
   import flash.utils.getTimer;
   
   public class EternalArenaFsm extends Fsm
   {
       
      
      private var _communicator:EternalArenaCommunicator;
      
      private var _optionGroup:EternalArenaOptionGroups;
      
      public var challenge:EternalArenaChallenge;
      
      public function EternalArenaFsm(param1:EternalArenaOptionGroups, param2:String, param3:String, param4:ILogger)
      {
         this.challenge = new EternalArenaChallenge();
         super("ea_fsm",param4);
         this._optionGroup = param1;
         this._communicator = new EternalArenaCommunicator(param1,param2,param4,param3,this.OnTransactionUpdated,this.OnTimeTillCompletionUpdated,this.OnError);
         registerState(EternalArenaState_Initializing);
         registerState(EternalArenaState_Arena_Activating);
         registerState(EternalArenaState_Arena_Active);
         registerState(EternalArenaState_Arena_Pending);
         registerState(EternalArenaState_Arena_Unknown);
         registerState(EternalArenaState_NetworkFailed);
         registerState(EternalArenaState_Error_ClientUpdate);
         initialState = EternalArenaState_Initializing;
      }
      
      override protected function cleanup() : void
      {
         this._communicator.cleanup();
         this._communicator = null;
         this.challenge = null;
         this._optionGroup = null;
         super.cleanup();
      }
      
      private function OnTimeTillCompletionUpdated(param1:EternalArenaGetStatusTxn) : void
      {
         var _loc2_:Saga = Saga.instance;
         var _loc3_:SagaEternalArena = !!_loc2_ ? _loc2_.eternalArena : null;
         if(!this.challenge || !_loc3_)
         {
            return;
         }
         this.challenge.statusUpdateTimeMs = getTimer() + param1.timeUntilStatusUpdate;
         if(_loc3_.challenge)
         {
            _loc3_.challenge.statusUpdateTimeMs = this.challenge.statusUpdateTimeMs;
         }
         if(EternalArenaConfig.DEBUG)
         {
            logger.debug("OnTimeTillCompletionUpdated - Updating time");
         }
      }
      
      private function OnTransactionUpdated(param1:HttpJsonAction) : void
      {
         if(param1 is EternalArenaGetStatusTxn)
         {
            this.HandleConfigUpdateTxn(param1 as EternalArenaGetStatusTxn);
         }
         else if(param1 is EternalArenaGetArenaArrangementTxn)
         {
            this.HandleArrangementUpdateTxn(param1 as EternalArenaGetArenaArrangementTxn);
         }
         else
         {
            logger.debug("OnTransactionUpdated::Received a transaction of invalid type [" + param1 + "]");
         }
      }
      
      private function HandleConfigUpdateTxn(param1:EternalArenaGetStatusTxn) : void
      {
         this.challenge = new EternalArenaChallenge();
         logger.info("HandleConfigUpdateTxn::Updating our config");
         this.challenge.ordinal = param1.ordinal;
         this.challenge.absoluteUpdateTimeMs = param1.nextStatusUpdate;
         this.challenge.statusUpdateTimeMs = getTimer() + param1.timeUntilStatusUpdate;
         this.challenge.steam_lb_current = param1.steam_lb_current;
         this.challenge.steam_lb_prev = param1.steam_lb_prev;
         this.challenge.steam_lb_wins = param1.steam_lb_wins;
         this.challenge.configHash = param1.configHash;
         switch(param1.challengeStatus)
         {
            case "active":
               transitionTo(EternalArenaState_Arena_Activating,current.data);
               break;
            case "pending":
            default:
               ++this.challenge.ordinal;
               transitionTo(EternalArenaState_Arena_Pending,current.data);
         }
      }
      
      private function HandleArrangementUpdateTxn(param1:EternalArenaGetArenaArrangementTxn) : void
      {
         logger.info("HandleArrangementUpdateTxn::Updating our arena arrangement");
         if(this.challenge)
         {
            this.challenge.arrangement = param1.arrangement;
         }
         else if(EternalArenaConfig.DEBUG)
         {
            logger.debug("EternalArenaFsm::HandleArrangementUpdateTxn::No challenge present while attempting to enter the Active state.");
         }
         transitionTo(EternalArenaState_Arena_Active,current.data);
      }
      
      private function OnError(param1:String) : void
      {
         logger.info("OnError::Received error status [" + param1 + "]");
         this.challenge = null;
         switch(param1)
         {
            case EternalArenaConfig.TXN_ERROR_ARRANGEMENT_HASH:
            case EternalArenaConfig.TXN_ERROR_ARRANGEMENT_MALFORMED:
            case EternalArenaConfig.TXN_ERROR_ARRANGEMENT_VERSION:
            case EternalArenaConfig.TXN_ERROR_ARRANGEMENT_CONFIGURATION:
               transitionTo(EternalArenaState_Arena_Unknown,current.data);
               break;
            case EternalArenaConfig.TXN_ERROR_STRUCTURE_OLD:
               transitionTo(EternalArenaState_Error_ClientUpdate,current.data);
            default:
               transitionTo(EternalArenaState_NetworkFailed,current.data);
         }
      }
   }
}
