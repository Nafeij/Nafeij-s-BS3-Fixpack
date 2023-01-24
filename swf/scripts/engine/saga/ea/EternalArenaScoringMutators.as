package engine.saga.ea
{
   import engine.battle.ability.effect.model.IEffect;
   import engine.battle.ability.model.IBattleAbility;
   import engine.battle.board.BattleBoardEvent;
   import engine.battle.board.model.IBattleBoard;
   import engine.battle.board.model.IBattleEntity;
   import engine.core.logging.ILogger;
   import engine.saga.ISaga;
   
   public class EternalArenaScoringMutators
   {
       
      
      private var _saga:ISaga;
      
      private var _arrangement:EternalArenaArrangement;
      
      private var _board:IBattleBoard;
      
      private var addEventListeners:Function;
      
      private var removeEventListeners:Function;
      
      private var _listenersAdded:Boolean = false;
      
      private var _lastMovedEntity:IBattleEntity;
      
      private var _remainderStrMove:int;
      
      private var _remainderWilMove:int;
      
      public function EternalArenaScoringMutators(param1:ISaga, param2:EternalArenaArrangement, param3:ILogger)
      {
         super();
         this._saga = param1;
         this._arrangement = param2;
         switch(this._arrangement.getValue(EternalArenaOptionGroupTypes.RULES,"scoring"))
         {
            case "battle_of_strength":
               this.addEventListeners = this.addBosEventListeners;
               this.removeEventListeners = this.removeBosEventListeners;
               break;
            case "battle_of_will":
               this.addEventListeners = this.addBowEventListeners;
               this.removeEventListeners = this.removeBowEventListeners;
               break;
            case "battle_of_motion":
               this.addEventListeners = this.addBomEventListeners;
               this.removeEventListeners = this.removeBomEventListeners;
               break;
            default:
               this.addEventListeners = null;
               this.removeEventListeners = null;
         }
      }
      
      public function startBattle(param1:IBattleBoard) : void
      {
         this._board = param1;
         if(this.addEventListeners != null && !this._listenersAdded)
         {
            this.addEventListeners();
            this._listenersAdded = true;
         }
      }
      
      public function endBattle() : void
      {
      }
      
      public function cleanup() : void
      {
         if(this._listenersAdded && this.removeEventListeners != null)
         {
            this.removeEventListeners();
            this._listenersAdded = false;
         }
         this.removeEventListeners = this.addEventListeners = null;
      }
      
      private function addBosEventListeners() : void
      {
         this._board.addEventListener(BattleBoardEvent.BOARD_ENTITY_TURN_STARTED,this.bosTurnStartHandler);
         this._board.addEventListener(BattleBoardEvent.BOARD_ENTITY_KILLING_EFFECT,this.bosKillHandler);
      }
      
      private function removeBosEventListeners() : void
      {
         this._board.removeEventListener(BattleBoardEvent.BOARD_ENTITY_TURN_STARTED,this.bosTurnStartHandler);
         this._board.removeEventListener(BattleBoardEvent.BOARD_ENTITY_KILLING_EFFECT,this.bosKillHandler);
      }
      
      private function bosTurnStartHandler(param1:BattleBoardEvent) : void
      {
         this._saga.performBattleUnitAbility(param1.entity.id,"abl_ea_battleofstrength_heal",1,null,null,null);
      }
      
      private function bosKillHandler(param1:BattleBoardEvent) : void
      {
         if(param1.entity == null || param1.entity.killingEffect == null)
         {
            return;
         }
         var _loc2_:IEffect = param1.entity.killingEffect;
         this._saga.performBattleUnitAbility(_loc2_.ability.caster.id,"abl_ea_battleofstrength_heal",2,null,null,null);
      }
      
      private function addBowEventListeners() : void
      {
         this._board.addEventListener(BattleBoardEvent.BOARD_ENTITY_TURN_STARTED,this.bowTurnStartHandler);
         this._board.addEventListener(BattleBoardEvent.BOARD_ENTITY_KILLING_EFFECT,this.bowKillHandler);
      }
      
      private function removeBowEventListeners() : void
      {
         this._board.removeEventListener(BattleBoardEvent.BOARD_ENTITY_TURN_STARTED,this.bowTurnStartHandler);
         this._board.removeEventListener(BattleBoardEvent.BOARD_ENTITY_KILLING_EFFECT,this.bowKillHandler);
      }
      
      private function bowTurnStartHandler(param1:BattleBoardEvent) : void
      {
         this._saga.performBattleUnitAbility(param1.entity.id,"abl_ea_battleofwill_heal",1,null,null,null);
      }
      
      private function bowKillHandler(param1:BattleBoardEvent) : void
      {
         if(param1.entity == null || param1.entity.killingEffect == null)
         {
            return;
         }
         var _loc2_:IEffect = param1.entity.killingEffect;
         this._saga.performBattleUnitAbility(_loc2_.ability.caster.id,"abl_ea_battleofwill_heal",2,null,null,null);
      }
      
      private function addBomEventListeners() : void
      {
         this._board.addEventListener(BattleBoardEvent.BOARDSETUP,this.handleBoardEntitiesModified);
         this._board.addEventListener(BattleBoardEvent.BOARD_ENTITY_ALIVE,this.handleBoardEntitiesModified);
         this._board.addEventListener(BattleBoardEvent.BOARD_ENTITY_ENABLED,this.handleBoardEntitiesModified);
         this._board.addEventListener(BattleBoardEvent.BOARD_ENTITY_MOVING,this.handleEntityMoving);
         this.handleBoardEntitiesModified(null);
      }
      
      private function removeBomEventListeners() : void
      {
         this._board.removeEventListener(BattleBoardEvent.BOARDSETUP,this.handleBoardEntitiesModified);
         this._board.removeEventListener(BattleBoardEvent.BOARD_ENTITY_ALIVE,this.handleBoardEntitiesModified);
         this._board.removeEventListener(BattleBoardEvent.BOARD_ENTITY_ENABLED,this.handleBoardEntitiesModified);
         this._board.removeEventListener(BattleBoardEvent.BOARD_ENTITY_MOVING,this.handleEntityMoving);
      }
      
      private function handleEntityMoving(param1:BattleBoardEvent) : void
      {
         if(this._lastMovedEntity != param1.entity)
         {
            this._lastMovedEntity = param1.entity;
            this._remainderStrMove = this._remainderWilMove = 0;
            var _loc2_:int = param1.entity.mobility.move.numSteps;
            this._remainderStrMove += _loc2_;
            this._remainderWilMove += _loc2_;
            this.applyHealthBonusFromMovement(null);
            this.applyWillBonusFromMovement(null);
            return;
         }
      }
      
      private function applyHealthBonusFromMovement(param1:IBattleAbility) : void
      {
         if(!this._lastMovedEntity)
         {
            return;
         }
         if(this._remainderStrMove >= 4)
         {
            this._remainderStrMove -= 4;
            this._saga.performBattleUnitAbility(this._lastMovedEntity.id,"abl_ea_battleofstrength_heal",1,null,null,this.applyHealthBonusFromMovement);
         }
      }
      
      private function applyWillBonusFromMovement(param1:IBattleAbility) : void
      {
         if(!this._lastMovedEntity)
         {
            return;
         }
         if(this._remainderWilMove >= 3)
         {
            this._remainderWilMove -= 3;
            this._saga.performBattleUnitAbility(this._lastMovedEntity.id,"abl_ea_battleofwill_heal",1,null,null,this.applyWillBonusFromMovement);
         }
      }
      
      private function handleBoardEntitiesModified(param1:BattleBoardEvent) : void
      {
         var _loc2_:IBattleEntity = null;
         for each(_loc2_ in this._board.entities)
         {
            this._saga.performBattleUnitAbility(_loc2_.id,"abl_ea_battleofmotion",1,null,null,null);
         }
      }
   }
}
