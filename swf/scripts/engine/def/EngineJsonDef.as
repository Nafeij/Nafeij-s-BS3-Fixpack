package engine.def
{
   import engine.core.BoxString;
   import engine.core.logging.ILogger;
   import engine.core.util.StableJson;
   import engine.core.util.StringUtil;
   
   public class EngineJsonDef
   {
      
      public static var _validate:Function;
      
      public static var _validateRuntime:Function;
      
      private static var em:BoxString = new BoxString();
       
      
      public function EngineJsonDef()
      {
         super();
      }
      
      private static function _validateThrow(param1:Object, param2:Object, param3:ILogger, param4:Function) : void
      {
         var _loc6_:String = null;
         if(param4 == null)
         {
            return;
         }
         em.value = null;
         var _loc5_:Object = param4(param1,param2,param3,em);
         if(!_loc5_ || !_loc5_.isValid())
         {
            _loc6_ = StableJson.stringify(param1,null," ");
            _loc6_ = StringUtil.truncateLines(_loc6_,10,500);
            throw new ArgumentError("failed to parse " + param2.name + "\n" + em + "\n" + _loc6_);
         }
      }
      
      public static function validateThrow(param1:Object, param2:Object, param3:ILogger) : void
      {
         if(null != _validate)
         {
            _validateThrow(param1,param2,param3,_validate);
         }
      }
      
      public static function validateThrowRuntime(param1:Object, param2:Object, param3:ILogger) : void
      {
         if(null != _validateRuntime)
         {
            _validateThrow(param1,param2,param3,_validateRuntime);
         }
      }
   }
}
