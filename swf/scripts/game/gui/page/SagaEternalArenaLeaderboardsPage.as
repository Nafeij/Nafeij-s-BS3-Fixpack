package game.gui.page
{
   import engine.core.fsm.StateData;
   import engine.saga.Saga;
   import engine.saga.SagaInstance;
   import flash.events.Event;
   import game.cfg.GameConfig;
   import game.gui.GamePage;
   import game.session.states.GameStateDataEnum;
   import game.session.states.SagaEternalArenaStartState;
   
   public class SagaEternalArenaLeaderboardsPage extends GamePage implements IGuiSagaEternalArenaLeaderboardsListener
   {
      
      public static var mcClazz_saga3_eternalArenaLeaderboards:Class;
       
      
      private var _gui:IGuiSagaEternalArenaLeaderboards;
      
      public function SagaEternalArenaLeaderboardsPage(param1:GameConfig, param2:int = 2731, param3:int = 1536)
      {
         super(param1,param2,param3);
         logger.info("SagaEternalArenaLeaderboardsPage ctor");
      }
      
      public function get mcClazz() : Class
      {
         var _loc1_:String = SagaInstance.id;
         switch(_loc1_)
         {
            case "saga3e":
               return mcClazz_saga3_eternalArenaLeaderboards;
            default:
               logger.e("ETAR","SagaEternalArenaLeaderboardsPage.get mcClazz(): Error, invalid saga id [" + _loc1_ + "], defaulting");
               return mcClazz_saga3_eternalArenaLeaderboards;
         }
      }
      
      override protected function handleStart() : void
      {
         var _loc1_:Saga = Saga.instance;
         if(_loc1_)
         {
            _loc1_.trackPageView("etar_start");
         }
         setFullPageMovieClipClass(this.mcClazz);
      }
      
      override public function cleanup() : void
      {
         if(this._gui)
         {
            this._gui.removeEventListener(Event.COMPLETE,this.newGameCompleteHandler);
            this._gui.cleanup();
         }
         this._gui = null;
         super.cleanup();
      }
      
      override protected function handleLoaded() : void
      {
         if(Boolean(fullScreenMc) && !this._gui)
         {
            this._gui = fullScreenMc as IGuiSagaEternalArenaLeaderboards;
            this._gui.init(config.gameGuiContext,this,config.saga,config.context.appInfo);
            this._gui.resizeHandler(width,height);
            this._gui.addEventListener(Event.COMPLETE,this.newGameCompleteHandler);
            fullScreenMc.visible = true;
            resizeHandler();
         }
      }
      
      private function newGameCompleteHandler(param1:Event) : void
      {
         if(!this._gui)
         {
            return;
         }
      }
      
      public function guiEternalArenaLeaderboardClosed() : void
      {
         var _loc1_:StateData = new StateData();
         _loc1_.setValue(GameStateDataEnum.EA_ARRANGEMENT_READONLY,true);
         config.fsm.transitionTo(SagaEternalArenaStartState,_loc1_);
      }
      
      override public function update(param1:int) : void
      {
         super.update(param1);
         if(this._gui)
         {
            this._gui.update(param1);
         }
      }
   }
}
