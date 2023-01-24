package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.core.util.ArrayUtil;
   import engine.def.EngineJsonDef;
   import engine.saga.SagaBuckets;
   import flash.utils.Dictionary;
   
   public class SagaEternalArenaDef
   {
      
      public static const schema:Object = {
         "name":"SagaEternalArenaDef",
         "type":"object",
         "properties":{
            "version":{"type":"string"},
            "thumbnailsUrl":{"type":"string"},
            "optionGroups":{"type":EternalArenaOptionGroups.schema},
            "rosters":{
               "type":"array",
               "items":EternalArenaRoster.schema
            },
            "tiers":{
               "type":"array",
               "items":EternalArenaTierDef.schema
            },
            "items":{
               "type":"array",
               "items":EternalArenaItems.schema
            },
            "enemies":{
               "type":"array",
               "items":EternalArenaEnemiesDef.schema
            },
            "scorings":{"type":EternalArenaScorings.schema},
            "castMods":{"type":EternalArenaCastModifiers.schema}
         }
      };
       
      
      public var leaderboards:SagaEternalArenaDef_Leaderboards;
      
      public var optionGroups:EternalArenaOptionGroups;
      
      public var boards:EternalArenaBoards;
      
      public var thumbnailsUrl:String;
      
      public var rosters:Vector.<EternalArenaRoster>;
      
      public var rostersById:Dictionary;
      
      public var itemsById:Dictionary;
      
      public var buckets:SagaBuckets;
      
      public var tiers:Vector.<EternalArenaTierDef>;
      
      public var tiersById:Dictionary;
      
      public var items:Vector.<EternalArenaItems>;
      
      public var scorings:EternalArenaScorings;
      
      public var castMods:EternalArenaCastModifiers;
      
      public var enemyGroups:Vector.<EternalArenaEnemiesDef>;
      
      public var enemyGroupsById:Dictionary;
      
      public var contentVersion:String;
      
      public function SagaEternalArenaDef()
      {
         this.rostersById = new Dictionary();
         this.itemsById = new Dictionary();
         this.tiersById = new Dictionary();
         this.enemyGroupsById = new Dictionary();
         super();
      }
      
      public function fromJson(param1:Object, param2:ILogger, param3:EternalArenaBoards, param4:SagaBuckets) : SagaEternalArenaDef
      {
         var _loc5_:EternalArenaOptionGroup = null;
         EngineJsonDef.validateThrow(param1,schema,param2);
         this.buckets = param4;
         this.thumbnailsUrl = param1.thumbnailsUrl;
         this.leaderboards = new SagaEternalArenaDef_Leaderboards(param2).initData();
         this.optionGroups = new EternalArenaOptionGroups().fromJson(param1.optionGroups,param2);
         this.boards = param3;
         if(this.boards)
         {
            _loc5_ = this.boards.generateOptionGroup();
            this.optionGroups.addGroup(_loc5_);
            this.contentVersion = param1.version + "." + this.boards.version;
         }
         else
         {
            param2.debug("SagaEternalArenaDef::fromJson no boards was specified, setting contentVersion for boards to 0");
            this.contentVersion = "0";
         }
         this.rosters = ArrayUtil.arrayToDefVector(param1.rosters,EternalArenaRoster,param2,this.rosters,this.handleRosterAdded) as Vector.<EternalArenaRoster>;
         this.items = ArrayUtil.arrayToDefVector(param1.items,EternalArenaItems,param2,this.items,this.handleItemAdded) as Vector.<EternalArenaItems>;
         this.tiers = ArrayUtil.arrayToDefVector(param1.tiers,EternalArenaTierDef,param2,this.tiers,this.handleTierAdded) as Vector.<EternalArenaTierDef>;
         this.enemyGroups = ArrayUtil.arrayToDefVector(param1.enemies,EternalArenaEnemiesDef,param2,this.enemyGroups,this.handleEnemyGroupAdded) as Vector.<EternalArenaEnemiesDef>;
         this.scorings = new EternalArenaScorings().fromJson(param1.scorings,param2);
         this.castMods = new EternalArenaCastModifiers().fromJson(param1.castMods,param2);
         this._validateTiers(param2);
         return this;
      }
      
      private function _validateTiers(param1:ILogger) : void
      {
         var _loc3_:EternalArenaOption = null;
         var _loc4_:String = null;
         var _loc2_:EternalArenaOptionGroup = this.optionGroups.getGroupById(EternalArenaTierDef.OPTION_GROUP);
         for each(_loc3_ in _loc2_.optionsById[EternalArenaTierDef.OPTION_ID])
         {
            for each(_loc4_ in _loc3_.choices)
            {
               if(!this.tiersById[_loc4_])
               {
                  param1.error("Missing tier definition for [" + _loc4_ + "]");
               }
            }
         }
      }
      
      private function handleTierAdded(param1:EternalArenaTierDef, param2:int) : void
      {
         this.tiersById[param1.id] = param1;
      }
      
      private function handleRosterAdded(param1:EternalArenaRoster, param2:int) : void
      {
         this.rostersById[param1.id] = param1;
      }
      
      private function handleItemAdded(param1:EternalArenaItems, param2:int) : void
      {
         this.itemsById[param1.id] = param1;
      }
      
      private function handleEnemyGroupAdded(param1:EternalArenaEnemiesDef, param2:int) : void
      {
         this.enemyGroupsById[param1.id] = param1;
      }
      
      public function toJson() : Object
      {
         return {};
      }
      
      public function getRosterById(param1:String) : EternalArenaRoster
      {
         return this.rostersById[param1];
      }
      
      public function getItemsById(param1:String) : EternalArenaItems
      {
         return this.itemsById[param1];
      }
      
      public function getTierById(param1:String) : EternalArenaTierDef
      {
         return this.tiersById[param1];
      }
      
      public function getEnemyGroupById(param1:String) : EternalArenaEnemiesDef
      {
         return this.enemyGroupsById[param1];
      }
   }
}
