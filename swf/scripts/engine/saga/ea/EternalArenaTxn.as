package engine.saga.ea
{
   import engine.core.http.HttpJsonAction;
   import engine.core.http.HttpRequestMethod;
   import engine.core.logging.ILogger;
   import engine.def.EngineJsonDef;
   
   public class EternalArenaTxn extends HttpJsonAction
   {
       
      
      public var version:int;
      
      private var _expectedStructuralVersion:int;
      
      public function EternalArenaTxn(param1:String, param2:HttpRequestMethod, param3:Object, param4:Function, param5:ILogger, param6:int)
      {
         super(param1,param2,param3,param4,param5);
         this._expectedStructuralVersion = param6;
      }
      
      protected function validateJsonObject(param1:Object) : Boolean
      {
         var schema:Object = param1;
         if(!jsonObject)
         {
            return false;
         }
         try
         {
            EngineJsonDef.validateThrowRuntime(jsonObject,schema,logger);
         }
         catch(e:Error)
         {
            logger.e("EATR","EternalArenaTxn - Error received - " + e);
         }
         if(jsonObject.version)
         {
            this.version = jsonObject.version;
            if(this.version != this._expectedStructuralVersion)
            {
               logger.d("EATR","EternalArenaTxn - Invalid version [" + this.version + "] expected version [" + this._expectedStructuralVersion + "]");
               return false;
            }
            return true;
         }
         logger.e("EATR","EternalArenaTxn - No Version number, therefore we are entering the version error state. Expected version number [" + this._expectedStructuralVersion + "]");
         return false;
      }
   }
}
