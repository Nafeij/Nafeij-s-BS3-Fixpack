package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.core.util.Enum;
   import engine.stat.def.StatType;
   
   public class EternalArenaCastModifierWeight
   {
      
      public static const schema:Object = {
         "name":"EternalArenaCastModifierWeight",
         "type":"object",
         "properties":{
            "type":{"type":"string"},
            "weight":{"type":"number"}
         }
      };
       
      
      public var type:StatType;
      
      private var _type:String;
      
      public var weight:int;
      
      public function EternalArenaCastModifierWeight()
      {
         super();
      }
      
      public static function vctor() : Vector.<EternalArenaCastModifierWeight>
      {
         return new Vector.<EternalArenaCastModifierWeight>();
      }
      
      public static function sort(param1:EternalArenaCastModifierWeight, param2:EternalArenaCastModifierWeight) : Number
      {
         var _loc3_:Number = param2.weight - param1.weight;
         if(_loc3_ == 0)
         {
            if(param2.type.value > param1.type.value)
            {
               return -1;
            }
            return 1;
         }
         return _loc3_;
      }
      
      public function clone() : EternalArenaCastModifierWeight
      {
         var _loc1_:EternalArenaCastModifierWeight = new EternalArenaCastModifierWeight();
         _loc1_.type = this.type;
         _loc1_._type = this._type;
         _loc1_.weight = this.weight;
         return _loc1_;
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaCastModifierWeight
      {
         this._type = param1.type;
         this.type = Enum.parse(StatType,this._type) as StatType;
         this.weight = param1.weight;
         return this;
      }
   }
}
