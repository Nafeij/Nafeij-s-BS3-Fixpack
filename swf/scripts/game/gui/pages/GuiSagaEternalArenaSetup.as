package game.gui.pages
{
   import engine.core.locale.LocaleCategory;
   import engine.core.util.AppInfo;
   import engine.gui.GuiContextEvent;
   import engine.saga.Saga;
   import engine.saga.SagaBucket;
   import engine.saga.ea.EternalArenaArrangement;
   import engine.saga.ea.EternalArenaBoards;
   import engine.saga.ea.EternalArenaOption;
   import engine.saga.ea.EternalArenaOptionGroup;
   import engine.saga.ea.EternalArenaOptionGroupTypes;
   import engine.saga.ea.EternalArenaRoster;
   import engine.saga.ea.SagaEternalArena;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import game.gui.ButtonWithIndex;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   import game.gui.page.IGuiSagaEternalArenaSetup;
   import game.gui.page.IGuiSagaEternalArenaSetupListener;
   
   public class GuiSagaEternalArenaSetup extends GuiBase implements IGuiSagaEternalArenaSetup, GuiSagaEternalArenaSetup_saveListener
   {
       
      
      public var listener:IGuiSagaEternalArenaSetupListener;
      
      private var appInfo:AppInfo;
      
      public var _buttonClose:ButtonWithIndex;
      
      public var _right:MovieClip;
      
      public var _button_$ea_arena_save:ButtonWithIndex;
      
      public var _button_$ea_arena_play:ButtonWithIndex;
      
      private var _$ea_title_arena_setup:TextField;
      
      public var saga:Saga;
      
      public var ea:SagaEternalArena;
      
      public var _tabGroup:GuiSagaEternalArenaSetup_TabGroup;
      
      public var _optionGroup:GuiSagaEternalArenaSetup_OptionGroup;
      
      public var _infoPanelOptions:GuiSagaEternalArenaSetup_InfoPanelOptions;
      
      public var _infoPanelRoster:GuiSagaEternalArenaSetup_InfoPanelRoster;
      
      public var _challengeWarning:GuiSagaEternalArenaSetup_ChallengeWarning;
      
      public var _rosterUpArrow:ButtonWithIndex;
      
      public var _rosterDownArrow:ButtonWithIndex;
      
      private var _rosterTooltipHolder:MovieClip;
      
      private var _gp:GuiSagaEternalArenaSetup_gp;
      
      private var arrangement:EternalArenaArrangement;
      
      private var _save:GuiSagaEternalArenaSetup_save;
      
      public var readonly:Boolean;
      
      public function GuiSagaEternalArenaSetup()
      {
         this._gp = new GuiSagaEternalArenaSetup_gp();
         super();
         super.visible = false;
         name = "gui_ea_start";
         this._buttonClose = requireGuiChild("buttonClose") as ButtonWithIndex;
         this._buttonClose.setDownFunction(this.buttonCloseHandler);
         this._right = requireGuiChild("right") as MovieClip;
         this._right.addEventListener(MouseEvent.MOUSE_WHEEL,this.onRightMouseWheelHandler);
         this._tabGroup = requireGuiChild("tabGroup") as GuiSagaEternalArenaSetup_TabGroup;
         this._optionGroup = requireGuiChild("optionGroup") as GuiSagaEternalArenaSetup_OptionGroup;
         this._infoPanelOptions = requireGuiChild("infoPanelOptions",this._right) as GuiSagaEternalArenaSetup_InfoPanelOptions;
         this._infoPanelRoster = requireGuiChild("infoPanelRoster",this._right) as GuiSagaEternalArenaSetup_InfoPanelRoster;
         this._rosterUpArrow = requireGuiChild("up_arrow",this._right) as ButtonWithIndex;
         this._rosterDownArrow = requireGuiChild("down_arrow",this._right) as ButtonWithIndex;
         this._$ea_title_arena_setup = requireGuiChild("$ea_title_arena_setup") as TextField;
         this._challengeWarning = requireGuiChild("challenge_end_warning") as GuiSagaEternalArenaSetup_ChallengeWarning;
         this._rosterUpArrow.setDownFunction(this.rosterUpArrowClickHandler);
         this._rosterDownArrow.setDownFunction(this.rosterDownArrowClickHandler);
         this._rosterUpArrow.visible = false;
         this._rosterDownArrow.visible = false;
         this._save = requireGuiChild("save") as GuiSagaEternalArenaSetup_save;
         this._button_$ea_arena_save = requireGuiChild("button_$ea_arena_save",this._right) as ButtonWithIndex;
         this._button_$ea_arena_play = requireGuiChild("button_$ea_arena_play",this._right) as ButtonWithIndex;
         this._rosterTooltipHolder = requireGuiChild("tooltip_clip",this._right) as MovieClip;
      }
      
      public function init(param1:IGuiContext, param2:IGuiSagaEternalArenaSetupListener, param3:AppInfo, param4:EternalArenaArrangement, param5:Boolean) : void
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         super.initGuiBase(param1);
         this.readonly = param5;
         this.saga = param1.saga;
         this.ea = this.saga.eternalArena;
         this.appInfo = param3;
         this.listener = param2;
         this.arrangement = param4;
         this._buttonClose.guiButtonContext = _context;
         this._rosterUpArrow.guiButtonContext = param1;
         this._rosterDownArrow.guiButtonContext = param1;
         _context.locale.translateDisplayObjects(LocaleCategory.GUI,this,logger);
         this._optionGroup.init(param1,this.optionsChangeHandler,this.optionsUpdateNavHandler,param4,param5);
         this._tabGroup.init(param1,this.tabGroupPressedHandler);
         this._infoPanelOptions.init(param1);
         this._infoPanelRoster.init(param1,this._rosterTooltipHolder);
         this._challengeWarning.init(param1);
         this._save.init(param1,this);
         this._gp.init(this);
         registerScalableTextfield(this._$ea_title_arena_setup);
         this._button_$ea_arena_save.guiButtonContext = _context;
         this._button_$ea_arena_save.setDownFunction(this.buttonArenaSaveHandler);
         this._button_$ea_arena_play.guiButtonContext = _context;
         this._button_$ea_arena_play.setDownFunction(this.buttonArenaPlayHandler);
         this.selectTabGroup(EternalArenaBoards.OPTION_GROUP_TYPE);
         this.updateThumbnail();
         this.visible = true;
         if(param5 && Boolean(this.ea))
         {
            _loc6_ = param4.ordinal;
            _loc7_ = this.ea.challenge.configHash;
            this.ea.gaReportViewChallenge(_loc6_,_loc7_);
         }
      }
      
      private function showSave(param1:Boolean) : void
      {
         this._save.setVisible(param1);
         this._gp.setNavState(!param1);
         this._tabGroup.visible = !param1;
         this._optionGroup.visible = !param1;
         this._right.visible = !param1;
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
            _context && _context.addEventListener(GuiContextEvent.LOCALE,this.localeHandler);
            this.localeHandler(null);
         }
         else
         {
            _context && _context.removeEventListener(GuiContextEvent.LOCALE,this.localeHandler);
         }
      }
      
      private function localeHandler(param1:Event) : void
      {
         this._button_$ea_arena_save.handleLocaleChange();
         this._button_$ea_arena_play.handleLocaleChange();
         scaleTextfields();
      }
      
      public function resizeHandler(param1:Number, param2:Number) : void
      {
      }
      
      public function cleanup() : void
      {
         super.cleanupGuiBase();
         this._gp.cleanup();
         this._gp = null;
         this._tabGroup.cleanup();
         this._optionGroup.cleanup();
         this._infoPanelOptions.cleanup();
         this._infoPanelRoster.cleanup();
         this._challengeWarning.cleanup();
         this._save.cleanup();
         this._tabGroup = null;
         this._optionGroup = null;
         this._infoPanelOptions = null;
         this._infoPanelRoster = null;
         this._save = null;
      }
      
      public function update(param1:int) : void
      {
         if(Boolean(this._challengeWarning) && this.readonly)
         {
            this._challengeWarning.update(param1);
         }
      }
      
      private function tabGroupPressedHandler(param1:ButtonWithIndex) : void
      {
         var _loc2_:String = param1.name.replace(/.*__/,"");
         this.selectTabGroup(_loc2_);
      }
      
      private function selectTabGroup(param1:String) : void
      {
         var _loc2_:EternalArenaOptionGroup = this.ea.def.optionGroups.getGroupById(param1);
         if(_loc2_)
         {
            this._displayOptions(_loc2_);
         }
         this._optionGroup.setRandomizeToken(null);
         this.updateThumbnail();
         this._forceUpdateGpState();
      }
      
      private function updateArrangementFrom(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:String = this._optionGroup.getOptionId(param1);
         var _loc3_:String = this._optionGroup.getOptionValue(param1);
         this.arrangement.setValue(this._optionGroup.type,_loc2_,_loc3_);
         if(_loc2_ == EternalArenaBoards.KEY_SCENE || _loc2_ == EternalArenaBoards.KEY_BOARD || _loc2_ == "artifact" || _loc2_ == "initiative" || _loc2_ == "timer")
         {
            this.updateThumbnail();
         }
         else if(_loc2_ == "roster")
         {
            this.updateRoster();
         }
         else if(_loc2_ == "enemies")
         {
            this.updateEnemies();
         }
      }
      
      private function optionsUpdateNavHandler() : void
      {
         this._forceUpdateGpState();
      }
      
      private function optionsChangeHandler(param1:int) : void
      {
         if(!this.arrangement)
         {
            return;
         }
         this.updateArrangementFrom(param1);
         var _loc2_:String = this._optionGroup.displayText;
         if(!_loc2_)
         {
            _loc2_ = this.arrangement.getLocalizedDescription(_context.locale);
         }
         var _loc3_:String = this.arrangement.getLocalizedName(_context.locale);
         this._infoPanelOptions.updateText(_loc3_,_loc2_);
      }
      
      private function updateThumbnail() : void
      {
         var _loc1_:String = EternalArenaOptionGroupTypes.BOARD;
         var _loc2_:String = this.arrangement.getValue(_loc1_,EternalArenaBoards.KEY_SAGA);
         var _loc3_:String = this.arrangement.getValue(_loc1_,EternalArenaBoards.KEY_SCENE);
         var _loc4_:String = this.arrangement.getValue(_loc1_,EternalArenaBoards.KEY_BOARD);
         this._infoPanelOptions.updateThumbnailBg(_loc2_,_loc3_,_loc4_);
         var _loc5_:String = EternalArenaOptionGroupTypes.RULES;
         if(this._optionGroup.type == EternalArenaOptionGroupTypes.RULES)
         {
            this._infoPanelOptions.updateThumbnailOverlays(this.arrangement.getValue(_loc5_,"initiative"),this.arrangement.getValue(_loc5_,"artifact"),this.arrangement.getValue(_loc5_,"timer"));
         }
         else
         {
            this._infoPanelOptions.updateThumbnailOverlays(null,null,null);
         }
      }
      
      private function updateRoster() : void
      {
         var _loc1_:String = EternalArenaOptionGroupTypes.COMBATANTS;
         var _loc2_:String = this.arrangement.getValue(_loc1_,"roster");
         var _loc3_:EternalArenaRoster = this.ea.def.getRosterById(_loc2_);
         if(!_loc3_)
         {
            logger.error("No such roster [" + _loc2_ + "]");
         }
         this._infoPanelRoster.updatePlayerRoster(!!_loc3_ ? _loc3_.units : null);
      }
      
      private function updateEnemies() : void
      {
         var _loc1_:String = EternalArenaOptionGroupTypes.COMBATANTS;
         var _loc2_:String = this.arrangement.getValue(_loc1_,"enemies");
         var _loc3_:SagaBucket = this.ea.def.buckets.getSagaBucket(_loc2_);
         if(!_loc3_)
         {
            logger.error("No such enemy bucket [" + _loc2_ + "]");
         }
         var _loc4_:SagaBucket = _loc3_;
         this._infoPanelRoster.updateEnemies(!!_loc3_ ? _loc3_.ids : null,!!_loc4_ ? _loc4_.ids : null);
      }
      
      private function buttonCloseHandler(param1:*) : void
      {
         if(this._save.visible)
         {
            this.showSave(false);
         }
         else
         {
            this.saveCurrent();
            this.listener.guiEternalArenaStart();
         }
      }
      
      private function _forceUpdateGpState() : void
      {
         if(!this._gp)
         {
            return;
         }
         this._gp.remapNavState();
         this._gp.updateButtonVisibility();
      }
      
      public function buttonArenaSaveHandler(param1:*) : void
      {
         this._save.showSave(this.arrangement);
         this.showSave(true);
      }
      
      public function buttonArenaPlayHandler(param1:*) : void
      {
         if(!this.arrangement)
         {
            return;
         }
         this.saveCurrent();
         var _loc2_:Saga = _context.saga;
         var _loc3_:SagaEternalArena = _loc2_.eternalArena;
         _loc3_.playBattle(this.arrangement,this.readonly);
         if(!_loc3_.isChallengeArrangement)
         {
            _loc2_.unlockAchievementById(Saga.VAR_ACV_EA_AUTHOR);
         }
      }
      
      private function saveCurrent() : void
      {
         if(this.arrangement)
         {
            this.saveWrite("current_arena.json",this.arrangement.toJson(),true,true);
         }
      }
      
      private function _displayOptions(param1:EternalArenaOptionGroup) : void
      {
         var _loc4_:EternalArenaOption = null;
         this.saveCurrent();
         var _loc2_:EternalArenaBoards = this.ea.def.boards;
         this._optionGroup.clear(param1.id);
         this._infoPanelOptions.visible = param1.id != "combatants";
         this._infoPanelRoster.visible = param1.id == "combatants";
         this._rosterUpArrow.visible = this._infoPanelRoster.visible;
         this._rosterDownArrow.visible = this._infoPanelRoster.visible;
         var _loc3_:int = 0;
         while(_loc3_ < param1.options.length)
         {
            _loc4_ = param1.options[_loc3_];
            this._optionGroup.setupOption(_loc4_.id,_loc4_.choices,_loc4_.filter);
            _loc3_++;
         }
         this._optionGroup.displayOptions(0);
         this.updateThumbnail();
      }
      
      public function saveClosed() : void
      {
         this.showSave(false);
      }
      
      public function saveWrite(param1:String, param2:Object, param3:Boolean, param4:Boolean) : Boolean
      {
         return this.listener.guiEternalArenaSaveWrite(param1,param2,param3,param4);
      }
      
      public function getOverlay() : DisplayObjectContainer
      {
         return this;
      }
      
      private function onRightMouseWheelHandler(param1:MouseEvent) : void
      {
         if(!this._infoPanelRoster.visible)
         {
            return;
         }
         if(param1.delta > 0)
         {
            this.rosterUpArrowClickHandler(this._rosterUpArrow);
         }
         else if(param1.delta < 0)
         {
            this.rosterDownArrowClickHandler(this._rosterDownArrow);
         }
      }
      
      private function rosterUpArrowClickHandler(param1:ButtonWithIndex) : void
      {
         var _loc2_:Number = this._infoPanelRoster.y;
         var _loc3_:Number = this._infoPanelOptions.y;
         var _loc4_:Number = 0;
         if(_loc2_ > _loc3_ + _loc4_)
         {
            return;
         }
         this._infoPanelRoster.y += 20;
      }
      
      private function rosterDownArrowClickHandler(param1:ButtonWithIndex) : void
      {
         var _loc2_:Number = this._infoPanelRoster.y + this._infoPanelRoster.height;
         var _loc3_:Number = this._infoPanelOptions.height;
         var _loc4_:Number = 50;
         if(_loc2_ < _loc3_ - _loc4_)
         {
            return;
         }
         this._infoPanelRoster.y -= 20;
      }
   }
}
