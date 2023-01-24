package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.core.util.ArrayUtil;
   import engine.stat.def.StatType;
   import flash.utils.Dictionary;
   
   public class EternalArenaCastModifiers
   {
      
      public static const schema:Object = {
         "name":"EternalArenaCastModifiers",
         "type":"object",
         "properties":{
            "defaultStatWeights":{
               "type":"array",
               "items":EternalArenaCastModifierWeight.schema
            },
            "defaultTalentWeights":{
               "type":"array",
               "items":EternalArenaCastModifierTalentWeight.schema
            },
            "defaultItemList":{
               "type":"array",
               "items":"string"
            },
            "defaultTitleList":{
               "type":"array",
               "items":"string"
            },
            "characterOverrides":{
               "type":"array",
               "items":EternalArenaCastModifierOverride.schema
            }
         }
      };
       
      
      private var _defaultStatWeights:Vector.<EternalArenaCastModifierWeight>;
      
      private var _defaultTalentWeights:Vector.<EternalArenaCastModifierTalentWeight>;
      
      public var defaultItemList:Vector.<String>;
      
      public var defaultTitleList:Vector.<String>;
      
      public var defaultStatWeights:Dictionary;
      
      public var defaultTalentWeights:Dictionary;
      
      private var _characterOverrides:Dictionary;
      
      public function EternalArenaCastModifiers()
      {
         super();
         this.defaultItemList = new Vector.<String>();
         this.defaultTitleList = new Vector.<String>();
         this._characterOverrides = new Dictionary();
         this.defaultStatWeights = new Dictionary();
         this.defaultTalentWeights = new Dictionary();
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaCastModifiers
      {
         var _loc5_:EternalArenaCastModifierOverride = null;
         this._defaultStatWeights = ArrayUtil.arrayToDefVector(param1.defaultStatWeights,EternalArenaCastModifierWeight,param2,this._defaultStatWeights,this.onDefaultStatWeight) as Vector.<EternalArenaCastModifierWeight>;
         this._defaultTalentWeights = ArrayUtil.arrayToDefVector(param1.defaultTalentWeights,EternalArenaCastModifierTalentWeight,param2,this._defaultTalentWeights,this.onDefaultTalentWeight) as Vector.<EternalArenaCastModifierTalentWeight>;
         this.defaultItemList = ArrayUtil.stringArrayToStringVector(param1.defaultItemList);
         this.defaultTitleList = ArrayUtil.stringArrayToStringVector(param1.defaultTitleList);
         var _loc3_:Array = param1.characterOverrides as Array;
         if(!_loc3_)
         {
            param2.e("ETAR","INVALID JSON in EternalArenaCastModifiers! : " + param1.toString());
            return this;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc5_ = new EternalArenaCastModifierOverride().fromJson(_loc3_[_loc4_],param2);
            this._characterOverrides[_loc5_.id] = _loc5_;
            _loc4_++;
         }
         return this;
      }
      
      public function hasCharacterOverride(param1:String) : Boolean
      {
         return this._characterOverrides[param1] != null;
      }
      
      public function getCharacterOverride(param1:String) : EternalArenaCastModifierOverride
      {
         return this._characterOverrides[param1];
      }
      
      public function onDefaultTalentWeight(param1:EternalArenaCastModifierTalentWeight, param2:int) : void
      {
         this.defaultTalentWeights[param1.name] = param1;
      }
      
      public function getTalentWeight(param1:String, param2:String) : EternalArenaCastModifierTalentWeight
      {
         var _loc3_:EternalArenaCastModifierOverride = this._characterOverrides[param1];
         if(Boolean(_loc3_) && _loc3_.hasTalentWeight(param2))
         {
            return _loc3_.getTalentWeight(param2);
         }
         return this.defaultTalentWeights[param2];
      }
      
      public function onDefaultStatWeight(param1:EternalArenaCastModifierWeight, param2:int) : void
      {
         this.defaultStatWeights[param1.type] = param1;
      }
      
      public function getStatWeight(param1:String, param2:StatType) : EternalArenaCastModifierWeight
      {
         var _loc3_:EternalArenaCastModifierOverride = this._characterOverrides[param1];
         if(Boolean(_loc3_) && _loc3_.hasStatWeight(param2))
         {
            return _loc3_.getStatWeight(param2);
         }
         return this.defaultStatWeights[param2];
      }
      
      public function getItemList(param1:String) : Vector.<String>
      {
         var _loc2_:EternalArenaCastModifierOverride = this._characterOverrides[param1];
         if(_loc2_ && _loc2_.items && Boolean(_loc2_.items.length))
         {
            return _loc2_.items;
         }
         return this.defaultItemList;
      }
      
      public function getTitleList(param1:String) : Vector.<String>
      {
         var _loc2_:EternalArenaCastModifierOverride = this._characterOverrides[param1];
         if(_loc2_ && _loc2_.titles && Boolean(_loc2_.titles.length))
         {
            return _loc2_.titles;
         }
         return this.defaultTitleList;
      }
   }
}
