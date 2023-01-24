package game.gui.page
{
   import com.stoicstudio.platform.Platform;
   import engine.core.fsm.StateData;
   import engine.core.util.AppInfo;
   import engine.saga.Saga;
   import engine.saga.SagaInstance;
   import engine.saga.SagaLeaderboards;
   import engine.saga.ea.EternalArenaArrangement;
   import engine.saga.ea.EternalArenaConfig;
   import engine.saga.ea.SagaEternalArena;
   import flash.events.Event;
   import game.cfg.GameConfig;
   import game.gui.GamePage;
   import game.session.states.GameStateDataEnum;
   import game.session.states.SagaEternalArenaLeaderboardsState;
   import game.session.states.SagaEternalArenaSetupState;
   
   public class SagaEternalArenaStartPage extends GamePage implements IGuiSagaEternalArenaStartListener
   {
      
      public static var mcClazz_saga3_eternalArenaStart:Class;
       
      
      private var _gui:IGuiSagaEternalArenaStart;
      
      public var saga:Saga;
      
      public var ea:SagaEternalArena;
      
      public function SagaEternalArenaStartPage(param1:GameConfig, param2:int = 2731, param3:int = 1536)
      {
         super(param1,param2,param3);
         this.saga = param1.saga;
         this.ea = this.saga.eternalArena;
         logger.info("SagaEternalArenaStartPage ctor");
      }
      
      public function get mcClazz() : Class
      {
         var _loc1_:String = SagaInstance.id;
         switch(_loc1_)
         {
            case "saga3e":
               return mcClazz_saga3_eternalArenaStart;
            default:
               logger.e("ETAR","SagaEternalArenaStartPage.get mcClazz(): Error, invalid saga id [" + _loc1_ + "], defaulting");
               return mcClazz_saga3_eternalArenaStart;
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
            fullScreenMc.visible = true;
            this._gui = fullScreenMc as IGuiSagaEternalArenaStart;
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
      
      public function guiEternalArenaViewLeaderboards() : void
      {
         var _loc1_:StateData = new StateData();
         config.fsm.transitionTo(SagaEternalArenaLeaderboardsState,_loc1_);
      }
      
      public function guiEternalArenaLeaderboardsSupported() : Boolean
      {
         return SagaLeaderboards.isSupported && SagaEternalArena.ENABLED_LEADERBOARDS && Platform.id == "steam";
      }
      
      public function guiEternalArenaViewChallenge() : void
      {
         var _loc1_:StateData = new StateData();
         var _loc2_:EternalArenaArrangement = !!this.ea.challenge ? this.ea.challenge.arrangement : null;
         _loc1_.setValue(GameStateDataEnum.EA_ARRANGEMENT,_loc2_);
         _loc1_.setValue(GameStateDataEnum.EA_ARRANGEMENT_READONLY,true);
         config.fsm.transitionTo(SagaEternalArenaSetupState,_loc1_);
      }
      
      public function guiEternalArenaSetupArena(param1:EternalArenaArrangement) : void
      {
         var _loc2_:StateData = new StateData();
         if(!param1)
         {
            param1 = new EternalArenaArrangement();
            this.ea.initArrangement(true,param1);
         }
         _loc2_.setValue(GameStateDataEnum.EA_ARRANGEMENT,param1);
         config.fsm.transitionTo(SagaEternalArenaSetupState,_loc2_);
      }
      
      public function guiEternalArenaExit() : void
      {
         var _loc1_:Saga = config.saga;
         config.loadSaga(_loc1_.def.parentSagaUrl,null,null,-1,-1,null,null,null);
      }
      
      public function guiEternalArenaLoadArrangements() : Vector.<EternalArenaArrangement>
      {
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc8_:EternalArenaArrangement = null;
         var _loc1_:String = config.saga.sagaDefId;
         var _loc2_:String = EternalArenaConfig.ARRANGEMENT_FOLDER + "/" + _loc1_;
         var _loc3_:AppInfo = config.context.appInfo;
         var _loc4_:Array = _loc3_.listDirectory(null,_loc2_,AppInfo.FILE_SORT_LAST_MODIFIED_DESCENDING);
         var _loc5_:Vector.<EternalArenaArrangement> = new Vector.<EternalArenaArrangement>();
         for each(_loc6_ in _loc4_)
         {
            if(_loc6_.charAt(0) != ".")
            {
               _loc7_ = _loc3_.loadFileJson(null,_loc2_ + "/" + _loc6_);
               _loc8_ = new EternalArenaArrangement().fromJson(_loc7_);
               _loc8_.filename = _loc6_;
               if(_loc6_ == "current_arena.json")
               {
                  _loc5_.insertAt(0,_loc8_);
               }
               else
               {
                  _loc5_.push(_loc8_);
               }
            }
         }
         return _loc5_;
      }
      
      public function guiEternalArenaUpdateButtonVisibility() : void
      {
         if(this._gui)
         {
            this._gui.updateButtonVisibility();
         }
      }
      
      public function guiEternalArenaDeleteArrangement(param1:EternalArenaArrangement) : void
      {
         var _loc2_:String = config.saga.sagaDefId;
         var _loc3_:String = EternalArenaConfig.ARRANGEMENT_FOLDER + "/" + _loc2_;
         var _loc4_:AppInfo = config.context.appInfo;
         var _loc5_:String = _loc3_ + "/" + param1.filename;
         _loc4_.deleteFile(null,_loc5_,true);
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
