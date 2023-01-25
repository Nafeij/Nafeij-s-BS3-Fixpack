package engine.saga.ea
{
   import engine.core.BoxString;
   import engine.core.locale.Locale;
   import engine.core.locale.LocaleCategory;
   import engine.core.util.StringUtil;
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   
   public class EternalArenaArrangement
   {
      
      public static const TYPE_NAME:String = "name";
      
      public static const KEY_ORDINAL:String = "ordinal";
      
      public static const KEY_VERSION:String = "version";
       
      
      public var ordinal:int;
      
      public var names:Dictionary;
      
      public var valuesByType:Dictionary;
      
      public var filename:String;
      
      public var hash:String;
      
      public var version:String;
      
      public function EternalArenaArrangement()
      {
         this.valuesByType = new Dictionary();
         super();
      }
      
      public static function getLocalizedChallengeOrdinal(param1:int, param2:Locale) : String
      {
         var _loc3_:String = null;
         if(param1)
         {
            _loc3_ = param2.translate(LocaleCategory.EA,"challenge_num");
            return _loc3_.replace("{challenge_num}",StringUtil.formatCommaInteger(param1));
         }
         return "";
      }
      
      public function equals(param1:EternalArenaArrangement) : Boolean
      {
         if(this.hash != param1.hash || this.ordinal != param1.ordinal)
         {
            return false;
         }
         var _loc2_:String = this.generateComparisonString();
         var _loc3_:String = param1.generateComparisonString();
         return _loc2_ == _loc3_;
      }
      
      private function generateComparisonString() : String
      {
         var _loc2_:String = null;
         var _loc3_:Dictionary = null;
         var _loc4_:String = null;
         var _loc1_:String = "";
         for(_loc2_ in this.valuesByType)
         {
            _loc1_ += _loc2_;
            _loc3_ = this.valuesByType[_loc2_];
            for(_loc4_ in _loc3_)
            {
               _loc1_ += _loc4_;
               _loc1_ += _loc3_[_loc4_];
            }
         }
         return _loc1_;
      }
      
      public function fromJson(param1:Object) : EternalArenaArrangement
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            if(_loc2_ == KEY_ORDINAL)
            {
               this.ordinal = _loc3_ as int;
            }
            if(_loc2_ == KEY_VERSION)
            {
               this.version = _loc3_ as String;
            }
            for(_loc4_ in _loc3_)
            {
               this.setValue(_loc2_,_loc4_,_loc3_[_loc4_]);
            }
         }
         return this;
      }
      
      public function getLocalizedName(param1:Locale) : String
      {
         var _loc2_:* = getLocalizedChallengeOrdinal(this.ordinal,param1);
         if(_loc2_)
         {
            _loc2_ += ": ";
         }
         var _loc3_:String = this._getLocalizedSubname(param1);
         return _loc2_ + _loc3_;
      }
      
      public function getLocalizedDescription(param1:Locale) : String
      {
         var _loc2_:String = this.getValue(EternalArenaBoards.OPTION_GROUP_TYPE,EternalArenaBoards.KEY_SCENE);
         return param1.translate(LocaleCategory.EA_OPT,"scene_" + _loc2_ + "_d");
      }
      
      public function _getLocalizedSubname(param1:Locale) : String
      {
         var _loc2_:String = param1.id.id;
         var _loc3_:* = this.getValue(TYPE_NAME,_loc2_);
         if(!_loc3_ && _loc2_ != Locale.en_id)
         {
            _loc3_ = this.getValue(TYPE_NAME,Locale.en_id);
         }
         if(_loc3_)
         {
            if(StringUtil.startsWith(_loc3_,"$"))
            {
               _loc3_ = param1.translateEncodedToken(_loc3_,false);
            }
         }
         _loc3_ = !!_loc3_ ? _loc3_ : "";
         var _loc4_:String = this._getLocalizedScenename(param1);
         if(Boolean(_loc3_) && Boolean(_loc4_))
         {
            _loc3_ += ": ";
         }
         _loc3_ += _loc4_;
         return !!_loc3_ ? _loc3_ : "¿unknown?";
      }
      
      public function setName(param1:String) : void
      {
         if(this.ordinal)
         {
            throw new IllegalOperationError("attempt to set name of challenge arrangement");
         }
         delete this.valuesByType[TYPE_NAME];
         this.setValue(TYPE_NAME,Locale.en_id,param1);
      }
      
      public function _getLocalizedScenename(param1:Locale) : String
      {
         var _loc2_:String = this.getValue(EternalArenaBoards.OPTION_GROUP_TYPE,EternalArenaBoards.KEY_SCENE);
         return param1.translate(LocaleCategory.EA_OPT,"scene_" + _loc2_);
      }
      
      public function toJson() : Object
      {
         var _loc2_:String = null;
         var _loc3_:Dictionary = null;
         var _loc4_:String = null;
         var _loc1_:Object = {};
         for(_loc2_ in this.valuesByType)
         {
            _loc1_[_loc2_] = {};
            _loc3_ = this.valuesByType[_loc2_];
            for(_loc4_ in _loc3_)
            {
               _loc1_[_loc2_][_loc4_] = _loc3_[_loc4_];
            }
         }
         return _loc1_;
      }
      
      public function generateFilename() : String
      {
         return this.getValue(EternalArenaOptionGroupTypes.BOARD,EternalArenaBoards.KEY_SCENE);
      }
      
      public function hasValue(param1:String, param2:String) : Boolean
      {
         var _loc3_:Dictionary = this.getValuesForType(param1);
         return _loc3_[param2] != null;
      }
      
      public function getValue(param1:String, param2:String) : String
      {
         return this.getValuesForType(param1)[param2];
      }
      
      public function setValue(param1:String, param2:String, param3:String) : void
      {
         this.getValuesForType(param1)[param2] = param3;
      }
      
      public function removeValue(param1:String, param2:String) : void
      {
         delete this.getValuesForType(param1)[param2];
      }
      
      public function getValuesForType(param1:String) : Dictionary
      {
         var _loc2_:Dictionary = this.valuesByType[param1];
         if(!_loc2_)
         {
            _loc2_ = new Dictionary();
            this.valuesByType[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public function isValid(param1:EternalArenaOptionGroups, param2:BoxString) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:Dictionary = null;
         var _loc5_:EternalArenaOptionGroup = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         if(!param1)
         {
            param2.value = "Null EternalArenaOptionGroups";
            return false;
         }
         for(_loc3_ in this.valuesByType)
         {
            _loc4_ = this.valuesByType[_loc3_];
            _loc5_ = param1.getGroupById(_loc3_);
            if(!_loc5_)
            {
               param2.value = "Invalid option group [" + _loc3_ + "]";
               return false;
            }
            for(_loc6_ in _loc4_)
            {
               _loc7_ = String(_loc4_[_loc6_]);
               if(!_loc5_.hasValidChoice(this,_loc6_,_loc7_,param2))
               {
                  param2.value = "Arrangement choice " + _loc3_ + "." + _loc6_ + "=" + _loc7_ + " is invalid: " + param2.value;
                  return false;
               }
            }
         }
         if(!this._requireArrangementKey(EternalArenaOptionGroupTypes.BOARD,EternalArenaBoards.KEY_BOARD,param2) || !this._requireArrangementKey(EternalArenaOptionGroupTypes.BOARD,EternalArenaBoards.KEY_SCENE,param2))
         {
            return false;
         }
         if(!this._requireArrangementTypeKey(EternalArenaOptionGroupTypes.RULES,param2) || !this._requireArrangementTypeKey(EternalArenaOptionGroupTypes.COMBATANTS,param2))
         {
            return false;
         }
         if(this.ordinal <= 0)
         {
            param2.value = "Arrangement has no ordinal";
            return false;
         }
         return true;
      }
      
      public function isValidContentVersion(param1:String) : Boolean
      {
         var _loc2_:Array = param1.split(".");
         var _loc3_:Array = this.version.split(".");
         if(_loc2_.length != 2 || _loc3_.length != 2)
         {
            return false;
         }
         var _loc4_:int = int(_loc2_[0]);
         var _loc5_:int = int(_loc3_[0]);
         var _loc6_:int = int(_loc2_[1]);
         var _loc7_:int = int(_loc3_[1]);
         if(_loc4_ != _loc5_ || _loc6_ != _loc7_)
         {
            return false;
         }
         return true;
      }
      
      private function _requireArrangementKey(param1:String, param2:String, param3:BoxString) : Boolean
      {
         if(!this.getValue(param1,param2))
         {
            param3.value = "Arrangement is missing required key " + param1 + "." + param2;
            return false;
         }
         return true;
      }
      
      private function _requireArrangementTypeKey(param1:String, param2:BoxString) : Boolean
      {
         if(!this.valuesByType[param1])
         {
            param2.value = "Arrangement is missing required option group " + param1;
            return false;
         }
         return true;
      }
      
      public function get tierId() : String
      {
         return this.getValue(EternalArenaOptionGroupTypes.COMBATANTS,"tier");
      }
   }
}
