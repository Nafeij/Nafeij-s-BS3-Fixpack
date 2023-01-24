package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.core.util.ArrayUtil;
   import engine.def.EngineJsonDef;
   
   public class EternalArenaRoster
   {
      
      public static const schema:Object = {
         "name":"EternalArenaOptionGroups",
         "type":"object",
         "properties":{
            "id":{"type":"string"},
            "units":{
               "type":"array",
               "items":"string"
            }
         }
      };
       
      
      public var id:String;
      
      public var units:Vector.<String>;
      
      public function EternalArenaRoster()
      {
         super();
      }
      
      public static function vctor() : Vector.<EternalArenaRoster>
      {
         return new Vector.<EternalArenaRoster>();
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaRoster
      {
         EngineJsonDef.validateThrow(param1,schema,param2);
         this.id = param1.id;
         this.units = ArrayUtil.stringArrayToStringVector(param1.units);
         return this;
      }
   }
}
