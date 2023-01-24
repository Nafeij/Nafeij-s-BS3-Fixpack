package game.gui.pages
{
   import engine.core.locale.Locale;
   import engine.core.util.StringUtil;
   import engine.gui.GuiContextEvent;
   import engine.saga.ea.EternalArenaArrangement;
   import engine.saga.ea.EternalArenaChallenge;
   import engine.saga.ea.EternalArenaConfig;
   import engine.saga.ea.SagaEternalArena;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import game.gui.ButtonWithIndex;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   import game.gui.page.IGuiSagaEternalArenaStartListener;
   
   public class GuiSagaEternalArenaStart_challenge extends GuiBase
   {
       
      
      public var listener:IGuiSagaEternalArenaStartListener;
      
      public var _thumbnail:GuiSagaEternalArenaThumbnail;
      
      public var _button_$ea_view_leaderboards:ButtonWithIndex;
      
      private var _arrangement:EternalArenaArrangement;
      
      public var ea:SagaEternalArena;
      
      private var _challenge:EternalArenaChallenge;
      
      private var _minutesRemaining:int;
      
      public var _active:MovieClip;
      
      public var _active__$ea_challenge_active:TextField;
      
      public var _active__text_title:TextField;
      
      public var _active__text_timer:TextField;
      
      public var _active__button_$ea_view_challenge:ButtonWithIndex;
      
      public var _pending:MovieClip;
      
      public var _pending__text_title:TextField;
      
      public var _pending__text_detail:TextField;
      
      public var _pending__text_timer:TextField;
      
      public var _error:MovieClip;
      
      public var _error__text_detail:TextField;
      
      private var timeHelper:GuiSagaEternalArenaTimeHelper;
      
      public function GuiSagaEternalArenaStart_challenge()
      {
         super();
         this._thumbnail = requireGuiChild("thumbnail") as GuiSagaEternalArenaThumbnail;
         this._button_$ea_view_leaderboards = requireGuiChild("button_$ea_view_leaderboards") as ButtonWithIndex;
         this._active = requireGuiChild("active") as MovieClip;
         this._active__$ea_challenge_active = requireGuiChild("$ea_challenge_active",this._active) as TextField;
         this._active__text_title = requireGuiChild("text_title",this._active) as TextField;
         this._active__text_timer = requireGuiChild("text_timer",this._active) as TextField;
         this._active__button_$ea_view_challenge = requireGuiChild("button_$ea_view_challenge",this._active) as ButtonWithIndex;
         registerScalableTextfieldAlign(this._active__$ea_challenge_active,"center");
         registerScalableTextfieldAlign(this._active__text_title,"center");
         registerScalableTextfieldAlign(this._active__text_timer,"center");
         this._pending = requireGuiChild("pending") as MovieClip;
         this._pending__text_title = requireGuiChild("text_title",this._pending) as TextField;
         this._pending__text_detail = requireGuiChild("text_detail",this._pending) as TextField;
         this._pending__text_timer = requireGuiChild("text_timer",this._pending) as TextField;
         registerScalableTextfieldAlign(this._pending__text_title,"center");
         registerScalableTextfieldAlign(this._pending__text_detail,"center");
         registerScalableTextfieldAlign(this._pending__text_timer,"center");
         this._error = requireGuiChild("error") as MovieClip;
         this._error__text_detail = requireGuiChild("text_detail",this._error) as TextField;
         registerScalableTextfieldAlign(this._error__text_detail,"center");
         this._pending.visible = false;
         this._active.visible = false;
         this._error.visible = false;
      }
      
      public function cleanup() : void
      {
         this._thumbnail.cleanup();
         this.ea.removeEventListener(SagaEternalArena.EVENT_CHALLENGE,this.challengeHandler);
         _context.removeEventListener(GuiContextEvent.LOCALE,this.localeHandler);
      }
      
      public function init(param1:IGuiContext, param2:IGuiSagaEternalArenaStartListener) : void
      {
         super.initGuiBase(param1);
         this.listener = param2;
         this._thumbnail.init(param1);
         this._button_$ea_view_leaderboards.guiButtonContext = _context;
         this._button_$ea_view_leaderboards.setDownFunction(this.buttonLeaderboardsHandler);
         this._button_$ea_view_leaderboards.visible = param2.guiEternalArenaLeaderboardsSupported();
         this._active__button_$ea_view_challenge.guiButtonContext = _context;
         this._active__button_$ea_view_challenge.setDownFunction(this.buttonViewChallengeHandler);
         var _loc3_:TextField = EternalArenaConfig.DEBUG ? this._pending__text_timer : null;
         this.timeHelper = new GuiSagaEternalArenaTimeHelper(_context,"ea_end_timer","ea_next_timer",this._active__text_timer,_loc3_);
         if(!_loc3_)
         {
            this._pending__text_timer.visible = false;
         }
         this.ea = _context.saga.eternalArena;
         this.ea.addEventListener(SagaEternalArena.EVENT_CHALLENGE,this.challengeHandler);
         this.challengeHandler(null);
         _context.addEventListener(GuiContextEvent.LOCALE,this.localeHandler);
         this.localeHandler(null);
         this._updateChallengePanels();
      }
      
      private function localeHandler(param1:Event) : void
      {
         scaleTextfields();
      }
      
      public function get challenge() : EternalArenaChallenge
      {
         return this._challenge;
      }
      
      public function set challenge(param1:EternalArenaChallenge) : void
      {
         if(this.timeHelper)
         {
            this.timeHelper.challenge = param1;
         }
         if(this._challenge == param1)
         {
            return;
         }
         this._challenge = param1;
         this.arrangement = !!this._challenge ? this._challenge.arrangement : null;
         this._updateChallengePanels();
         this._updatePending();
         this.listener.guiEternalArenaUpdateButtonVisibility();
      }
      
      private function _updateChallengePanels() : void
      {
         var _loc1_:Locale = null;
         if(!this._challenge)
         {
            this._error.visible = true;
            if(this.ea)
            {
               _loc1_ = _context.locale;
               this._error__text_detail.text = _loc1_.translateGui(this.ea.errorStateString);
            }
            this._active.visible = this._active__button_$ea_view_challenge.visible = false;
            this._pending.visible = false;
         }
         else
         {
            this._error.visible = false;
            this._active.visible = this._active__button_$ea_view_challenge.visible = this._arrangement != null;
            this._pending.visible = this._arrangement == null;
         }
         this.listener.guiEternalArenaUpdateButtonVisibility();
      }
      
      private function challengeHandler(param1:Event) : void
      {
         this.challenge = this.ea.challenge;
      }
      
      public function get arrangement() : EternalArenaArrangement
      {
         return this._arrangement;
      }
      
      public function set arrangement(param1:EternalArenaArrangement) : void
      {
         if(this._arrangement == param1)
         {
            return;
         }
         this._arrangement = param1;
         this._thumbnail.updateFromArrangement(this._arrangement);
         this._updateActive();
      }
      
      private function _updateActive() : void
      {
         if(!this._arrangement)
         {
            return;
         }
         var _loc1_:Locale = _context.locale;
         this._active__text_title.htmlText = this._arrangement.getLocalizedName(_loc1_);
         this.localeHandler(null);
      }
      
      private function _updatePending() : void
      {
         var _loc4_:String = null;
         if(Boolean(this._arrangement) || !this._challenge)
         {
            return;
         }
         if(this._challenge.ordinal < 1)
         {
            this._pending__text_title.visible = false;
            this._pending__text_detail.visible = false;
            return;
         }
         var _loc1_:Locale = _context.locale;
         var _loc2_:String = _loc1_.translateGui("ea_next");
         _loc2_ = _loc2_.replace("{challenge_num}",StringUtil.formatCommaInteger(this._challenge.ordinal));
         this._pending__text_title.htmlText = _loc2_;
         var _loc3_:Date = this._challenge.absoluteUpdateDate;
         if(_loc3_)
         {
            _loc4_ = _loc1_.translateGui("ea_next_d");
            _loc4_ = _loc4_.replace("{start_date}",_loc3_.toLocaleString());
            this._pending__text_detail.htmlText = _loc4_;
         }
         this._pending__text_detail.visible = _loc3_ != null;
      }
      
      private function buttonLeaderboardsHandler(param1:*) : void
      {
         this.listener.guiEternalArenaViewLeaderboards();
      }
      
      private function buttonViewChallengeHandler(param1:*) : void
      {
         if(!this._arrangement)
         {
            return;
         }
         this.listener.guiEternalArenaViewChallenge();
      }
      
      private function _updateThumbnail() : void
      {
         this._thumbnail.updateFromArrangement(this._arrangement);
      }
      
      public function update(param1:int) : void
      {
         if(this.timeHelper)
         {
            this.timeHelper.update(param1);
         }
         if(!this._challenge)
         {
            return;
         }
      }
      
      public function get isActive() : Boolean
      {
         return Boolean(this._challenge) && this._challenge.isActive;
      }
      
      public function get isPending() : Boolean
      {
         return Boolean(this._challenge) && this._challenge.isPending;
      }
   }
}
