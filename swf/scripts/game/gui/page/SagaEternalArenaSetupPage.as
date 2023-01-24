package game.gui.page
{
   import engine.core.fsm.StateData;
   import engine.core.util.StableJson;
   import engine.core.util.StringUtil;
   import engine.saga.Saga;
   import engine.saga.SagaInstance;
   import engine.saga.ea.EternalArenaConfig;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import game.cfg.GameConfig;
   import game.gui.GamePage;
   import game.session.states.SagaEternalArenaSetupState;
   import game.session.states.SagaEternalArenaStartState;
   
   public class SagaEternalArenaSetupPage extends GamePage implements IGuiSagaEternalArenaSetupListener
   {
      
      public static var mcClazz_saga3_eternalArenaSetup:Class;
      
      public static var mcClazz_saga3_eternalArenaChallengeWarning:Class;
       
      
      private var _gui:IGuiSagaEternalArenaSetup;
      
      public function SagaEternalArenaSetupPage(param1:GameConfig, param2:int = 2731, param3:int = 1536)
      {
         super(param1,param2,param3);
         logger.info("SagaEternalArenaSetupPage ctor");
      }
      
      public function get mcClazz() : Class
      {
         var _loc1_:String = SagaInstance.id;
         switch(_loc1_)
         {
            case "saga3e":
               return mcClazz_saga3_eternalArenaSetup;
            default:
               logger.e("ETAR","SagaEternalArenaSetupPage.get mcClazz(): Error, invalid saga id [" + _loc1_ + "], defaulting");
               return mcClazz_saga3_eternalArenaSetup;
         }
      }
      
      override protected function handleStart() : void
      {
         var _loc1_:Saga = Saga.instance;
         if(_loc1_)
         {
            _loc1_.trackPageView("etar_Setup");
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
         var _loc1_:SagaEternalArenaSetupState = null;
         if(Boolean(fullScreenMc) && !this._gui)
         {
            fullScreenMc.visible = true;
            this._gui = fullScreenMc as IGuiSagaEternalArenaSetup;
            _loc1_ = config.fsm.current as SagaEternalArenaSetupState;
            this._gui.init(config.gameGuiContext,this,config.context.appInfo,_loc1_.arrangement,_loc1_.readonly);
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
      
      public function guiEternalArenaStart() : void
      {
         var _loc1_:StateData = null;
         config.fsm.transitionTo(SagaEternalArenaStartState,_loc1_);
      }
      
      public function guiEternalArenaSaveWrite(param1:String, param2:Object, param3:Boolean, param4:Boolean) : Boolean
      {
         var _loc9_:Saga = null;
         if(!StringUtil.endsWith(param1,".json"))
         {
            param1 += ".json";
         }
         var _loc5_:String = config.saga.sagaDefId;
         var _loc6_:String = EternalArenaConfig.ARRANGEMENT_FOLDER + "/" + _loc5_ + "/" + param1;
         if(!param3 && config.context.appInfo.checkFileExists(null,_loc6_))
         {
            return false;
         }
         var _loc7_:String = StableJson.stringifyObject(param2,"  ");
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.writeUTFBytes(_loc7_);
         config.context.appInfo.saveFile(null,_loc6_,_loc8_,true);
         logger.info("ETAR","Saved Arrangement: [" + param1 + "]");
         if(!param4)
         {
            _loc9_ = Saga.instance;
            if(_loc9_)
            {
               _loc9_.eaSaveArrangement();
            }
         }
         return true;
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
