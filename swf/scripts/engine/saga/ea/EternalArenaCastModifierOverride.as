package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.core.util.ArrayUtil;
   import engine.stat.def.StatType;
   import flash.utils.Dictionary;
   
   public class EternalArenaCastModifierOverride
   {
      
      public static const schema:Object = {
         "name":"EternalArenaCastModifierOverride",
         "type":"object",
         "properties":{
            "id":{"type":"string"},
            "statWeights":{
               "type":"array",
               "items":EternalArenaCastModifierWeight.schema,
               "optional":true
            },
            "talentWeights":{
               "type":"array",
               "items":EternalArenaCastModifierTalentWeight.schema,
               "optional":true
            },
            "items":{
               "type":"array",
               "items":"string",
               "optional":true
            },
            "titles":{
               "type":"array",
               "items":"string",
               "optional":true
            }
         }
      };
       
      
      private var _id:String;
      
      private var _statWeights:Vector.<EternalArenaCastModifierWeight>;
      
      private var _talentWeights:Vector.<EternalArenaCastModifierTalentWeight>;
      
      private var _items:Vector.<String>;
      
      private var _titles:Vector.<String>;
      
      public var overrideStatWeights:Dictionary;
      
      public var overrideTalentWeights:Dictionary;
      
      public function EternalArenaCastModifierOverride()
      {
         super();
         this._items = new Vector.<String>();
         this._titles = new Vector.<String>();
         this.overrideStatWeights = new Dictionary();
         this.overrideTalentWeights = new Dictionary();
      }
      
      public static function vctor() : Vector.<EternalArenaCastModifierOverride>
      {
         return new Vector.<EternalArenaCastModifierOverride>();
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaCastModifierOverride
      {
         this._id = param1.id;
         this._statWeights = ArrayUtil.arrayToDefVector(param1.statWeights,EternalArenaCastModifierWeight,param2,this._statWeights,this.onStatWeightAdded) as Vector.<EternalArenaCastModifierWeight>;
         this._talentWeights = ArrayUtil.arrayToDefVector(param1.talentWeights,EternalArenaCastModifierTalentWeight,param2,this._talentWeights,this.onTalentWeightAdded) as Vector.<EternalArenaCastModifierTalentWeight>;
         this._items = ArrayUtil.stringArrayToStringVector(param1.items);
         this._titles = ArrayUtil.stringArrayToStringVector(param1.titles);
         return this;
      }
      
      public function get items() : Vector.<String>
      {
         return this._items;
      }
      
      public function get titles() : Vector.<String>
      {
         return this._titles;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function onStatWeightAdded(param1:EternalArenaCastModifierWeight, param2:int) : void
      {
         this.overrideStatWeights[param1.type] = param1;
      }
      
      public function hasStatWeight(param1:StatType) : Boolean
      {
         return this.overrideStatWeights[param1] != null;
      }
      
      public function getStatWeight(param1:StatType) : EternalArenaCastModifierWeight
      {
         return this.overrideStatWeights[param1];
      }
      
      public function onTalentWeightAdded(param1:EternalArenaCastModifierTalentWeight, param2:int) : void
      {
         this.overrideTalentWeights[param1.name] = param1;
      }
      
      public function hasTalentWeight(param1:String) : Boolean
      {
         return this.overrideTalentWeights[param1] != null;
      }
      
      public function getTalentWeight(param1:String) : EternalArenaCastModifierTalentWeight
      {
         return this.overrideTalentWeights[param1];
      }
   }
}
