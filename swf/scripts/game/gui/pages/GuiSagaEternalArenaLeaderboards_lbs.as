package game.gui.pages
{
   import engine.core.locale.Locale;
   import engine.core.locale.LocaleCategory;
   import engine.core.util.AppInfo;
   import engine.gui.GuiGp;
   import engine.gui.GuiGpAlignH;
   import engine.gui.GuiGpAlignV;
   import engine.gui.GuiGpBitmap;
   import engine.gui.GuiGpNav;
   import engine.gui.IGuiButton;
   import engine.math.MathUtil;
   import engine.saga.Saga;
   import engine.saga.SagaLeaderboards;
   import engine.saga.ea.SagaEternalArena;
   import engine.saga.ea.SagaEternalArenaDef_Leaderboard;
   import engine.saga.ea.SagaEternalArenaDef_Leaderboards;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import game.gui.ActivitySpinner;
   import game.gui.ButtonWithIndex;
   import game.gui.GuiBase;
   import game.gui.GuiChitsGroup;
   import game.gui.GuiLeaderboardRow;
   import game.gui.IGuiContext;
   import tbs.srv.data.LeaderboardData;
   import tbs.srv.data.LeaderboardEntryData;
   
   public class GuiSagaEternalArenaLeaderboards_lbs extends GuiBase
   {
       
      
      private var appInfo:AppInfo;
      
      private var saga:Saga;
      
      public var rows:Vector.<GuiLeaderboardRow>;
      
      private var _global:Boolean = true;
      
      private var _dirtyGui:Boolean = true;
      
      private var _currentLeaderboard:LeaderboardData;
      
      private var _currentLeaderboardDef:SagaEternalArenaDef_Leaderboard;
      
      private var color_name_leader:int = 16767921;
      
      private var color_name:int = 14742783;
      
      private var color_name_self:int = 6343167;
      
      private var _text_challenge_title:TextField;
      
      private var _boards:Vector.<LeaderboardData>;
      
      private var activitySpinner:ActivitySpinner;
      
      public var _chits_group:GuiChitsGroup;
      
      public var _button_board_next:ButtonWithIndex;
      
      public var _button_board_prev:ButtonWithIndex;
      
      public var _mc_texts_rank:MovieClip;
      
      public var _mc_texts_score:MovieClip;
      
      public var _mc_texts_name:MovieClip;
      
      public var _text_board_name:TextField;
      
      public var _text_info_desc:TextField;
      
      public var _texts_rank:Vector.<TextField>;
      
      public var _texts_score:Vector.<TextField>;
      
      public var _texts_name:Vector.<TextField>;
      
      private var _$ss_lb_rank:TextField;
      
      private var _$ss_lb_score:TextField;
      
      private var _$ss_lb_name:TextField;
      
      public function GuiSagaEternalArenaLeaderboards_lbs()
      {
         var _loc2_:GuiLeaderboardRow = null;
         this.rows = new Vector.<GuiLeaderboardRow>();
         this._boards = new Vector.<LeaderboardData>();
         this._texts_rank = new Vector.<TextField>();
         this._texts_score = new Vector.<TextField>();
         this._texts_name = new Vector.<TextField>();
         super();
         this._mc_texts_rank = requireGuiChild("mc_texts_rank") as MovieClip;
         this._mc_texts_score = requireGuiChild("mc_texts_score") as MovieClip;
         this._mc_texts_name = requireGuiChild("mc_texts_name") as MovieClip;
         this._button_board_next = requireGuiChild("button_board_next") as ButtonWithIndex;
         this._button_board_prev = requireGuiChild("button_board_prev") as ButtonWithIndex;
         this._$ss_lb_rank = requireGuiChild("$ss_lb_rank") as TextField;
         this._$ss_lb_score = requireGuiChild("$ss_lb_score") as TextField;
         this._$ss_lb_name = requireGuiChild("$ss_lb_name") as TextField;
         this._text_board_name = requireGuiChild("text_board_name") as TextField;
         this._text_info_desc = requireGuiChild("text_info_desc") as TextField;
         this._text_challenge_title = requireGuiChild("text_challenge_title") as TextField;
         this._text_challenge_title.visible = false;
         this._text_challenge_title.htmlText = "";
         registerScalableTextfieldAlign(this._$ss_lb_rank);
         registerScalableTextfieldAlign(this._$ss_lb_score);
         registerScalableTextfieldAlign(this._$ss_lb_name);
         registerScalableTextfieldAlign(this._text_challenge_title);
         registerScalableTextfieldAlign(this._text_board_name);
         registerScalableTextfieldAlign(this._text_info_desc);
         this._chits_group = requireGuiChild("chits") as GuiChitsGroup;
         var _loc1_:int = 0;
         while(_loc1_ < this._mc_texts_score.numChildren)
         {
            if(this._mc_texts_rank.numChildren <= _loc1_ || this._mc_texts_name.numChildren <= _loc1_)
            {
               break;
            }
            _loc2_ = new GuiLeaderboardRow(this._mc_texts_rank.getChildAt(_loc1_) as TextField,this._mc_texts_score.getChildAt(_loc1_) as TextField,this._mc_texts_name.getChildAt(_loc1_) as TextField);
            this._mc_texts_name.parent.addChild(_loc2_);
            this.rows.push(_loc2_);
            _loc1_++;
         }
      }
      
      public function cleanup() : void
      {
         this.activitySpinner.release();
         super.cleanupGuiBase();
      }
      
      public function init(param1:IGuiContext, param2:AppInfo, param3:ButtonWithIndex) : void
      {
         var _loc5_:Vector.<String> = null;
         super.initGuiBase(param1,true);
         this.saga = _context.saga;
         this.appInfo = param2;
         this.logger = param1.logger;
         this._button_board_prev.guiButtonContext = param1;
         this._button_board_next.guiButtonContext = param1;
         this._button_board_prev.setDownFunction(this.boardPrevHandler);
         this._button_board_next.setDownFunction(this.boardNextHandler);
         this._chits_group.init(param1);
         var _loc4_:SagaEternalArena = !!this.saga ? this.saga.eternalArena : null;
         if(_loc4_)
         {
            _loc5_ = _loc4_.def.leaderboards.leaderboardNames;
            this._chits_group.numVisibleChits = _loc5_.length;
            this._chits_group.activeChitIndex = 0;
         }
         this.activitySpinner = new ActivitySpinner(_context.resourceManager,"common/gui/notification/save_spinner.png",170,170,33);
         addChild(this.activitySpinner);
         this.activitySpinner.x = 700;
         this.activitySpinner.y = 400;
         this.activitySpinner.visible = false;
         this.updateBoards(null);
      }
      
      public function updateBoards(param1:LeaderboardData) : void
      {
         var _loc2_:SagaEternalArena = !!this.saga ? this.saga.eternalArena : null;
         if(_loc2_)
         {
            if(this._global)
            {
               this._boards = _loc2_.leaderboards_global;
            }
            else
            {
               this._boards = _loc2_.leaderboards_friends;
            }
         }
         this._chits_group.numVisibleChits = this._boards.length;
         if(this._currentLeaderboardDef)
         {
            if(!param1 || param1.leaderboard_type == this._currentLeaderboardDef.override)
            {
               this.refreshGui();
            }
         }
         this.activitySpinner.visible = visible && enabled && SagaLeaderboards.count_fetch > 0;
      }
      
      public function get leaderboardNameId() : String
      {
         var _loc1_:SagaEternalArena = !!this.saga ? this.saga.eternalArena : null;
         if(!_loc1_ || !this._boards || !this._boards.length || this._chits_group.activeChitIndex < 0)
         {
            return null;
         }
         var _loc2_:Vector.<String> = _loc1_.def.leaderboards.leaderboardNames;
         return _loc2_[this._chits_group.activeChitIndex];
      }
      
      public function refreshGui() : void
      {
         var _loc5_:String = null;
         var _loc7_:Boolean = false;
         var _loc8_:TextField = null;
         var _loc9_:TextField = null;
         var _loc10_:TextField = null;
         var _loc14_:Locale = null;
         var _loc15_:LeaderboardEntryData = null;
         var _loc16_:int = 0;
         var _loc17_:String = null;
         var _loc18_:String = null;
         var _loc19_:uint = 0;
         var _loc20_:int = 0;
         if(!_context)
         {
            return;
         }
         if(!this._boards || !this._boards.length)
         {
            this._text_challenge_title.visible = false;
            logger.error("No boards?");
            return;
         }
         if(!enabled)
         {
            this._dirtyGui = true;
            return;
         }
         this._dirtyGui = false;
         var _loc1_:int = this._chits_group.activeChitIndex;
         this._chits_group.activeChitIndex = MathUtil.clampValue(_loc1_,0,this._boards.length - 1);
         var _loc2_:LeaderboardData = this._boards[this._chits_group.activeChitIndex];
         this._currentLeaderboard = _loc2_;
         this._currentLeaderboardDef = null;
         var _loc3_:SagaEternalArena = !!this.saga ? this.saga.eternalArena : null;
         if(!_loc3_)
         {
            return;
         }
         this._currentLeaderboardDef = _loc3_.def.leaderboards.getLeaderboardByIndex(this._chits_group.activeChitIndex);
         var _loc4_:String = this.leaderboardNameId;
         _loc5_ = String(_context.translateCategory(_loc4_,LocaleCategory.LEADERBOARD));
         this._text_board_name.htmlText = _loc5_;
         _context.currentLocale.fixTextFieldFormat(this._text_board_name);
         var _loc6_:* = "";
         if(this._currentLeaderboardDef.name != this._currentLeaderboardDef.override)
         {
            _loc6_ = "\n(" + this._currentLeaderboardDef.override + ")";
         }
         _loc5_ = _context.translateCategory(_loc4_ + "_desc",LocaleCategory.LEADERBOARD) + _loc6_;
         this._text_info_desc.htmlText = _loc5_;
         _context.currentLocale.fixTextFieldFormat(this._text_info_desc);
         if(this._currentLeaderboardDef.name == SagaEternalArenaDef_Leaderboards.LB_ID_CURR && _loc3_.challenge && Boolean(_loc3_.challenge.arrangement))
         {
            _loc7_ = true;
            _loc14_ = _context.locale;
            this._text_challenge_title.htmlText = _loc3_.challenge.arrangement.getLocalizedName(_loc14_);
            this._text_challenge_title.visible = true;
            scaleTextField(this._text_challenge_title);
         }
         else
         {
            this._text_challenge_title.visible = false;
         }
         var _loc11_:int = !!_loc2_ ? int(Math.min(_loc2_.entries.length,this.rows.length)) : 0;
         if(_loc7_ && (!_loc3_.challenge || !_loc3_.challenge.isActive))
         {
            _loc11_ = 0;
         }
         var _loc12_:int = 0;
         while(_loc12_ < _loc11_)
         {
            _loc15_ = _loc2_.entries[_loc12_];
            _loc16_ = _loc15_.value;
            _loc17_ = _loc15_.display_name;
            _loc18_ = _loc15_.account_id;
            _loc19_ = uint(this.color_name);
            _loc20_ = _loc12_ + 1;
            if(_loc20_ == _loc11_)
            {
               if(_loc2_.user_rank > _loc11_)
               {
                  _loc17_ = _loc2_.user_display_name;
                  _loc16_ = _loc2_.user_value;
                  _loc20_ = _loc2_.user_rank;
                  _loc18_ = _loc2_.user_account_id;
                  _loc19_ = uint(this.color_name_self);
               }
            }
            if(_loc2_.entryBelongsToUser(_loc15_))
            {
               _loc19_ = uint(this.color_name_self);
            }
            else if(_loc12_ == 0)
            {
               _loc19_ = uint(this.color_name_leader);
            }
            this.rows[_loc12_].showEntry(_loc20_,_loc19_,_loc17_,_loc16_,_loc18_);
            _loc12_++;
         }
         while(_loc12_ < this.rows.length)
         {
            this.rows[_loc12_].clear();
            _loc12_++;
         }
         var _loc13_:int = SagaLeaderboards.count_fetch;
         this.activitySpinner.visible = visible && enabled && _loc13_ > 0;
      }
      
      public function get global() : Boolean
      {
         return this._global;
      }
      
      public function set global(param1:Boolean) : void
      {
         if(this._global == param1)
         {
            return;
         }
         this._global = param1;
         this.updateBoards(null);
      }
      
      private function boardPrevHandler(param1:IGuiButton) : void
      {
         --this._chits_group.activeChitIndex;
         this.refreshGui();
      }
      
      private function boardNextHandler(param1:IGuiButton) : void
      {
         ++this._chits_group.activeChitIndex;
         this.refreshGui();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(param1 == super.visible)
         {
            return;
         }
         this.mouseEnabled = this.mouseChildren = param1;
         super.visible = param1;
         if(param1)
         {
            this.refreshGui();
         }
         this.activitySpinner.visible = visible && enabled && SagaLeaderboards.count_fetch > 0;
      }
      
      override public function handleLocaleChange() : void
      {
         super.handleLocaleChange();
         scaleTextfields();
         this._dirtyGui = true;
         if(Boolean(this._boards) && Boolean(this._boards.length))
         {
            this.refreshGui();
         }
      }
      
      public function pressNext() : void
      {
         this._button_board_next.press();
      }
      
      public function pressPrev() : void
      {
         this._button_board_prev.press();
      }
      
      public function placeGpNavIcons(param1:GuiGpBitmap, param2:GuiGpBitmap) : void
      {
         GuiGp.placeIcon(this._button_board_prev,null,param1,GuiGpAlignH.W_LEFT,GuiGpAlignV.C,20,0);
         GuiGp.placeIcon(this._button_board_next,null,param2,GuiGpAlignH.E_RIGHT,GuiGpAlignV.C,-20,0);
      }
      
      public function addNavs(param1:GuiGpNav) : void
      {
         var _loc2_:GuiLeaderboardRow = null;
         for each(_loc2_ in this.rows)
         {
            param1.add(_loc2_);
         }
      }
      
      public function get isRowVisible() : Boolean
      {
         var _loc1_:GuiLeaderboardRow = null;
         for each(_loc1_ in this.rows)
         {
            if(_loc1_.enabled && _loc1_.visible)
            {
               return true;
            }
         }
         return false;
      }
   }
}
