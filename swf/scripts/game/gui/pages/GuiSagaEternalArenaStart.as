package game.gui.pages
{
   import com.stoicstudio.platform.Platform;
   import engine.core.cmd.Cmd;
   import engine.core.cmd.CmdExec;
   import engine.core.cmd.KeyBinder;
   import engine.core.locale.LocaleCategory;
   import engine.core.locale.Localizer;
   import engine.core.util.AppInfo;
   import engine.gui.GuiContextEvent;
   import engine.saga.ISaga;
   import engine.saga.Saga;
   import engine.saga.SagaVar;
   import engine.saga.action.ActionDef;
   import engine.saga.action.ActionType;
   import engine.sound.ISoundDefBundle;
   import engine.sound.ISoundDefBundleListener;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import game.gui.ButtonWithIndex;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   import game.gui.page.IGuiSagaEternalArenaStart;
   import game.gui.page.IGuiSagaEternalArenaStartListener;
   
   public class GuiSagaEternalArenaStart extends GuiBase implements IGuiSagaEternalArenaStart, ISoundDefBundleListener
   {
      
      public static var EA_WELCOME_BODY_:String = "ea_welcome_body_";
       
      
      public var listener:IGuiSagaEternalArenaStartListener;
      
      private var appInfo:AppInfo;
      
      private var _welcome:MovieClip;
      
      private var _welcomeText:TextField;
      
      private var _welcomeTextCount:int = -1;
      
      public var _button$ss_continue:ButtonWithIndex;
      
      private var _$ea_title:TextField;
      
      public var _buttonClose:ButtonWithIndex;
      
      private var cmd_space:Cmd;
      
      private var saga:Saga;
      
      private var _gp:GuiSagaEternalArenaStart_gp;
      
      private var _saved:GuiSagaEternalArenaStart_saved;
      
      private var _challenge:GuiSagaEternalArenaStart_challenge;
      
      private var bundle:ISoundDefBundle;
      
      public function GuiSagaEternalArenaStart()
      {
         this.cmd_space = new Cmd("ea_space",this.cmdSpaceFunc);
         this._gp = new GuiSagaEternalArenaStart_gp();
         super();
         super.visible = false;
         name = "gui_ea_start";
         this._buttonClose = requireGuiChild("buttonClose") as ButtonWithIndex;
         this._saved = requireGuiChild("saved") as GuiSagaEternalArenaStart_saved;
         this._challenge = requireGuiChild("challenge") as GuiSagaEternalArenaStart_challenge;
         this._welcome = requireGuiChild("welcome") as MovieClip;
         this._welcome.mouseEnabled = false;
         this._welcome.mouseChildren = true;
         this._welcome.visible = false;
         this._button$ss_continue = this._welcome.getChildByName("button$ss_continue") as ButtonWithIndex;
         this._button$ss_continue.setDownFunction(this.buttonContinueHandler);
         this._$ea_title = requireGuiChild("$ea_title") as TextField;
         this.registerScalableTextfield(this._$ea_title);
         recursiveRegisterScalableTextfields2d(this._welcome,true);
         this._welcome.scaleX = this._welcome.scaleY = Platform.textScale;
      }
      
      public function get saved_getter() : GuiSagaEternalArenaStart_saved
      {
         return this._saved;
      }
      
      public function get challenge_getter() : GuiSagaEternalArenaStart_challenge
      {
         return this._challenge;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(this._gp)
         {
            this._gp.visible = param1;
         }
         if(param1)
         {
            if(!Platform.optimizeForConsole)
            {
               if(Boolean(this.saga) && Boolean(this.saga.eternalArena))
               {
                  this.saga.eternalArena.requestAllEternalArenaLeaderboards();
               }
            }
            if(_context)
            {
               _context.addEventListener(GuiContextEvent.LOCALE,this.localeHandler);
            }
            this.localeHandler(null);
         }
         else if(_context)
         {
            _context.removeEventListener(GuiContextEvent.LOCALE,this.localeHandler);
         }
      }
      
      private function localeHandler(param1:Event) : void
      {
         scaleTextfields();
      }
      
      public function get isWelcoming() : Boolean
      {
         return Boolean(this._welcome) && this._welcome.visible;
      }
      
      public function closeWelcoming() : Boolean
      {
         if(this._welcome.visible)
         {
            this._button$ss_continue.press();
            return true;
         }
         return false;
      }
      
      private function cmdSpaceFunc(param1:CmdExec) : void
      {
         if(this.closeWelcoming())
         {
            return;
         }
      }
      
      public function init(param1:IGuiContext, param2:IGuiSagaEternalArenaStartListener, param3:ISaga, param4:AppInfo) : void
      {
         super.initGuiBase(param1);
         this.saga = _context.saga;
         KeyBinder.keybinder.bind(false,false,false,Keyboard.SPACE,this.cmd_space,"");
         this.appInfo = param4;
         this.listener = param2;
         this._challenge.init(_context,param2);
         this._saved.init(param1,param2);
         this._buttonClose.guiButtonContext = _context;
         this._buttonClose.setDownFunction(this.buttonCloseHandler);
         _context.locale.translateDisplayObjects(LocaleCategory.GUI,this,logger);
         var _loc5_:int = int(param3.getVarInt(SagaVar.VAR_SURVIVAL_TOTAL));
         this.setupWelcomeDialog();
         this.showNextWelcomeDialog();
         this._playWelcomeMusic();
         this._gp.init(this);
         this.visible = true;
      }
      
      private function _playWelcomeMusic() : void
      {
         var _loc1_:ActionDef = new ActionDef(null);
         _loc1_.type = ActionType.MUSIC_START;
         switch(this.saga.sagaDefId)
         {
            case "saga3e":
               _loc1_.id = "saga3/music/ch20/20m2";
               _loc1_.param = "complete";
               _loc1_.varvalue = 1;
         }
         this.saga.executeActionDef(_loc1_,null,null);
      }
      
      public function soundDefBundleComplete(param1:ISoundDefBundle) : void
      {
      }
      
      private function setupWelcomeDialog() : void
      {
         var _loc2_:int = 0;
         var _loc1_:Localizer = _context.locale.getLocalizer(LocaleCategory.GUI,false);
         this._welcomeText = this._welcome.getChildByName("ea_welcome_body_1") as TextField;
         this._welcomeTextCount = 1;
         if(this._welcomeText)
         {
            _loc2_ = 2;
            while(_loc1_.hasToken(EA_WELCOME_BODY_ + _loc2_.toString()))
            {
               ++this._welcomeTextCount;
               _loc2_++;
            }
         }
      }
      
      private function showNextWelcomeDialog() : void
      {
         var _loc1_:int = this.saga.getMasterSaveKeyInt("welcomed");
         if(_loc1_ < this._welcomeTextCount)
         {
            _loc1_++;
            if(this._welcomeText == null)
            {
               this._welcome.visible = true;
            }
            else
            {
               this._welcomeText.htmlText = context.translateCategory(EA_WELCOME_BODY_ + _loc1_.toString(),LocaleCategory.GUI);
               context.locale.fixTextFieldFormat(this._welcomeText);
               this._welcome.visible = true;
            }
         }
         else if(this._welcome.visible)
         {
            this._welcome.visible = false;
            this._gp.handleWelcomeClosed();
         }
         this.saga.setMasterSaveKey("welcomed",_loc1_);
      }
      
      private function buttonContinueHandler(param1:*) : void
      {
         this.showNextWelcomeDialog();
      }
      
      private function buttonCloseHandler(param1:*) : void
      {
         this.listener.guiEternalArenaExit();
      }
      
      public function resizeHandler(param1:Number, param2:Number) : void
      {
      }
      
      public function cleanup() : void
      {
         super.cleanupGuiBase();
         this._gp.cleanup();
         this._gp = null;
         if(this.bundle)
         {
            this.bundle.removeListener(this);
         }
         KeyBinder.keybinder.unbind(this.cmd_space);
         this.cmd_space.cleanup();
      }
      
      public function update(param1:int) : void
      {
         this._challenge.update(param1);
      }
      
      public function updateButtonVisibility() : void
      {
         this._gp.updateButtonVisibility();
      }
   }
}
