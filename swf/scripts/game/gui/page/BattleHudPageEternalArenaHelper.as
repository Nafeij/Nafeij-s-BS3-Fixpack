package game.gui.page
{
   import engine.saga.Saga;
   import game.cfg.GameConfig;
   
   public class BattleHudPageEternalArenaHelper
   {
       
      
      private var _challengeWarning:IGuiChallengeWarning;
      
      private var _saga:Saga;
      
      private var _bhp:BattleHudPage;
      
      public function BattleHudPageEternalArenaHelper(param1:BattleHudPage, param2:GameConfig)
      {
         super();
         this._bhp = param1;
         this._saga = param2.saga;
         if(!this._bhp || !this._saga || !this._saga.isEternalArena)
         {
            return;
         }
         if(this._saga.eternalArena.isChallengeArrangement)
         {
            this._challengeWarning = new SagaEternalArenaSetupPage.mcClazz_saga3_eternalArenaChallengeWarning();
            if(this._challengeWarning.displayObject)
            {
               this._bhp.addChild(this._challengeWarning.displayObject);
            }
            this._challengeWarning.init(param1.config.gameGuiContext);
         }
      }
      
      public function cleanup() : void
      {
         if(!this._bhp || !this._saga || !this._saga.isEternalArena)
         {
            return;
         }
         if(this._challengeWarning)
         {
            if(Boolean(this._challengeWarning.displayObject) && this._bhp == this._challengeWarning.displayObject.parent)
            {
               this._bhp.removeChild(this._challengeWarning.displayObject);
            }
            this._challengeWarning.cleanup();
            this._challengeWarning = null;
         }
      }
      
      public function update(param1:int) : void
      {
         if(!this._bhp || !this._saga || !this._saga.isEternalArena)
         {
            return;
         }
         if(this._challengeWarning)
         {
            this._challengeWarning.update(param1);
         }
      }
      
      public function resizeHandler(param1:Number, param2:Number) : void
      {
         if(!this._bhp || !this._saga || !this._saga.isEternalArena)
         {
            return;
         }
         if(this._challengeWarning)
         {
            this._challengeWarning.resizeHandler(param1,param2);
         }
      }
   }
}
