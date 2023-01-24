package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.def.EngineJsonDef;
   import flash.utils.Dictionary;
   
   public class EternalArenaOptionGroups
   {
      
      public static const schema:Object = {
         "name":"EternalArenaOptionGroups",
         "type":"object",
         "properties":{"groups":{
            "type":"array",
            "items":EternalArenaOptionGroup.schema
         }}
      };
       
      
      public var groupIds:Array;
      
      public var groupsById:Dictionary;
      
      public function EternalArenaOptionGroups()
      {
         this.groupIds = [];
         this.groupsById = new Dictionary();
         super();
      }
      
      public function getGroupById(param1:String) : EternalArenaOptionGroup
      {
         return this.groupsById[param1];
      }
      
      public function addGroup(param1:EternalArenaOptionGroup) : void
      {
         this.groupsById[param1.id] = param1;
         this.groupIds.push(param1.id);
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaOptionGroups
      {
         var _loc3_:Object = null;
         var _loc4_:EternalArenaOptionGroup = null;
         EngineJsonDef.validateThrow(param1,schema,param2);
         for each(_loc3_ in param1.groups)
         {
            _loc4_ = new EternalArenaOptionGroup().fromJson(_loc3_,param2);
            this.addGroup(_loc4_);
         }
         return this;
      }
      
      public function reportOptionChoices(param1:Dictionary, param2:Function) : String
      {
         var _loc4_:String = null;
         var _loc5_:Dictionary = null;
         var _loc6_:EternalArenaOptionGroup = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc3_:* = "";
         for each(_loc4_ in this.groupIds)
         {
            _loc5_ = param1[_loc4_];
            _loc6_ = this.groupsById[_loc4_];
            for each(_loc7_ in _loc6_.optionIds)
            {
               _loc8_ = _loc5_[_loc7_];
               param2(_loc4_,_loc7_,_loc8_);
               if(_loc3_)
               {
                  _loc3_ += "|";
               }
               _loc3_ += _loc8_;
            }
         }
         return _loc3_;
      }
   }
}
