package engine.core.rewards
{
   import com.stoicstudio.platform.Platform;
   import engine.core.logging.ILogger;
   import engine.core.util.AppInfo;
   import engine.core.util.StableJson;
   import flash.net.URLRequest;
   
   public class RefereumConfig
   {
      
      private static const schema:Object = {
         "name":"RefereumConfigSchema",
         "type":"object",
         "properties":{
            "gameId":{"type":"String"},
            "sdkId":{"type":"String"},
            "disableAttribution":{
               "type":"boolean",
               "optional":true
            },
            "achievements":{
               "type":"object",
               "skip":true
            }
         }
      };
       
      
      private var _logger:ILogger;
      
      private var _appInfo:AppInfo;
      
      public var initialized:Boolean = false;
      
      public var userId:String = null;
      
      public var acvIdToRefereumId:Object = null;
      
      public var sdkId:String = null;
      
      public var gameId:String = null;
      
      public var disableAttribution:Boolean = false;
      
      public function RefereumConfig()
      {
         super();
         this._reinitializeVariables();
      }
      
      private function _reinitializeVariables() : void
      {
         this._logger = null;
         this._appInfo = null;
         this.initialized = false;
         this.userId = null;
         this.acvIdToRefereumId = null;
         this.disableAttribution = false;
      }
      
      public function initialize(param1:ILogger, param2:String, param3:AppInfo) : void
      {
         this._logger = param1;
         this._appInfo = param3;
         var _loc4_:RefereumUrlLoader = new RefereumUrlLoader(this._logger);
         var _loc5_:* = param2 + param3.master_sku + "/" + Platform.id + ".json";
         this._logger.debug("RefereumConfig::initialize - Attempting to retrieve Refereum Config from [" + _loc5_ + "]");
         var _loc6_:URLRequest = new URLRequest(_loc5_);
         _loc4_.open(_loc6_,this._onInitializeSuccess,this._onInitializeFailed);
      }
      
      public function stop() : void
      {
         this._reinitializeVariables();
      }
      
      private function _onInitializeSuccess(param1:Object) : void
      {
         this.initialized = this._parseJson(param1);
         if(!this.initialized)
         {
            this._logger.error("RefereumConfig::_onInitializeSuccess - Failed to parse the json from the refereum config. Disabling.");
            this._reinitializeVariables();
         }
      }
      
      private function _onInitializeFailed() : void
      {
         this._logger.debug("RefereumConfig::_onInitializedFailed - No refereum config found. Disabling");
         this.initialized = false;
      }
      
      private function _parseJson(param1:*) : Boolean
      {
         if(!param1)
         {
            this._logger.debug("RefereumUrlLoader::jsonData - There was no data in the loader when attempting to parse the json");
            return false;
         }
         var _loc2_:Object = StableJson.parse(param1);
         if(!_loc2_)
         {
            this._logger.debug("RefereumUrlLoader::jsonData - Invalid json data was stored in the loader when attempting to parse");
            return false;
         }
         if(!_loc2_.achievements || !_loc2_.sdkId || !_loc2_.gameId)
         {
            this._logger.error("RefereumConfig::parseJson - Received a json blob, but it was malformed.");
            return false;
         }
         this.acvIdToRefereumId = _loc2_.achievements;
         this.sdkId = RefereumCrypt.DecryptAES(_loc2_.sdkId);
         this.gameId = RefereumCrypt.DecryptAES(_loc2_.gameId);
         if(_loc2_.disableAttribution)
         {
            this.disableAttribution = _loc2_.disableAttribution;
         }
         return true;
      }
   }
}
