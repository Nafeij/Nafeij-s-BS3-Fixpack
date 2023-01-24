package game.cfg
{
   import engine.core.logging.ILogger;
   import engine.core.util.AppInfo;
   import engine.core.util.EngineCoreContext;
   import engine.core.util.StableJson;
   import engine.core.util.StringUtil;
   import engine.saga.Saga;
   import engine.saga.ea.EternalArenaConfig;
   import flash.utils.ByteArray;
   
   public class EaSaver
   {
       
      
      public var config:GameConfig;
      
      public var logger:ILogger;
      
      public function EaSaver(param1:GameConfig)
      {
         super();
         this.config = param1;
         this.logger = param1.logger;
      }
      
      public function performSave(param1:String, param2:Object, param3:Boolean, param4:Boolean) : Boolean
      {
         var _loc5_:Saga = this.config.saga;
         if(!_loc5_)
         {
            this.logger.error("ETAR","Attempt to save arrangement with no Saga?!");
            return false;
         }
         var _loc6_:EngineCoreContext = this.config.context;
         var _loc7_:AppInfo = _loc6_.appInfo;
         if(!StringUtil.endsWith(param1,".json"))
         {
            param1 += ".json";
         }
         var _loc8_:String = _loc5_.sagaDefId;
         var _loc9_:String = EternalArenaConfig.ARRANGEMENT_FOLDER + "/" + _loc8_ + "/" + param1;
         if(!param3 && _loc7_.checkFileExists(null,_loc9_))
         {
            return false;
         }
         var _loc10_:String = StableJson.stringifyObject(param2,"  ");
         var _loc11_:ByteArray = new ByteArray();
         _loc11_.writeUTFBytes(_loc10_);
         _loc7_.saveFile(null,_loc9_,_loc11_,true);
         this.logger.info("ETAR","Saved Arrangement: [" + param1 + "]");
         if(!param4)
         {
            _loc5_.eaSaveArrangement();
         }
         return true;
      }
   }
}
