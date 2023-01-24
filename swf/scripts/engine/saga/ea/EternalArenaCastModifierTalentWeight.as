package engine.saga.ea
{
   import engine.core.logging.ILogger;
   
   public class EternalArenaCastModifierTalentWeight
   {
      
      public static const schema:Object = {
         "name":"EternalArenaCastModifierTalentWeight",
         "type":"object",
         "properties":{
            "name":{"type":"string"},
            "weight":{"type":"number"}
         }
      };
       
      
      public var name:String;
      
      public var weight:int;
      
      public function EternalArenaCastModifierTalentWeight()
      {
         super();
      }
      
      public static function vctor() : Vector.<EternalArenaCastModifierTalentWeight>
      {
         return new Vector.<EternalArenaCastModifierTalentWeight>();
      }
      
      public static function sort(param1:EternalArenaCastModifierTalentWeight, param2:EternalArenaCastModifierTalentWeight) : Number
      {
         return param2.weight - param1.weight;
      }
      
      public function clone() : EternalArenaCastModifierTalentWeight
      {
         var _loc1_:EternalArenaCastModifierTalentWeight = new EternalArenaCastModifierTalentWeight();
         _loc1_.name = this.name;
         _loc1_.weight = this.weight;
         return _loc1_;
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaCastModifierTalentWeight
      {
         this.name = param1.name;
         this.weight = param1.weight;
         return this;
      }
   }
}
