package engine.core.rewards
{
   import engine.core.logging.ILogger;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class RefereumUrlLoader
   {
       
      
      private var _logger:ILogger;
      
      private var _request:URLRequest;
      
      private var _loader:URLLoader;
      
      private var _successCallback:Function;
      
      private var _failedCallback:Function;
      
      public function RefereumUrlLoader(param1:ILogger)
      {
         super();
         this._logger = param1;
      }
      
      public function open(param1:URLRequest, param2:Function, param3:Function) : void
      {
         if(!param1)
         {
            this._logger.debug("RefereumUrlLoader::open - Null request passed into open");
            return;
         }
         this._request = param1;
         this._successCallback = param2;
         this._failedCallback = param3;
         this._loader = new URLLoader(this._request);
         this._loader.addEventListener(Event.COMPLETE,this._onSuccess);
         this._loader.addEventListener(IOErrorEvent.IO_ERROR,this._onFailed);
         this._loader.load(this._request);
      }
      
      private function close() : void
      {
         if(!this._loader)
         {
            this._logger.debug("RefereumUrlLoader::close - Null loader when trying to close");
            return;
         }
         this._successCallback = null;
         this._failedCallback = null;
         this._loader.removeEventListener(Event.COMPLETE,this._onSuccess);
         this._loader.removeEventListener(IOErrorEvent.IO_ERROR,this._onFailed);
         this._loader.close();
         this._loader = null;
      }
      
      private function _onSuccess(param1:Event) : void
      {
         this._logger.info("RefereumConfig::_onSuccess - Request to [" + this._request.url + "] succeeded.");
         if(this._successCallback != null)
         {
            this._successCallback(this._loader.data);
         }
         this.close();
      }
      
      private function _onFailed(param1:IOErrorEvent) : void
      {
         this._logger.info("RefereumUrlLoader::_onFailed - Request to [" + this._request.url + "] failed due to [" + param1 + "].");
         if(this._failedCallback != null)
         {
            this._failedCallback();
         }
         this.close();
      }
   }
}
