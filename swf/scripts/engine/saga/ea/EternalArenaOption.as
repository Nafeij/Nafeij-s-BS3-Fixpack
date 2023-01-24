package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.core.util.ArrayUtil;
   import engine.def.EngineJsonDef;
   import engine.math.MathUtil;
   
   public class EternalArenaOption
   {
      
      public static const schema:Object = {
         "name":"EternalArenaOption",
         "type":"object",
         "properties":{
            "id":{"type":"string"},
            "filter":{
               "type":"object",
               "skip":true,
               "optional":true
            },
            "choices":{
               "type":"array",
               "items":"string"
            },
            "hasOverlay":{
               "type":"boolean",
               "optional":true
            }
         }
      };
       
      
      public var idIndex:int;
      
      public var id:String;
      
      public var choices:Vector.<String>;
      
      public var filter:EternalArenaOptionFilter;
      
      public function EternalArenaOption()
      {
         super();
      }
      
      public static function vctor() : Vector.<EternalArenaOption>
      {
         return new Vector.<EternalArenaOption>();
      }
      
      public static function ctor(param1:String, param2:Vector.<String>, param3:EternalArenaOptionFilter) : EternalArenaOption
      {
         var _loc4_:EternalArenaOption = new EternalArenaOption();
         _loc4_.id = param1;
         _loc4_.choices = param2;
         _loc4_.filter = param3;
         return _loc4_;
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaOption
      {
         EngineJsonDef.validateThrow(param1,schema,param2);
         this.id = param1.id;
         this.choices = ArrayUtil.stringArrayToStringVector(param1.choices);
         if(param1.filter)
         {
            this.filter = new EternalArenaOptionFilter().fromJson(param1.filter,param2);
         }
         return this;
      }
      
      public function getRandomChoice() : String
      {
         return this.choices[MathUtil.randomInt(0,this.choices.length - 1)];
      }
      
      public function hasChoice(param1:String) : Boolean
      {
         return Boolean(this.choices) && this.choices.indexOf(param1) >= 0;
      }
   }
}
