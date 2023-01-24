package engine.saga.ea
{
   import engine.core.BoxString;
   import engine.core.logging.ILogger;
   import engine.core.util.ArrayUtil;
   import engine.def.EngineJsonDef;
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   
   public class EternalArenaOptionGroup
   {
      
      public static const schema:Object = {
         "name":"EternalArenaOptionGroup",
         "type":"object",
         "properties":{
            "id":{"type":"string"},
            "options":{
               "type":"array",
               "items":EternalArenaOption.schema
            }
         }
      };
       
      
      public var id:String;
      
      public var options:Vector.<EternalArenaOption>;
      
      public var optionIds:Vector.<String>;
      
      public var optionsById:Dictionary;
      
      public function EternalArenaOptionGroup()
      {
         this.optionIds = new Vector.<String>();
         this.optionsById = new Dictionary();
         super();
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaOptionGroup
      {
         EngineJsonDef.validateThrow(param1,schema,param2);
         this.id = param1.id;
         this.options = ArrayUtil.arrayToDefVector(param1.options,EternalArenaOption,param2,this.options,this._onAddOption) as Vector.<EternalArenaOption>;
         return this;
      }
      
      private function _onAddOption(param1:EternalArenaOption, param2:int) : void
      {
         var _loc3_:Vector.<EternalArenaOption> = this.optionsById[param1.id];
         if(!_loc3_)
         {
            _loc3_ = new Vector.<EternalArenaOption>();
            this.optionsById[param1.id] = _loc3_;
            this.optionIds.push(param1.id);
         }
         _loc3_.push(param1);
      }
      
      public function addOption(param1:EternalArenaOption) : void
      {
         if(!this.options)
         {
            this.options = new Vector.<EternalArenaOption>();
         }
         this.options.push(param1);
         this._onAddOption(param1,this.options.length - 1);
      }
      
      public function initArrangementValues(param1:EternalArenaArrangement, param2:Boolean) : void
      {
         var _loc3_:String = null;
         var _loc4_:Vector.<EternalArenaOption> = null;
         var _loc5_:EternalArenaOption = null;
         var _loc6_:String = null;
         for each(_loc3_ in this.optionIds)
         {
            _loc4_ = this.optionsById[_loc3_];
            for each(_loc5_ in _loc4_)
            {
               if(!_loc5_)
               {
                  throw new IllegalOperationError("Null Option found for [" + _loc3_ + "]");
               }
               if(!_loc5_.filter || _loc5_.filter.checkFilter(this.id,param1))
               {
                  _loc6_ = _loc5_.getRandomChoice();
                  param1.setValue(this.id,_loc5_.id,_loc6_);
                  break;
               }
            }
         }
      }
      
      public function hasValidChoice(param1:EternalArenaArrangement, param2:String, param3:String, param4:BoxString) : Boolean
      {
         var _loc6_:EternalArenaOption = null;
         var _loc5_:Vector.<EternalArenaOption> = this.optionsById[param2];
         if(!_loc5_)
         {
            param4.value = "invalid option id [" + param2 + "]";
            return false;
         }
         for each(_loc6_ in _loc5_)
         {
            if(!_loc6_)
            {
               throw new IllegalOperationError("Null Option found for [" + param2 + "]");
            }
            if(!_loc6_.filter || _loc6_.filter.checkFilter(this.id,param1))
            {
               if(!_loc6_.hasChoice(param3))
               {
                  param4.value = "selection option does not have choice [" + param3 + "]";
                  return false;
               }
               return true;
            }
         }
         param4.value = "no options passed filters for option [" + param2 + "]";
         return false;
      }
   }
}
