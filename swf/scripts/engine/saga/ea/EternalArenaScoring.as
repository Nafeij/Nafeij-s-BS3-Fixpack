package engine.saga.ea
{
   import engine.battle.ability.effect.model.IEffect;
   import engine.battle.ability.model.IBattleAbility;
   import engine.battle.board.model.IBattleEntity;
   import engine.core.logging.ILogger;
   import engine.def.EngineJsonDef;
   import engine.stat.model.Stat;
   import engine.stat.model.Stats;
   import engine.stat.model.StatsVars;
   
   public class EternalArenaScoring
   {
      
      public static const schema:Object = {
         "name":"EternalArenaScoring",
         "type":"object",
         "properties":{
            "id":{"type":"string"},
            "functions":{"type":EternalArenaScoringFunctions.schema},
            "regen_turn":{
               "type":StatsVars.schema,
               "optional":true
            },
            "regen_kill":{
               "type":StatsVars.schema,
               "optional":true
            }
         }
      };
       
      
      public var id:String;
      
      public var functions:EternalArenaScoringFunctions;
      
      public var regen_turn:Stats;
      
      public var regen_kill:Stats;
      
      public var score_function:String = "score";
      
      public var globals:EternalArenaScoringFunctions;
      
      public function EternalArenaScoring(param1:EternalArenaScoringFunctions)
      {
         super();
         this.globals = param1;
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaScoring
      {
         EngineJsonDef.validateThrow(param1,schema,param2);
         this.id = param1.id;
         this.functions = new EternalArenaScoringFunctions().fromJson(param1.functions,param2);
         this.regen_turn = StatsVars.parse(null,param1.regen_turn,param2);
         this.regen_kill = StatsVars.parse(null,param1.regen_kill,param2);
         return this;
      }
      
      public function computeFunctions(param1:EternalArenaScorecard, param2:ILogger) : void
      {
         this.globals.computeFunctions(param1,param2);
         this.functions.computeFunctions(param1,param2);
      }
      
      public function handleTurnStarting(param1:IBattleEntity) : void
      {
         this._doRegen(param1,this.regen_turn);
      }
      
      private function _doRegen(param1:IBattleEntity, param2:Stats) : void
      {
         var _loc4_:Stat = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Stat = null;
         var _loc8_:int = 0;
         if(!param2)
         {
            return;
         }
         var _loc3_:Stats = param1.stats;
         for each(_loc4_ in this.regen_turn._statsByType)
         {
            _loc5_ = _loc3_.getValue(_loc4_.type);
            _loc6_ = _loc5_ + _loc4_.base;
            _loc7_ = _loc3_.getStat(_loc4_.type);
            _loc8_ = !!_loc7_ ? _loc7_.original : int.MAX_VALUE;
            _loc6_ = Math.min(_loc6_,_loc8_);
            _loc3_.setBase(_loc4_.type,_loc6_);
         }
      }
      
      public function handleEffectKill(param1:IEffect) : void
      {
         var _loc2_:IBattleAbility = param1.ability;
         this._doRegen(_loc2_.caster,this.regen_kill);
      }
   }
}
