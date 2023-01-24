package game.gui.pages
{
   import engine.core.locale.LocaleCategory;
   import engine.core.util.AppInfo;
   import engine.gui.IGuiButton;
   import engine.saga.ISaga;
   import engine.saga.Saga;
   import engine.saga.SagaLeaderboardsEvent;
   import engine.saga.ea.EternalArenaChallenge;
   import engine.saga.ea.SagaEternalArena;
   import engine.saga.ea.SagaEternalArenaDef_Leaderboards;
   import engine.saga.ea.SagaEternalArenaEvent;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import game.gui.ButtonWithIndex;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   import game.gui.IGuiDialog;
   import game.gui.page.IGuiSagaEternalArenaLeaderboards;
   import game.gui.page.IGuiSagaEternalArenaLeaderboardsListener;
   import tbs.srv.data.LeaderboardData;
   import tbs.srv.data.LeaderboardEntryData;
   
   public class GuiSagaEternalArenaLeaderboards extends GuiBase implements IGuiSagaEternalArenaLeaderboards
   {
      
      public static var LEADERBOARD_WIKI_URL:String = "https://bannersaga.com/ealbs";
       
      
      public var listener:IGuiSagaEternalArenaLeaderboardsListener;
      
      private var appInfo:AppInfo;
      
      private var saga:Saga;
      
      public var _buttonClose:ButtonWithIndex;
      
      public var _winner:MovieClip;
      
      public var _winner__text:TextField;
      
      public var _button_$ss_lb_global:ButtonWithIndex;
      
      public var _button_$ss_lb_friends:ButtonWithIndex;
      
      public var _lbs:GuiSagaEternalArenaLeaderboards_lbs;
      
      public var _timer:GuiSagaEternalArenaLeaderboards_timer;
      
      public var _btn_wiki$ea_wiki:ButtonWithIndex;
      
      public var _gp:GuiSagaEternalArenaLeaderboards_gp;
      
      private var networkErrorDialog:IGuiDialog;
      
      public var ea:SagaEternalArena;
      
      private var _challenge:EternalArenaChallenge;
      
      private var _waitingOnData:Boolean;
      
      private var _previousWinner:LeaderboardEntryData;
      
      public function GuiSagaEternalArenaLeaderboards()
      {
         this._gp = new GuiSagaEternalArenaLeaderboards_gp();
         super();
         super.visible = false;
         this._button_$ss_lb_global = requireGuiChild("button_$ss_lb_global") as ButtonWithIndex;
         this._button_$ss_lb_friends = requireGuiChild("button_$ss_lb_friends") as ButtonWithIndex;
         this._lbs = requireGuiChild("lbs") as GuiSagaEternalArenaLeaderboards_lbs;
         this._timer = requireGuiChild("timer") as GuiSagaEternalArenaLeaderboards_timer;
         this._buttonClose = requireGuiChild("buttonClose") as ButtonWithIndex;
         this._winner = requireGuiChild("winner") as MovieClip;
         this._winner__text = requireGuiChild("text_name",this._winner) as TextField;
         this._btn_wiki$ea_wiki = requireGuiChild("btn_wiki$ea_wiki") as ButtonWithIndex;
      }
      
      public function init(param1:IGuiContext, param2:IGuiSagaEternalArenaLeaderboardsListener, param3:ISaga, param4:AppInfo) : void
      {
         super.initGuiBase(param1,true);
         this.saga = _context.saga;
         this.appInfo = param4;
         this.listener = param2;
         this._gp.init(this);
         this._buttonClose.guiButtonContext = _context;
         this._buttonClose.setDownFunction(this.buttonCloseHandler);
         this._lbs.init(param1,param4,this._buttonClose);
         this._timer.init(_context);
         this._button_$ss_lb_friends.guiButtonContext = param1;
         this._button_$ss_lb_global.guiButtonContext = param1;
         this._btn_wiki$ea_wiki.guiButtonContext = param1;
         this._button_$ss_lb_friends.setDownFunction(this.buttonFriendsHandler);
         this._button_$ss_lb_global.setDownFunction(this.buttonGlobalHandler);
         this._btn_wiki$ea_wiki.setDownFunction(this.buttonWikiHandler);
         this.ea = _context.saga.eternalArena;
         this.ea.addEventListener(SagaEternalArena.EVENT_CHALLENGE,this.challengeHandler);
         this.challengeHandler(null);
         this.refreshGui();
      }
      
      private function challengeHandler(param1:Event) : void
      {
         this.challenge = this.ea.challenge;
      }
      
      public function get challenge() : EternalArenaChallenge
      {
         return this._challenge;
      }
      
      public function set challenge(param1:EternalArenaChallenge) : void
      {
         if(this._timer)
         {
            this._timer.challenge = param1;
         }
         if(this._challenge == param1)
         {
            return;
         }
         this._challenge = param1;
         var _loc2_:SagaEternalArena = !!this.saga ? this.saga.eternalArena : null;
         if(_loc2_)
         {
            _loc2_.requestAllEternalArenaLeaderboards();
         }
         this._timer.visible = Boolean(this._challenge) && (this._challenge.isActive || this._challenge.isPending);
      }
      
      public function update(param1:int) : void
      {
         if(this._timer)
         {
            this._timer.update(param1);
         }
      }
      
      public function get previousWinner() : LeaderboardEntryData
      {
         return this._previousWinner;
      }
      
      public function set previousWinner(param1:LeaderboardEntryData) : void
      {
         this._previousWinner = param1;
         this._refreshPreviousWinner();
      }
      
      private function _refreshPreviousWinner() : void
      {
         if(!this._previousWinner)
         {
            this._winner.visible = false;
            return;
         }
         this._winner.visible = true;
         this._winner__text.htmlText = this._previousWinner.display_name;
         scaleTextfields();
      }
      
      private function refreshGui() : void
      {
         if(!_context)
         {
            return;
         }
         this._lbs.refreshGui();
         this._button_$ss_lb_global.enabled = !this._lbs.global;
         this._button_$ss_lb_friends.enabled = this._lbs.global;
         this._refreshPreviousWinner();
         this.refreshGp();
      }
      
      private function buttonFriendsHandler(param1:IGuiButton) : void
      {
         this.global = false;
      }
      
      private function buttonGlobalHandler(param1:IGuiButton) : void
      {
         this.global = true;
      }
      
      private function buttonWikiHandler(param1:IGuiButton) : void
      {
         var _loc2_:URLRequest = new URLRequest(LEADERBOARD_WIKI_URL);
         navigateToURL(_loc2_);
      }
      
      private function _fetchTexts(param1:MovieClip, param2:Vector.<TextField>) : void
      {
         var _loc4_:TextField = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = param1.getChildAt(_loc3_) as TextField;
            param2.push(_loc4_);
            _loc3_++;
         }
      }
      
      public function cleanup() : void
      {
         this.visible = false;
         super.cleanupGuiBase();
         this._lbs.cleanup();
         this._lbs = null;
         this.saga = null;
         this.appInfo = null;
         this.listener = null;
         if(this.networkErrorDialog)
         {
            this.networkErrorDialog.cleanup();
            this.networkErrorDialog = null;
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(!this._lbs)
         {
            return;
         }
         this._lbs.visible = param1;
         if(param1 == super.visible)
         {
            return;
         }
         super.visible = param1;
         this.mouseEnabled = this.mouseChildren = param1;
         this._gp.enabled = param1;
         if(param1)
         {
            if(Boolean(this.saga) && Boolean(this.saga.eternalArena))
            {
               this.saga.eternalArena.requestAllEternalArenaLeaderboards();
            }
            SagaEternalArena.dispatcher.addEventListener(SagaEternalArenaEvent.CHANGED,this.eaLeaderboardChangedHandler);
            SagaEternalArena.dispatcher.addEventListener(SagaLeaderboardsEvent.FETCH_ERROR,this.eaLeaderboardErrorHandler);
            this.refreshGui();
         }
         else
         {
            SagaEternalArena.dispatcher.removeEventListener(SagaEternalArenaEvent.CHANGED,this.eaLeaderboardChangedHandler);
            SagaEternalArena.dispatcher.removeEventListener(SagaLeaderboardsEvent.FETCH_ERROR,this.eaLeaderboardErrorHandler);
            if(this.networkErrorDialog)
            {
               this.networkErrorDialog.closeDialog("");
            }
         }
      }
      
      private function eaLeaderboardChangedHandler(param1:SagaEternalArenaEvent) : void
      {
         var _loc3_:LeaderboardEntryData = null;
         var _loc2_:LeaderboardData = param1.leaderboard;
         this._lbs.updateBoards(_loc2_);
         if(!_loc2_)
         {
            return;
         }
         if((_loc2_.leaderboard_type == SagaEternalArenaDef_Leaderboards.LB_ID_PREV.base || _loc2_.leaderboard_type == SagaEternalArenaDef_Leaderboards.LB_ID_PREV.override) && _loc2_.global)
         {
            _loc3_ = !!_loc2_.entries.length ? _loc2_.entries[0] : null;
            this.previousWinner = _loc3_;
         }
      }
      
      private function eaLeaderboardErrorHandler(param1:SagaLeaderboardsEvent) : void
      {
         if(this.networkErrorDialog)
         {
            this.networkErrorDialog.cleanup();
         }
         var _loc2_:String = _context.translate("ok");
         var _loc3_:String = _context.translateCategory("platform_network_error",LocaleCategory.PLATFORM);
         var _loc4_:String = _context.translateCategory("platform_leaderboard_inaccessible",LocaleCategory.PLATFORM);
         this.networkErrorDialog = _context.createDialog();
         this.networkErrorDialog.openDialog(_loc3_,_loc4_,_loc2_);
         SagaEternalArena.dispatcher.removeEventListener(SagaLeaderboardsEvent.FETCH_ERROR,this.eaLeaderboardErrorHandler);
      }
      
      override public function handleLocaleChange() : void
      {
         scaleTextfields();
         super.handleLocaleChange();
      }
      
      public function resizeHandler(param1:Number, param2:Number) : void
      {
      }
      
      public function refreshGp() : void
      {
         if(this._gp)
         {
            this._gp.updateNav();
         }
      }
      
      public function get global() : Boolean
      {
         return this._lbs.global;
      }
      
      public function set global(param1:Boolean) : void
      {
         this._lbs.global = param1;
         this.refreshGui();
      }
      
      private function buttonCloseHandler(param1:*) : void
      {
         this.listener.guiEternalArenaLeaderboardClosed();
      }
   }
}
