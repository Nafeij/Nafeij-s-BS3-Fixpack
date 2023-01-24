package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.core.util.ArrayUtil;
   import engine.def.EngineJsonDef;
   
   public class EternalArenaItems
   {
      
      public static const schema:Object = {
         "name":"EternalArenaOptionGroups",
         "type":"object",
         "properties":{
            "id":{"type":"string"},
            "items":{
               "type":"array",
               "items":"string"
            }
         }
      };
       
      
      public var id:String;
      
      public var items:Vector.<String>;
      
      public function EternalArenaItems()
      {
         super();
      }
      
      public static function vctor() : Vector.<EternalArenaItems>
      {
         return new Vector.<EternalArenaItems>();
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaItems
      {
         EngineJsonDef.validateThrow(param1,schema,param2);
         this.id = param1.id;
         this.items = ArrayUtil.stringArrayToStringVector(param1.items);
         return this;
      }
   }
}
