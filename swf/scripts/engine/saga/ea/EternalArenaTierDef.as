package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.def.EngineJsonDef;
   
   public class EternalArenaTierDef
   {
      
      public static const OPTION_GROUP:String = EternalArenaOptionGroupTypes.COMBATANTS;
      
      public static const OPTION_ID:String = "tier";
      
      public static const schema:Object = {
         "name":"SagaEternalArenaTierDef",
         "type":"object",
         "properties":{
            "id":{"type":"string"},
            "player_minrank":{"type":"number"},
            "player_maxrank":{"type":"number"},
            "danger":{"type":"number"}
         }
      };
       
      
      public var id:String;
      
      public var player_minrank:int;
      
      public var player_maxrank:int;
      
      public var danger:int;
      
      public function EternalArenaTierDef()
      {
         super();
      }
      
      public static function vctor() : Vector.<EternalArenaTierDef>
      {
         return new Vector.<EternalArenaTierDef>();
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaTierDef
      {
         EngineJsonDef.validateThrow(param1,schema,param2);
         this.id = param1.id;
         this.player_minrank = param1.player_minrank;
         this.player_maxrank = param1.player_maxrank;
         this.danger = param1.danger;
         return this;
      }
   }
}
