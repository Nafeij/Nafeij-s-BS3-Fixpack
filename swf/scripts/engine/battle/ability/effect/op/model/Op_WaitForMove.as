package engine.battle.ability.effect.op.model
{
   import engine.battle.ability.def.BattleAbilityDef;
   import engine.battle.ability.effect.model.Effect;
   import engine.battle.ability.effect.model.EffectResult;
   import engine.battle.ability.effect.op.def.EffectDefOp;
   import engine.battle.ability.model.BattleAbility;
   import engine.battle.entity.model.BattleEntityEvent;
   import engine.battle.fsm.IBattleStateUserDeploying;
   
   public class Op_WaitForMove extends Op
   {
      
      public static const schema:Object = {
         "name":"Op_WaitForMove",
         "properties":{
            "ability":{"type":"string"},
            "suppressInRedeploy":{
               "type":"boolean",
               "optional":true
            }
         }
      };
       
      
      private var abilityResponseDef:BattleAbilityDef;
      
      private var _suppressInRedeploy:Boolean;
      
      public function Op_WaitForMove(param1:EffectDefOp, param2:Effect)
      {
         super(param1,param2);
         var _loc3_:String = String(param1.params.ability);
         this.abilityResponseDef = manager.factory.fetchBattleAbilityDef(_loc3_);
         if(!this.abilityResponseDef)
         {
            manager.logger.error("Op_WaitForMove " + this + " invalid ability [" + _loc3_ + "]");
         }
         this._suppressInRedeploy = param1.params.suppressInRedeploy;
      }
      
      override public function execute() : EffectResult
      {
         return EffectResult.OK;
      }
      
      override public function apply() : void
      {
         target.addEventListener(BattleEntityEvent.TILE_CHANGED,this.tileChangedHandler);
      }
      
      override public function remove() : void
      {
         target.removeEventListener(BattleEntityEvent.TILE_CHANGED,this.tileChangedHandler);
      }
      
      private function tileChangedHandler(param1:BattleEntityEvent) : void
      {
         var _loc2_:BattleAbility = null;
         if(this._suppressInRedeploy)
         {
            if(board && board.fsm && board.fsm.current is IBattleStateUserDeploying)
            {
               logger.i("ABL",ability._def.name + " : " + effect.def.name + " : " + def.name + " : Suppressing Op_WaitForMove due to suppressInRedeploy == true");
               return;
            }
         }
         if(this.abilityResponseDef)
         {
            _loc2_ = new BattleAbility(caster,this.abilityResponseDef,manager);
            _loc2_.targetSet.setTarget(target);
            effect.ability.addChildAbility(_loc2_);
         }
      }
   }
}
