package game.gui.page
{
   import engine.saga.Saga;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import game.cfg.GameConfig;
   import game.gui.GamePage;
   
   public class SagaSurvivalStartPage extends GamePage implements IGuiSagaSurvivalStartListener
   {
      
      public static var mcClazz_saga2_survivalStart:Class;
      
      public static var mcClazz_saga3_survivalStart:Class;
       
      
      private var _gui:IGuiSagaSurvivalStart;
      
      public function SagaSurvivalStartPage(param1:GameConfig, param2:int = 2731, param3:int = 1536)
      {
         super(param1,param2,param3);
         logger.info("SagaSurvivalStartPage ctor");
      }
      
      public function get mcClazz() : Class
      {
         var _loc1_:Saga = Saga.instance;
         if(!_loc1_ || !_loc1_.def)
         {
            throw new IllegalOperationError("SagaSurvivalStartPage.get mcClazz() Critical Error! Invalid Saga or Saga Def!");
         }
         switch(_loc1_.def.id)
         {
            case "saga2s":
               return mcClazz_saga2_survivalStart;
            case "saga3s":
               return mcClazz_saga3_survivalStart;
            default:
               logger.e("SURVIVAL","SagaSurvivalStartPage.get mcClazz(): Error, invalid saga.def.id, defaulting to mcClazz_saga2_survivalStart");
               return mcClazz_saga2_survivalStart;
         }
      }
      
      override protected function handleStart() : void
      {
         var _loc1_:Saga = Saga.instance;
         if(_loc1_)
         {
            _loc1_.trackPageView("survival_start");
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
            fullScreenMc.visible = true;
            this._gui = fullScreenMc as IGuiSagaSurvivalStart;
            this._gui.init(config.gameGuiContext,this,config.saga,config.context.appInfo);
            this._gui.resizeHandler(width,height);
            this._gui.addEventListener(Event.COMPLETE,this.newGameCompleteHandler);
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
      
      public function guiSurvivalExit() : void
      {
         var _loc1_:Saga = config.saga;
         config.loadSaga(_loc1_.def.parentSagaUrl,null,null,-1,-1,null,null,null);
      }
   }
}
