package game.gui
{
   import engine.ability.IAbilityDefLevel;
   import engine.ability.def.AbilityDefLevel;
   import engine.anim.view.AnimControllerSpriteFlash;
   import engine.battle.ability.def.BattleAbilityDef;
   import engine.battle.ability.def.BattleAbilityTag;
   import engine.core.TutorialTooltipAlign;
   import engine.core.TutorialTooltipAnchor;
   import engine.core.cmd.Cmd;
   import engine.core.cmd.CmdExec;
   import engine.core.gp.GpBinder;
   import engine.core.gp.GpControlButton;
   import engine.core.locale.LocaleCategory;
   import engine.entity.def.IEntityDef;
   import engine.gui.GuiContextEvent;
   import engine.gui.GuiGp;
   import engine.gui.GuiGpAlignH;
   import engine.gui.GuiGpAlignV;
   import engine.gui.GuiGpBitmap;
   import engine.gui.GuiGpNav;
   import engine.gui.GuiUtil;
   import engine.saga.SagaVar;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import game.gui.page.GuiCharacterAbilityAnimator;
   import game.gui.page.IGuiPgAbilityPopup;
   
   public class GuiPgAbilityPopup extends GuiBase implements IGuiPgAbilityPopup
   {
       
      
      public var _buttonClose:ButtonWithIndex;
      
      public var _placeholder_clip:MovieClip;
      
      public var _button_ability:ButtonWithIndex;
      
      public var _buttons:Vector.<ButtonWithIndex>;
      
      public var _textAblNamePassive:TextField;
      
      public var _textAblNameActive:TextField;
      
      public var _textAblDesc:TextField;
      
      public var _textAblRanks:TextField;
      
      public var _textAblRank:TextField;
      
      private var _$pg_abl_label_passive:TextField;
      
      private var _$pg_abl_label_active:TextField;
      
      public var _button$cancel:ButtonWithIndex;
      
      public var _button$confirm:ButtonWithIndex;
      
      public var _abilitySelectControl:GuiAbilitySelectControl;
      
      public var _abilitySelectIcon:MovieClip;
      
      public var abilitiesToSelect:Vector.<BattleAbilityDef>;
      
      private var _abilitySelectGpBound:Boolean = false;
      
      private var cmd_cancel:Cmd;
      
      private var cmd_confirm:Cmd;
      
      public var textAblRanksBottom:Number = 0;
      
      public var entity:IEntityDef;
      
      public var actives:Vector.<BattleAbilityDef>;
      
      public var passives:Vector.<BattleAbilityDef>;
      
      public var btnToAbl:Dictionary;
      
      public var _ability:BattleAbilityDef;
      
      private var _textAblDescSize:Point;
      
      private var _textAblRanksY:int = 0;
      
      private var gp_b:GuiGpBitmap;
      
      private var gp_b2:GuiGpBitmap;
      
      private var cmd_close:Cmd;
      
      private var _sprite:AnimControllerSpriteFlash;
      
      private var nav:GuiGpNav;
      
      private var gplayer:int;
      
      public var animator:GuiCharacterAbilityAnimator;
      
      private var tutorial_id:int;
      
      public function GuiPgAbilityPopup()
      {
         var _loc2_:ButtonWithIndex = null;
         this._buttons = new Vector.<ButtonWithIndex>();
         this.abilitiesToSelect = new Vector.<BattleAbilityDef>();
         this.cmd_cancel = new Cmd("pg_abl_sel_cancel",this.cmdfunc_cancel);
         this.cmd_confirm = new Cmd("pg_abl_sel_confirm",this.cmdfunc_confirm);
         this.actives = new Vector.<BattleAbilityDef>();
         this.passives = new Vector.<BattleAbilityDef>();
         this.btnToAbl = new Dictionary();
         this._textAblDescSize = new Point();
         this.gp_b = GuiGp.ctorPrimaryBitmap(GpControlButton.B);
         this.gp_b2 = GuiGp.ctorPrimaryBitmap(GpControlButton.B);
         this.cmd_close = new Cmd("pg_bio_close",this.cmdfunc_close);
         super();
         this._buttonClose = requireGuiChild("button$close") as ButtonWithIndex;
         this._placeholder_clip = requireGuiChild("placeholder_clip") as MovieClip;
         this._button_ability = requireGuiChild("button_ability") as ButtonWithIndex;
         var _loc1_:int = 0;
         while(_loc1_ < 4)
         {
            _loc2_ = requireGuiChild("button_abl" + _loc1_) as ButtonWithIndex;
            this._buttons.push(_loc2_);
            _loc1_++;
         }
         this._textAblNamePassive = requireGuiChild("textAblNamePassive") as TextField;
         this._textAblNameActive = requireGuiChild("textAblNameActive") as TextField;
         this._textAblDesc = requireGuiChild("textAblDesc") as TextField;
         this._textAblRanks = requireGuiChild("textAblRanks") as TextField;
         this._textAblRank = requireGuiChild("textAblRank") as TextField;
         this._$pg_abl_label_passive = requireGuiChild("$pg_abl_label_passive") as TextField;
         this._$pg_abl_label_active = requireGuiChild("$pg_abl_label_active") as TextField;
         this._button$cancel = requireGuiChild("button$cancel") as ButtonWithIndex;
         this._button$confirm = requireGuiChild("button$confirm") as ButtonWithIndex;
         this._abilitySelectControl = requireGuiChild("abilitySelectControl") as GuiAbilitySelectControl;
         this._abilitySelectIcon = requireGuiChild("abilitySelectIcon") as MovieClip;
         this.showAbilitySelect(false);
         this._textAblRanksY = this._textAblRanks.y;
         this.textAblRanksBottom = this._textAblRanks.y + this._textAblRanks.height;
         this._textAblDescSize.x = this._textAblDesc.width;
         this._textAblDescSize.y = this._textAblDesc.height;
         name = "gui_pg_ability_popup";
      }
      
      public function get mc() : MovieClip
      {
         return this;
      }
      
      public function init(param1:IGuiContext) : void
      {
         var _loc2_:ButtonWithIndex = null;
         super.initGuiBase(param1);
         visible = false;
         this.animator = new GuiCharacterAbilityAnimator(_context.resourceManager);
         this._buttonClose.guiButtonContext = param1;
         this._buttonClose.setDownFunction(this.buttonCloseDownFunction);
         this._button_ability.setDownFunction(this.buttonCloseDownFunction);
         this._button_ability.guiButtonContext = param1;
         for each(_loc2_ in this._buttons)
         {
            _loc2_.guiButtonContext = param1;
            _loc2_.setDownFunction(this.buttonAblDownFunction);
         }
         this._placeholder_clip.visible = false;
         stop();
         param1.addEventListener(GuiContextEvent.LOCALE,this.localeChangedHandler);
         this.localeChangedHandler(null);
         addChild(this.gp_b);
         addChild(this.gp_b2);
         this.gp_b.scale = 1.5;
         this.gp_b2.scale = 1.5;
         GuiGp.placeIcon(this._button_ability,null,this.gp_b,GuiGpAlignH.C,GuiGpAlignV.N_DOWN);
         GuiGp.placeIcon(this._buttonClose,null,this.gp_b2,GuiGpAlignH.E,GuiGpAlignV.C);
         this._button$cancel.guiButtonContext = param1;
         this._button$cancel.setDownFunction(this.onCancelAbilitySelect);
         this._button$confirm.guiButtonContext = param1;
         this._button$confirm.setDownFunction(this.onConfirmAbilitySelect);
         this._abilitySelectControl.init(param1,this.onAbilitySelectChange);
         this.showAbilitySelect(false);
      }
      
      public function cleanup() : void
      {
         var _loc1_:ButtonWithIndex = null;
         if(this.animator)
         {
            this.animator.cleanup();
            this.animator = null;
         }
         GpBinder.gpbinder.unbind(this.cmd_close);
         this.cmd_close.cleanup();
         GuiGp.releasePrimaryBitmap(this.gp_b);
         GuiGp.releasePrimaryBitmap(this.gp_b2);
         this._buttonClose.cleanup();
         this._button_ability.cleanup();
         for each(_loc1_ in this._buttons)
         {
            _loc1_.cleanup();
         }
         this._buttons = null;
         this.actives = null;
         this.passives = null;
         if(this.nav)
         {
            this.nav.cleanup();
            this.nav = null;
         }
         this.btnToAbl = null;
         if(context)
         {
            context.removeEventListener(GuiContextEvent.LOCALE,this.localeChangedHandler);
         }
         this._button$cancel.cleanup();
         this._button$confirm.cleanup();
         var _loc2_:GuiIcon = this._abilitySelectIcon.getChildByName("icon") as GuiIcon;
         if(_loc2_)
         {
            this._abilitySelectIcon.removeChild(_loc2_);
            _loc2_.release();
            _loc2_ = null;
         }
         this._abilitySelectControl.cleanup();
         super.cleanupGuiBase();
      }
      
      private function localeChangedHandler(param1:Event) : void
      {
         this.resetAbilityText();
      }
      
      private function buttonAblDownFunction(param1:ButtonWithIndex) : void
      {
         var _loc2_:BattleAbilityDef = this.btnToAbl[param1];
         if(_loc2_)
         {
            this.ability = _loc2_;
         }
         else
         {
            context.saga.setVar(SagaVar.VAR_TUT_ABILITY_ABILITY_SELECT,true);
            this.showAbilitySelect(true);
         }
      }
      
      private function buttonCloseDownFunction(param1:ButtonWithIndex) : void
      {
         this.deactivateAbilityPopup();
      }
      
      private function updateAbilityPopupButtons(param1:Boolean) : void
      {
         var _loc2_:ButtonWithIndex = null;
         var _loc3_:int = 0;
         var _loc4_:BattleAbilityDef = null;
         var _loc11_:int = 0;
         if(this.nav)
         {
            this.nav.cleanup();
            this.nav = null;
         }
         if(!this.entity || !param1)
         {
            _loc11_ = 0;
            while(_loc11_ < this._buttons.length)
            {
               this._buttons[_loc11_].visible = false;
               _loc11_++;
            }
            return;
         }
         this.btnToAbl = new Dictionary();
         this.actives.splice(0,this.actives.length);
         this.passives.splice(0,this.passives.length);
         this.nav = new GuiGpNav(context,"pgabl",this);
         this.nav.alwaysHintControls = true;
         this.nav.scale = 1.5;
         this.nav.setAlignNavDefault(GuiGpAlignH.C,GuiGpAlignV.S);
         this.nav.pressOnNavigate = true;
         this._hideTips();
         var _loc5_:int = 0;
         if(this.entity.actives)
         {
            _loc3_ = 0;
            while(_loc3_ < this.entity.actives.numAbilities)
            {
               _loc4_ = this.entity.actives.getAbilityDef(_loc3_) as BattleAbilityDef;
               if(_loc4_.tag == BattleAbilityTag.SPECIAL)
               {
                  if(!_loc4_.pgHide)
                  {
                     this.actives.push(_loc4_);
                     _loc2_ = this.getButton(_loc5_);
                     _loc5_++;
                     this.setupButton(_loc2_,_loc4_);
                     this.nav.add(_loc2_);
                     this.nav.setShowControl(_loc2_,false);
                  }
               }
               _loc3_++;
            }
         }
         if(this.entity.selectAdditionalAbility)
         {
            _loc2_ = this.getButton(_loc5_);
            _loc5_++;
            this.setupButton(_loc2_,null);
            this.nav.add(_loc2_);
            this.nav.setShowControl(_loc2_,false);
            this._showTipAbilitySelect(_loc2_);
         }
         if(this.entity.passives)
         {
            _loc3_ = 0;
            while(_loc3_ < this.entity.passives.numAbilities)
            {
               _loc4_ = this.entity.passives.getAbilityDef(_loc3_) as BattleAbilityDef;
               if(_loc4_.tag == BattleAbilityTag.PASSIVE)
               {
                  this.passives.push(_loc4_);
                  _loc2_ = this.getButton(_loc5_);
                  _loc5_++;
                  this.setupButton(_loc2_,_loc4_);
                  this.nav.add(_loc2_);
                  this.nav.setShowControl(_loc2_,false);
               }
               _loc3_++;
            }
         }
         var _loc6_:int = _loc5_;
         _loc3_ = _loc6_;
         while(_loc3_ < this._buttons.length)
         {
            _loc2_ = this.getButton(_loc3_);
            _loc2_.visible = false;
            _loc3_++;
         }
         var _loc7_:int = 180;
         var _loc8_:int = (_loc6_ - 1) * _loc7_;
         var _loc9_:int = this._textAblNameActive.x + this._textAblNameActive.width / 2;
         var _loc10_:int = _loc8_ / 2;
         _loc3_ = 0;
         while(_loc3_ < _loc6_)
         {
            _loc2_ = this.getButton(_loc3_);
            _loc2_.x = _loc9_ - _loc10_ + _loc7_ * _loc3_;
            _loc3_++;
         }
         this.nav.add(this._buttonClose,false,true,true);
         this.nav.autoSelect();
         this.nav.activate();
         if(this.actives.length > 0)
         {
            this.ability = this.actives[0];
            this.nav.selected = this.getButton(0);
         }
         else if(this.passives.length > 0)
         {
            this.ability = this.passives[0];
            this.nav.selected = this.getButton(0);
         }
         else
         {
            this.ability = null;
            this.nav.selected = null;
         }
      }
      
      private function setupButton(param1:ButtonWithIndex, param2:BattleAbilityDef) : void
      {
         var _loc3_:MovieClip = param1.getChildByName("placeholder") as MovieClip;
         var _loc4_:GuiIcon = param1.getChildByName("icon") as GuiIcon;
         if(_loc4_)
         {
            param1.removeChild(_loc4_);
            _loc4_.release();
            _loc4_ = null;
         }
         this.btnToAbl[param1] = param2;
         var _loc5_:String = "common/ability/icon/icon_select_ability.promotion.png";
         if(param2)
         {
            _loc5_ = param2.iconLargeUrl;
         }
         _loc4_ = context.getIcon(_loc5_);
         if(_loc4_)
         {
            _loc4_.name = "icon";
            param1.addChildAt(_loc4_,0);
            _loc4_.x = _loc3_.x;
            _loc4_.y = _loc3_.y;
         }
         else if(param2)
         {
            context.logger.error("GuiPgAbilityPopup.setupButton ability [" + param2.id + "] has no iconLargeUrl");
         }
         else
         {
            context.logger.error("GuiPgAbilityPopup.setupButton icon [" + _loc5_ + "] not found!");
         }
         _loc3_.visible = false;
         param1.visible = true;
      }
      
      private function getButton(param1:int) : ButtonWithIndex
      {
         return this._buttons[param1];
      }
      
      public function deactivateAbilityPopup() : void
      {
         visible = false;
         GpBinder.gpbinder.removeLayer(this.gplayer);
         GpBinder.gpbinder.unbind(this.cmd_close);
         this.gplayer = 0;
         if(this.nav)
         {
            this.nav.cleanup();
            this.nav = null;
         }
         this.animator.entityDef = null;
         this._button$cancel.visible = false;
         this._button$confirm.visible = false;
         this._abilitySelectControl.visible = false;
         this._abilitySelectIcon.visible = false;
         dispatchEvent(new Event(Event.CLOSE));
         this._hideTips();
      }
      
      public function activateAbilityPopup(param1:IEntityDef) : void
      {
         this.entity = param1;
         visible = true;
         this.gplayer = GpBinder.gpbinder.createLayer("GuiPgAbilityPopup");
         GpBinder.gpbinder.bindPress(GpControlButton.B,this.cmd_close);
         this.gp_b.gplayer = this.gplayer;
         this.gp_b2.gplayer = this.gplayer;
         this.animator.entityDef = this.entity;
         this.showAbilitySelect(false);
         this.updateAbilityPopupButtons(true);
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function hitTestAbilityPopup(param1:Number, param2:Number) : Boolean
      {
         if(!visible)
         {
            return false;
         }
         return hitTestPoint(param1,param2);
      }
      
      public function get ability() : BattleAbilityDef
      {
         return this._ability;
      }
      
      public function set ability(param1:BattleAbilityDef) : void
      {
         var _loc2_:ButtonWithIndex = null;
         var _loc3_:BattleAbilityDef = null;
         this._ability = param1;
         this.setupAnimClip();
         for each(_loc2_ in this._buttons)
         {
            _loc3_ = this.btnToAbl[_loc2_];
            _loc2_.setHovering(_loc3_ == this._ability);
         }
         if(!this._ability)
         {
            return;
         }
         this.updateAbilitySelectIcon();
         this.resetAbilityText();
      }
      
      private function resetAbilityText() : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:IAbilityDefLevel = null;
         var _loc5_:int = 0;
         if(!context || !this._ability)
         {
            return;
         }
         this._textAblDesc.scaleX = this._textAblDesc.scaleY = 1;
         this._textAblDesc.width = this._textAblDescSize.x;
         this._textAblDesc.height = this._textAblDescSize.y;
         this._textAblRanks.y = this._textAblRanksY;
         var _loc1_:String = String(context.translateCategory(this._ability.id + "_pg_desc",LocaleCategory.ABILITY));
         _loc1_ = this._ability.makeSubstitutions(_loc1_,logger);
         this._textAblDesc.htmlText = _loc1_;
         if(this._ability.tag == BattleAbilityTag.PASSIVE)
         {
            this._textAblNamePassive.htmlText = !!this._ability.name ? this._ability.name : "";
            this._textAblNamePassive.visible = true;
            this._$pg_abl_label_passive.visible = true;
            this._$pg_abl_label_active.visible = false;
            this._textAblRanks.visible = false;
            this._textAblNameActive.visible = false;
            this._textAblRank.visible = false;
         }
         else
         {
            this._textAblNameActive.htmlText = !!this._ability.name ? this._ability.name : "";
            _loc2_ = String(context.translateCategory(this._ability.id + "_pg_ranks",LocaleCategory.ABILITY));
            _loc2_ = this._ability.makeSubstitutions(_loc2_,logger);
            this._textAblRanks.htmlText = _loc2_;
            this._textAblRanks.height = this._textAblRanks.textHeight + 5;
            this._textAblRanks.y = this.textAblRanksBottom - this._textAblRanks.height;
            this._textAblNamePassive.visible = false;
            this._$pg_abl_label_passive.visible = false;
            this._$pg_abl_label_active.visible = true;
            this._textAblRanks.visible = true;
            this._textAblNameActive.visible = true;
            _loc3_ = String(context.translate("pg_abl_rank"));
            _loc4_ = !!this.entity.actives ? this.entity.actives.getAbilityDefLevelById(this._ability.id) : null;
            _loc5_ = !!_loc4_ ? int(Math.min(_loc4_.level,this._ability.maxLevel)) : 0;
            _loc3_ = _loc3_.replace("$RANK",_loc5_);
            this._textAblRank.text = _loc3_;
            this._textAblRank.visible = true;
         }
         _context.currentLocale.fixTextFieldFormat(this._textAblRank);
         _context.currentLocale.fixTextFieldFormat(this._textAblNamePassive);
         _context.currentLocale.fixTextFieldFormat(this._textAblNameActive);
         _context.currentLocale.fixTextFieldFormat(this._textAblDesc);
         _context.currentLocale.fixTextFieldFormat(this._textAblRanks,null,null,true);
         if(this._textAblRanks.visible)
         {
            this._textAblRanks.height = this._textAblRanks.textHeight + 5;
            this._textAblRanks.y = this.textAblRanksBottom - this._textAblRanks.height;
         }
         if(this._abilitySelectControl.visible)
         {
            this._$pg_abl_label_passive.visible = false;
            this._$pg_abl_label_active.visible = false;
         }
         GuiUtil.scaleTextToFit2d(this._textAblDesc,this._textAblDescSize.x,this._textAblRanks.y - this._textAblDesc.y - 8);
      }
      
      public function update(param1:int) : void
      {
         if(this.animator)
         {
            this.animator.update(param1);
         }
      }
      
      private function setupAnimClip() : void
      {
         this.animator.createAnimControllerSprite(this.animatorCallbackHandler);
      }
      
      private function animatorCallbackHandler(param1:AnimControllerSpriteFlash) : void
      {
         var _loc2_:int = 0;
         if(this._sprite)
         {
            this._sprite.displayObjectWrapper.removeFromParent();
         }
         this._sprite = param1;
         if(this._sprite)
         {
            this._sprite.displayObjectWrapper.x = this._placeholder_clip.x;
            this._sprite.displayObjectWrapper.y = this._placeholder_clip.y;
            this._sprite.displayObjectWrapper.scale = this._placeholder_clip.scaleX;
            _loc2_ = getChildIndex(this._placeholder_clip);
            addChildAt(this._sprite._sprite,_loc2_);
            if(this._ability)
            {
               if(this._ability.abilityPopupAnimId)
               {
                  this.animator.animId = this._ability.abilityPopupAnimId;
               }
               else if(Boolean(this._ability.id) && this._ability.id.indexOf("pas_") != 0)
               {
                  this.animator.animId = "ability1";
               }
               else
               {
                  this.animator.animId = "mix_idle";
               }
            }
            else
            {
               this.animator.animId = null;
            }
         }
      }
      
      private function cmdfunc_close(param1:CmdExec) : void
      {
         this.deactivateAbilityPopup();
      }
      
      private function showAbilitySelect(param1:Boolean) : void
      {
         var _loc2_:Vector.<String> = null;
         var _loc3_:String = null;
         var _loc4_:BattleAbilityDef = null;
         if(!this.entity || !this.entity.selectAdditionalAbility)
         {
            param1 = false;
         }
         this._button$cancel.visible = param1;
         this._button$confirm.visible = param1;
         this._abilitySelectControl.visible = param1;
         this._abilitySelectIcon.visible = param1;
         this.updateAbilityPopupButtons(!param1);
         this.updateAbilitySelectGpBinding(param1);
         this._buttonClose.visible = !param1;
         if(param1)
         {
            this.abilitiesToSelect.splice(0,this.abilitiesToSelect.length);
            _loc2_ = this.entity.additionalActives;
            if(_loc2_)
            {
               for each(_loc3_ in _loc2_)
               {
                  if(!(Boolean(this.entity.actives) && this.entity.actives.hasAbility(_loc3_)))
                  {
                     _loc4_ = _context.getAbilityDefById(_loc3_) as BattleAbilityDef;
                     this.abilitiesToSelect.push(_loc4_);
                  }
               }
            }
            this._abilitySelectControl.setCount(this.abilitiesToSelect.length);
            this._abilitySelectControl.index = 0;
         }
      }
      
      private function onAbilitySelectChange() : void
      {
         if(!this._abilitySelectControl.visible)
         {
            return;
         }
         if(this._abilitySelectControl.index < 0 || this._abilitySelectControl.index >= this.abilitiesToSelect.length)
         {
            logger.error("GuiPgAbilityPopup.onAbilitySelectChange() index of abilitySelectControl out of bounds!");
            return;
         }
         this.ability = this.abilitiesToSelect[this._abilitySelectControl.index];
      }
      
      private function onCancelAbilitySelect(param1:ButtonWithIndex) : void
      {
         this.showAbilitySelect(false);
      }
      
      private function onConfirmAbilitySelect(param1:ButtonWithIndex) : void
      {
         var _loc2_:int = 7;
         this.entity.addActiveAbilityDefLevel(new AbilityDefLevel(this.abilitiesToSelect[this._abilitySelectControl.index],1 + (this.entity.stats.rank - _loc2_) / 2,_loc2_),_context.logger);
         this.entity.selectAdditionalAbility = false;
         dispatchEvent(new Event(this.EVENT_ABILITY_SELECTED));
         this.showAbilitySelect(false);
      }
      
      private function updateAbilitySelectIcon() : void
      {
         if(!this._abilitySelectIcon.visible)
         {
            return;
         }
         var _loc1_:BattleAbilityDef = this.abilitiesToSelect[this._abilitySelectControl.index];
         var _loc2_:MovieClip = this._abilitySelectIcon.getChildByName("placeholder") as MovieClip;
         var _loc3_:GuiIcon = this._abilitySelectIcon.getChildByName("icon") as GuiIcon;
         if(_loc3_)
         {
            this._abilitySelectIcon.removeChild(_loc3_);
            _loc3_.release();
            _loc3_ = null;
         }
         if(!_loc1_)
         {
            return;
         }
         _loc3_ = context.getIcon(_loc1_.iconLargeUrl);
         if(_loc3_)
         {
            _loc3_.name = "icon";
            this._abilitySelectIcon.addChildAt(_loc3_,0);
            _loc3_.x = _loc2_.x;
            _loc3_.y = _loc2_.y;
         }
         _loc2_.visible = false;
      }
      
      private function updateAbilitySelectGpBinding(param1:Boolean) : void
      {
         if(param1 && !this._abilitySelectGpBound)
         {
            this._abilitySelectGpBound = true;
            GpBinder.gpbinder.bindPress(GpControlButton.A,this.cmd_confirm);
            GpBinder.gpbinder.bindPress(GpControlButton.B,this.cmd_cancel);
         }
         else if(!param1 && this._abilitySelectGpBound)
         {
            this._abilitySelectGpBound = false;
            GpBinder.gpbinder.unbind(this.cmd_confirm);
            GpBinder.gpbinder.unbind(this.cmd_cancel);
         }
      }
      
      private function cmdfunc_cancel(param1:CmdExec) : void
      {
         this.onCancelAbilitySelect(this._button$cancel);
      }
      
      private function cmdfunc_confirm(param1:CmdExec) : void
      {
         this.onConfirmAbilitySelect(this._button$confirm);
      }
      
      private function _showTipAbilitySelect(param1:DisplayObject) : void
      {
         if(this.tutorial_id || !visible || !context || !context.saga)
         {
            return;
         }
         var _loc2_:Boolean = context.saga.getVarBool(SagaVar.VAR_TUT_ABILITY_ABILITY_SELECT);
         if(_loc2_)
         {
            return;
         }
         var _loc3_:String = String(context.translateCategory("tut_ability_ability_select",LocaleCategory.TUTORIAL));
         this.tutorial_id = context.createTutorialPopup(param1,_loc3_,TutorialTooltipAlign.BOTTOM,TutorialTooltipAnchor.BOTTOM,true,false,null);
      }
      
      private function _hideTips() : void
      {
         if(this.tutorial_id)
         {
            context.removeAllTooltips();
            this.tutorial_id = 0;
         }
      }
      
      public function get EVENT_ABILITY_SELECTED() : String
      {
         return "GuiPgAbilityPopup.EVENT_ABILITY_SELECTED";
      }
   }
}
