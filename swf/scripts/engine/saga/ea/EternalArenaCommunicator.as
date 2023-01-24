package engine.saga.ea
{
   import engine.core.BoxString;
   import engine.core.http.HttpCommunicator;
   import engine.core.http.HttpJsonAction;
   import engine.core.http.HttpRequestMethod;
   import engine.core.logging.ILogger;
   
   public class EternalArenaCommunicator extends HttpCommunicator
   {
      
      private static const STRUCTURAL_VERSION:int = 1;
      
      private static var DEFAULT_CLIENT_UPDATE_RATE_MS:int = 1000;
      
      private static var MIN_CLIENT_UPDATE_RATE_MS:int = 1000;
      
      private static var CLIENT_UPDATE_THROTTLE_RESTORE_RATE:Number = 1.125;
       
      
      private var _configHash:String;
      
      private var _arrangementHash:String;
      
      private var _arrangementDefUrl:String;
      
      private var _clientUpdateRateMs:int;
      
      private var _previousMaxClientUpdateRateMs:int;
      
      private var _optionGroups:EternalArenaOptionGroups;
      
      private var _contentVersion:String;
      
      private var _txnUpdateCallback:Function;
      
      private var _txnUpdateTimeCallback:Function;
      
      private var _errorCallback:Function;
      
      private var _cleanedUp:Boolean = false;
      
      public function EternalArenaCommunicator(param1:EternalArenaOptionGroups, param2:String, param3:ILogger, param4:String, param5:Function, param6:Function, param7:Function)
      {
         this._clientUpdateRateMs = DEFAULT_CLIENT_UPDATE_RATE_MS;
         this._previousMaxClientUpdateRateMs = DEFAULT_CLIENT_UPDATE_RATE_MS;
         super(param3,param4,null,null);
         this._optionGroups = param1;
         this._contentVersion = param2;
         this._txnUpdateCallback = param5;
         this._txnUpdateTimeCallback = param6;
         this._errorCallback = param7;
         this.RequestGetStatus(true);
      }
      
      public function cleanup() : void
      {
         this._configHash = null;
         this._arrangementHash = null;
         this._arrangementDefUrl = null;
         this._clientUpdateRateMs = DEFAULT_CLIENT_UPDATE_RATE_MS;
         this._previousMaxClientUpdateRateMs = DEFAULT_CLIENT_UPDATE_RATE_MS;
         this._txnUpdateCallback = null;
         this._txnUpdateTimeCallback = null;
         this._errorCallback = null;
         this._optionGroups = null;
         this._contentVersion = null;
         this._cleanedUp = true;
      }
      
      public function RequestGetStatus(param1:Boolean = false) : void
      {
         if(!hostUrl || this._cleanedUp)
         {
            return;
         }
         var _loc2_:HttpJsonAction = new EternalArenaGetStatusTxn(HttpRequestMethod.GET,this.RequestGetStatusCallback,logger,STRUCTURAL_VERSION);
         _loc2_.send(this,null,param1 ? 0 : this._clientUpdateRateMs);
      }
      
      public function RequestGetArenaArrangement(param1:Boolean = false) : void
      {
         if(!this._arrangementDefUrl || this._cleanedUp)
         {
            return;
         }
         var _loc2_:HttpJsonAction = new EternalArenaGetArenaArrangementTxn(this._arrangementDefUrl,HttpRequestMethod.GET,this.RequestGetArenaArrangementCallback,logger,STRUCTURAL_VERSION);
         _loc2_.send(this,null,param1 ? 0 : this._clientUpdateRateMs,true);
      }
      
      private function RequestGetArenaArrangementCallback(param1:EternalArenaGetArenaArrangementTxn) : void
      {
         if(this._cleanedUp)
         {
            return;
         }
         if(!this.CheckValidArrangementTransaction(param1))
         {
            return;
         }
         if(this._txnUpdateCallback != null)
         {
            this._txnUpdateCallback(param1);
         }
         this.RequestGetStatus();
      }
      
      private function _updateClientUpdateRate(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1;
         var _loc4_:Date = new Date();
         var _loc5_:Number = param2 - _loc4_.valueOf();
         if(_loc5_ < _loc3_)
         {
            logger.debug("updateClientUpdateRate::Throttling client update rate to " + _loc5_);
            _loc3_ = _loc5_;
         }
         this._clientUpdateRateMs = Math.max(MIN_CLIENT_UPDATE_RATE_MS,_loc3_);
      }
      
      private function RequestGetStatusCallback(param1:EternalArenaGetStatusTxn) : void
      {
         if(this._cleanedUp)
         {
            return;
         }
         if(!this.CheckValidTransaction(param1))
         {
            return;
         }
         if(this._txnUpdateTimeCallback != null)
         {
            this._txnUpdateTimeCallback(param1);
         }
         if(Boolean(param1.configHash) && param1.configHash != this._configHash)
         {
            logger.info("HandleConfigFromGetStatus::Updating based on new config hash. old [" + this._configHash + "] new [" + param1.configHash + "]");
            this._configHash = param1.configHash;
            this._updateClientUpdateRate(param1.updateRateMS,param1.nextStatusUpdate);
            this._previousMaxClientUpdateRateMs = param1.updateRateMS;
            this._arrangementDefUrl = param1.arenaArrangementDefUrl;
            if(this._txnUpdateCallback != null)
            {
               this._txnUpdateCallback(param1);
            }
            if(param1.challengeStatus == "active")
            {
               if(param1.arenaArrangementHash)
               {
                  logger.info("HandleConfigFromGetStatus::Arrangement hash is outdated. Updating arrangement. old [" + this._arrangementHash + "] new [" + param1.arenaArrangementHash + "]");
                  this._arrangementHash = param1.arenaArrangementHash;
                  this.RequestGetArenaArrangement(true);
                  return;
               }
            }
         }
         else
         {
            if(EternalArenaConfig.DEBUG)
            {
               logger.debug("HandleConfigFromGetStatus::No update needed");
            }
            if(this._clientUpdateRateMs < this._previousMaxClientUpdateRateMs)
            {
               this._clientUpdateRateMs = Math.min(Math.floor(this._clientUpdateRateMs * CLIENT_UPDATE_THROTTLE_RESTORE_RATE),this._previousMaxClientUpdateRateMs);
               if(EternalArenaConfig.DEBUG)
               {
                  logger.debug("HandleConfigFromGetStatus::Unthrottling our client update rate to " + this._clientUpdateRateMs);
               }
            }
         }
         this.RequestGetStatus();
      }
      
      private function CheckValidTransaction(param1:EternalArenaTxn) : Boolean
      {
         if(!param1)
         {
            logger.d("ETAR","CheckValidTransaction::Received a null transaction");
            this.HandleErrorTransaction();
            return false;
         }
         if(param1.isMaintenance)
         {
            logger.d("ETAR","CheckValidTransaction::Transaction server is in maintenance");
            this.HandleErrorMaintenance();
            return false;
         }
         if(!param1.jsonObject)
         {
            logger.d("ETAR","CheckValidTransaction::Received a null json object");
            this.HandleErrorJson();
            return false;
         }
         if(param1.version != STRUCTURAL_VERSION)
         {
            this.HandleErrorInvalidStructuralVersion(param1.version);
            return false;
         }
         return true;
      }
      
      private function CheckValidArrangementTransaction(param1:EternalArenaGetArenaArrangementTxn) : Boolean
      {
         if(!this.CheckValidTransaction(param1))
         {
            return false;
         }
         if(!param1.arrangement)
         {
            logger.e("ETAR","CheckValidArrangementTransaction null arrangement");
            this.HandleErrorInvalidArrangement();
            return false;
         }
         if(param1.arrangement.hash != this._arrangementHash)
         {
            logger.e("ETAR","CheckValidArrangementTransaction invalid arrangement hash: " + param1.arrangement.hash);
            this.HandleErrorInvalidArrangementHash();
            return false;
         }
         var _loc2_:BoxString = new BoxString();
         if(!param1.arrangement.isValid(this._optionGroups,_loc2_))
         {
            if(!param1.arrangement.isValidContentVersion(this._contentVersion))
            {
               logger.e("ETAR","CheckValidArrangementTransaction invalid content versions passed in. Expected [" + this._contentVersion + "] and received [" + param1.arrangement.version + "]");
               this.HandleErrorInvalidArrangementVersion();
               return false;
            }
            logger.e("ETAR","CheckValidArrangementTransaction arrangement configuration isn\'t valid : " + _loc2_);
            this.HandleErrorInvalidArrangementConfiguration();
            return false;
         }
         return true;
      }
      
      private function CheckValidStatusTransaction(param1:EternalArenaGetStatusTxn) : Boolean
      {
         if(!this.CheckValidTransaction(param1))
         {
            return false;
         }
         return true;
      }
      
      private function HandleError(param1:String) : void
      {
         if(this._errorCallback != null && param1 != "")
         {
            this._errorCallback(param1);
         }
         this._clientUpdateRateMs = DEFAULT_CLIENT_UPDATE_RATE_MS;
         this._configHash = null;
         this._arrangementHash = null;
         this._arrangementDefUrl = null;
         this.RequestGetStatus();
      }
      
      private function HandleErrorTransaction() : void
      {
         this.HandleError(EternalArenaConfig.TXN_ERROR_TRANSACTION);
      }
      
      private function HandleErrorJson() : void
      {
         this.HandleError(EternalArenaConfig.TXN_ERROR_JSON_MALFORMED);
      }
      
      private function HandleErrorMaintenance() : void
      {
         this.HandleError("");
      }
      
      private function HandleErrorInvalidArrangementHash() : void
      {
         this.HandleError(EternalArenaConfig.TXN_ERROR_ARRANGEMENT_HASH);
      }
      
      private function HandleErrorInvalidArrangementVersion() : void
      {
         this.HandleError(EternalArenaConfig.TXN_ERROR_ARRANGEMENT_VERSION);
      }
      
      private function HandleErrorInvalidArrangement() : void
      {
         this.HandleError(EternalArenaConfig.TXN_ERROR_ARRANGEMENT_MALFORMED);
      }
      
      private function HandleErrorInvalidArrangementConfiguration() : void
      {
         this.HandleError(EternalArenaConfig.TXN_ERROR_ARRANGEMENT_CONFIGURATION);
      }
      
      private function HandleErrorInvalidStructuralVersion(param1:int) : void
      {
         if(param1 > STRUCTURAL_VERSION)
         {
            this.HandleError(EternalArenaConfig.TXN_ERROR_STRUCTURE_OLD);
         }
         else
         {
            param1 < STRUCTURAL_VERSION;
         }
         this.HandleError(EternalArenaConfig.TXN_ERROR_STRUCTURE_NEW);
      }
   }
}
