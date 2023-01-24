package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.core.util.ArrayUtil;
   import engine.def.EngineJsonDef;
   
   public class EternalArenaEnemiesDef
   {
      
      public static const schema:Object = {
         "name":"EternalArenaEnemeisDef",
         "type":"object",
         "properties":{
            "id":{"type":"string"},
            "baseBucket":{"type":"string"},
            "waveBuckets":{
               "type":"array",
               "items":"string",
               "optional":true
            }
         }
      };
       
      
      public var id:String;
      
      public var bucket:String;
      
      public var waveBuckets:Vector.<String>;
      
      public function EternalArenaEnemiesDef()
      {
         super();
         this.waveBuckets = new Vector.<String>();
      }
      
      public static function vctor() : Vector.<EternalArenaEnemiesDef>
      {
         return new Vector.<EternalArenaEnemiesDef>();
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaEnemiesDef
      {
         EngineJsonDef.validateThrow(param1,schema,param2);
         this.id = param1.id;
         this.bucket = param1.baseBucket;
         if(param1.waveBuckets)
         {
            this.waveBuckets = ArrayUtil.stringArrayToStringVector(param1.waveBuckets);
         }
         return this;
      }
   }
}
