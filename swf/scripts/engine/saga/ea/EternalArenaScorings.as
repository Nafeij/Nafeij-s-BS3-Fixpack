package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.def.EngineJsonDef;
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   
   public class EternalArenaScorings
   {
      
      public static const schema:Object = {
         "name":"EternalArenaScorings",
         "type":"object",
         "properties":{
            "globals":{"type":EternalArenaScoringFunctions.schema},
            "entries":{
               "type":"array",
               "items":EternalArenaScoring.schema
            }
         }
      };
       
      
      public var globals:EternalArenaScoringFunctions;
      
      public var entries:Dictionary;
      
      public function EternalArenaScorings()
      {
         this.entries = new Dictionary();
         super();
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaScorings
      {
         var _loc3_:Object = null;
         var _loc4_:EternalArenaScoring = null;
         EngineJsonDef.validateThrow(param1,schema,param2);
         this.globals = new EternalArenaScoringFunctions().fromJson(param1.globals,param2);
         for each(_loc3_ in param1.entries)
         {
            _loc4_ = new EternalArenaScoring(this.globals).fromJson(_loc3_,param2);
            if(this.entries[_loc4_.id])
            {
               throw new IllegalOperationError("duplicate scoring [" + _loc4_.id + "]");
            }
            this.entries[_loc4_.id] = _loc4_;
         }
         return this;
      }
      
      public function getScoring(param1:String) : EternalArenaScoring
      {
         return this.entries[param1];
      }
   }
}
