package game.gui.pages
{
   import engine.entity.def.EntityIconType;
   import engine.entity.def.IEntityDef;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import game.gui.GuiIcon;
   import game.gui.GuiStatsTooltip;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaSetup_IconsGlob
   {
      
      public static var mcStatTooltipClazz:Class;
      
      public static var mcNameTooltipClazz:Class;
      
      private static const TOOLTIP_Y_PAD:Number = 100;
       
      
      public var mc:MovieClip;
      
      public var height:int;
      
      public var start_y:int;
      
      public var start_height:int;
      
      public var icons:Vector.<GuiIcon>;
      
      public var oldIcons:Vector.<GuiIcon>;
      
      public var _context:IGuiContext;
      
      private var _statTooltip:GuiStatsTooltip;
      
      private var _nameTooltip:MovieClip;
      
      private var _nameTextField:TextField;
      
      private var _tooltipHolder:MovieClip;
      
      private var __useStatTooltip:Boolean;
      
      private var __useNameTooltip:Boolean;
      
      private var _iconsBottom:int;
      
      public function GuiSagaEternalArenaSetup_IconsGlob(param1:IGuiContext, param2:MovieClip, param3:MovieClip, param4:Boolean = true, param5:Boolean = true)
      {
         this.icons = new Vector.<GuiIcon>();
         super();
         this._context = param1;
         this.mc = param2;
         this.start_y = param2.y;
         this.start_height = param2.height;
         this._tooltipHolder = param3;
         this.__useStatTooltip = param4;
         this.__useNameTooltip = param5;
         if(this._useStatTooltip && Boolean(mcStatTooltipClazz))
         {
            this._statTooltip = new mcStatTooltipClazz() as GuiStatsTooltip;
         }
         if(this._useNameTooltip && Boolean(mcNameTooltipClazz))
         {
            this._nameTooltip = new mcNameTooltipClazz() as GuiSagaEternalArenaSetup_NameTooltip;
            if(this._nameTooltip)
            {
               this._nameTooltip.init(param1);
            }
         }
         if((this._statTooltip || this._nameTooltip) && Boolean(this.mc))
         {
            if(this._statTooltip)
            {
               this._statTooltip.visible = false;
               this._tooltipHolder.addChild(this._statTooltip);
               this._statTooltip.mouseEnabled = false;
               this._statTooltip.mouseChildren = false;
            }
            if(this._nameTooltip)
            {
               this._nameTooltip.visible = false;
               this._tooltipHolder.addChild(this._nameTooltip);
               this._nameTooltip.mouseEnabled = false;
               this._nameTooltip.mouseChildren = false;
            }
            param2.addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         }
      }
      
      private function get _useStatTooltip() : Boolean
      {
         return this.__useStatTooltip && this._tooltipHolder != null;
      }
      
      private function get _useNameTooltip() : Boolean
      {
         return this.__useNameTooltip && this._tooltipHolder != null;
      }
      
      public function cleanup() : void
      {
         if(Boolean(this._statTooltip) || Boolean(this._nameTooltip))
         {
            this.mc.removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         }
         if(this._statTooltip)
         {
            this._tooltipHolder.removeChild(this._statTooltip);
            this._statTooltip.cleanup();
            this._statTooltip = null;
         }
         if(this._nameTooltip)
         {
            this._tooltipHolder.removeChild(this._nameTooltip);
            this._nameTooltip.cleanup();
            this._nameTooltip = null;
         }
         this._removeIcons();
         this._releaseIcons();
      }
      
      public function setPositionY(param1:int) : void
      {
      }
      
      public function addIcon(param1:GuiIcon) : void
      {
      }
      
      private function _removeIcons() : void
      {
         var _loc1_:GuiIcon = null;
         for each(_loc1_ in this.icons)
         {
            if(_loc1_.parent)
            {
               _loc1_.parent.removeChild(_loc1_);
               _loc1_.removeEventListener(MouseEvent.ROLL_OVER,this.onIconMouseOver);
            }
         }
         this.oldIcons = this.icons;
         this.icons = new Vector.<GuiIcon>();
      }
      
      private function _releaseIcons() : void
      {
         var _loc1_:GuiIcon = null;
         for each(_loc1_ in this.oldIcons)
         {
            _loc1_.release();
         }
         this.oldIcons = null;
      }
      
      public function arrangeIcons(param1:Vector.<String>, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:String = null;
         var _loc8_:IEntityDef = null;
         var _loc9_:GuiIcon = null;
         _loc3_ = 64;
         _loc4_ = _loc3_ / 2;
         var _loc5_:int = 800;
         var _loc6_:Point = new Point(0,this.start_height + _loc4_);
         this._iconsBottom = _loc6_.y;
         this._removeIcons();
         if(!param1 || param1.length == 0)
         {
            if(!param2)
            {
               this.mc.visible = false;
            }
            this._releaseIcons();
            return;
         }
         this.mc.visible = true;
         for each(_loc7_ in param1)
         {
            if(_loc6_.x + _loc3_ >= _loc5_)
            {
               _loc6_.x = 0;
               _loc6_.y += _loc3_ + _loc4_;
            }
            _loc8_ = this._context.saga.def.cast.getEntityDefById(_loc7_);
            _loc9_ = this._context.getEntityIcon(_loc8_,EntityIconType.INIT_ORDER);
            _loc9_.addEventListener(MouseEvent.ROLL_OVER,this.onIconMouseOver);
            _loc9_.setTargetSize(_loc3_,_loc3_);
            this.icons.push(_loc9_);
            this.mc.addChild(_loc9_);
            _loc9_.x = _loc6_.x;
            _loc9_.y = _loc6_.y;
            _loc6_.x += _loc3_ + _loc4_;
         }
         this._iconsBottom = _loc6_.y + _loc3_ + _loc4_;
         this._releaseIcons();
      }
      
      private function onIconMouseOver(param1:MouseEvent) : void
      {
         this.handleStatTooltip(param1);
         this.handleNameTooltip(param1);
      }
      
      private function handleNameTooltip(param1:MouseEvent) : void
      {
         if(this._nameTooltip == null)
         {
            return;
         }
         var _loc2_:GuiIcon = param1.target as GuiIcon;
         if(_loc2_ == null)
         {
            return;
         }
         this._nameTooltip.setName(_loc2_.entityDef);
         this._nameTooltip.y = _loc2_.y + this._nameTooltip.height / 2 + _loc2_.height + this.mc.y + this.mc.parent.y - TOOLTIP_Y_PAD;
         this._nameTooltip.x = _loc2_.x + _loc2_.width / 2;
         this._nameTooltip.visible = true;
      }
      
      private function handleStatTooltip(param1:MouseEvent) : void
      {
         if(this._statTooltip == null)
         {
            return;
         }
         var _loc2_:GuiIcon = param1.target as GuiIcon;
         if(_loc2_ == null)
         {
            return;
         }
         this._statTooltip.setEntityValues(_loc2_.entityDef.stats);
         this._statTooltip.x = _loc2_.x - this._statTooltip.width / 2 - _loc2_.width / 2 - 23;
         this._statTooltip.y = _loc2_.y - this._statTooltip.height / 2 - _loc2_.height / 2 + this.mc.y + this.mc.parent.y - TOOLTIP_Y_PAD + 15;
         this._statTooltip.visible = true;
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this._statTooltip)
         {
            this._statTooltip.visible = false;
         }
         if(this._nameTooltip)
         {
            this._nameTooltip.visible = false;
         }
      }
      
      public function place(param1:int) : void
      {
         this.mc.y = Math.max(this.start_y,param1);
      }
      
      public function get bottom() : int
      {
         return this.mc.y + this._iconsBottom;
      }
   }
}
