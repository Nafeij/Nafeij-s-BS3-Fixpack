package game.gui
{
   import engine.core.locale.IlocaleChangeListener;
   import engine.core.logging.ILogger;
   import engine.core.util.ArrayUtil;
   import engine.gui.GuiContextEvent;
   import engine.gui.GuiUtil;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class GuiBase extends MovieClip implements IlocaleChangeListener
   {
       
      
      protected var _context:IGuiContext;
      
      public var container:DisplayObjectContainer;
      
      public var overs:Dictionary;
      
      private var scalableTextfields:Dictionary;
      
      private var scalableTextfields2d:Dictionary;
      
      public var logger:ILogger;
      
      private var localeChangeChildren:Vector.<IlocaleChangeListener>;
      
      public function GuiBase()
      {
         super();
      }
      
      final public function initGuiBase(param1:IGuiContext, param2:Boolean = false) : void
      {
         if(!param1)
         {
            throw new ArgumentError("GuiBase demands contextuality.");
         }
         if(this._context)
         {
            throw new ArgumentError("GuiBase demands singular init.");
         }
         this._context = param1;
         this.logger = param1.logger;
         addEventListener(MouseEvent.MIDDLE_CLICK,this.eaterHandler);
         addEventListener(MouseEvent.MIDDLE_MOUSE_DOWN,this.eaterHandler);
         addEventListener(MouseEvent.MIDDLE_MOUSE_UP,this.eaterHandler);
         addEventListener(MouseEvent.RIGHT_CLICK,this.eaterHandler);
         addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this.eaterHandler);
         addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this.eaterHandler);
         addEventListener(MouseEvent.DOUBLE_CLICK,this.eaterHandler);
         addEventListener(MouseEvent.CLICK,this.eaterHandler);
         addEventListener(MouseEvent.MOUSE_DOWN,this.eaterHandler);
         addEventListener(MouseEvent.MOUSE_UP,this.eaterHandler);
         if(param2)
         {
            param1.addEventListener(GuiContextEvent.LOCALE,this.localeHandler);
            this.localeHandler(null);
         }
      }
      
      private function localeHandler(param1:GuiContextEvent) : void
      {
         this.handleLocaleChange();
      }
      
      public function cleanupGuiBase() : void
      {
         if(this._context)
         {
            this._context.removeEventListener(GuiContextEvent.LOCALE,this.localeHandler);
         }
         this._context = null;
         this.scalableTextfields = null;
         this.scalableTextfields2d = null;
         this.localeChangeChildren = null;
         this.overs = null;
         this.container = null;
         removeEventListener(MouseEvent.MIDDLE_CLICK,this.eaterHandler);
         removeEventListener(MouseEvent.MIDDLE_MOUSE_DOWN,this.eaterHandler);
         removeEventListener(MouseEvent.MIDDLE_MOUSE_UP,this.eaterHandler);
         removeEventListener(MouseEvent.RIGHT_CLICK,this.eaterHandler);
         removeEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this.eaterHandler);
         removeEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this.eaterHandler);
         removeEventListener(MouseEvent.DOUBLE_CLICK,this.eaterHandler);
         removeEventListener(MouseEvent.CLICK,this.eaterHandler);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.eaterHandler);
         removeEventListener(MouseEvent.MOUSE_UP,this.eaterHandler);
      }
      
      private function eaterHandler(param1:MouseEvent) : void
      {
         this.context.eatEvent(param1);
      }
      
      protected function getGuiChild(param1:String, param2:String = null, param3:Boolean = true) : DisplayObject
      {
         if(!this.context)
         {
            throw new IllegalOperationError("Can\'t do much without a context");
         }
         var _loc4_:DisplayObject = getChildByName(param1);
         if(!_loc4_ && param3)
         {
            throw new ArgumentError("GuiBase " + this + " missing required child " + param1);
         }
         if(!param2)
         {
            param2 = param1;
         }
         if(!(param2 in this))
         {
            throw new ArgumentError("GuiBase " + this + " no such property " + param2);
         }
         this[param2] = _loc4_;
         if(this[param2] != _loc4_)
         {
            throw new ArgumentError("GuiBase " + this + " failed to assign " + param1 + ", was " + _loc4_);
         }
         return _loc4_;
      }
      
      protected function requireGuiChild(param1:String, param2:DisplayObjectContainer = null) : DisplayObject
      {
         if(!param2)
         {
            param2 = this;
         }
         var _loc3_:DisplayObject = this.getChild(param1,param2);
         if(!_loc3_)
         {
            throw new ArgumentError("No such child: " + param1 + " on " + param2.name);
         }
         return _loc3_;
      }
      
      protected function requireGuiDescendant(param1:String, param2:DisplayObjectContainer = null) : DisplayObject
      {
         var _loc6_:int = 0;
         var _loc7_:DisplayObjectContainer = null;
         if(!param2)
         {
            param2 = this;
         }
         var _loc3_:DisplayObject = null;
         var _loc4_:Vector.<DisplayObjectContainer> = new Vector.<DisplayObjectContainer>();
         var _loc5_:DisplayObjectContainer = null;
         _loc4_.push(param2);
         while(_loc4_.length > 0)
         {
            _loc5_ = ArrayUtil.removeAt(_loc4_,0) as DisplayObjectContainer;
            _loc3_ = this.getChild(param1,_loc5_);
            if(_loc3_)
            {
               return _loc3_;
            }
            _loc6_ = 0;
            while(_loc6_ < _loc5_.numChildren)
            {
               _loc7_ = _loc5_.getChildAt(_loc6_) as DisplayObjectContainer;
               if(_loc7_)
               {
                  _loc4_.push(_loc7_);
               }
               _loc6_++;
            }
         }
         if(!_loc3_)
         {
            throw new ArgumentError("No such descendant: " + param1 + " on " + param2.name);
         }
         return _loc3_;
      }
      
      private function getChild(param1:String, param2:DisplayObjectContainer) : DisplayObject
      {
         var _loc3_:DisplayObject = param2[param1] as DisplayObject;
         if(!_loc3_)
         {
            _loc3_ = param2.getChildByName(param1) as DisplayObject;
         }
         return _loc3_;
      }
      
      public function get context() : IGuiContext
      {
         return this._context;
      }
      
      public function get movieClip() : MovieClip
      {
         return this;
      }
      
      public function initContainer(param1:DisplayObjectContainer = null) : void
      {
         if(param1)
         {
            this.container = param1;
         }
         else
         {
            this.container = parent;
         }
         this.computeOverUnders();
      }
      
      private function computeOverUnders() : void
      {
         var _loc2_:DisplayObject = null;
         if(!parent)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < parent.numChildren)
         {
            _loc2_ = parent.getChildAt(_loc1_);
            if(_loc2_ == this)
            {
               this.overs = new Dictionary();
            }
            else if(this.overs)
            {
               this.overs[_loc2_] = _loc2_;
            }
            _loc1_++;
         }
      }
      
      private function computeInsertion() : int
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObject = null;
         if(Boolean(this.container) && Boolean(this.overs))
         {
            _loc1_ = 0;
            while(_loc1_ < this.container.numChildren)
            {
               _loc2_ = this.container.getChildAt(_loc1_);
               if(this.overs[_loc2_])
               {
                  return _loc1_;
               }
               _loc1_++;
            }
         }
         return this.container.numChildren;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         super.visible = param1;
         if(param1)
         {
            if(!parent && Boolean(this.container))
            {
               _loc2_ = this.computeInsertion();
               this.container.addChildAt(this,_loc2_);
            }
         }
         else if(Boolean(parent) && Boolean(this.container))
         {
            parent.removeChild(this);
         }
      }
      
      override public function get visible() : Boolean
      {
         return super.visible;
      }
      
      public function registerScalableTextfield(param1:TextField, param2:Boolean = true) : TextField
      {
         if(param2)
         {
            this.registerScalableTextfieldAlign(param1,"center");
         }
         else
         {
            this.registerScalableTextfieldAlign(param1,null);
         }
         return param1;
      }
      
      public function registerScalableTextfieldAlign(param1:TextField, param2:String = "center") : TextField
      {
         if(!param1)
         {
            return param1;
         }
         if(!this.scalableTextfields)
         {
            this.scalableTextfields = new Dictionary();
         }
         if(this.scalableTextfields[param1])
         {
            return param1;
         }
         var _loc3_:Rectangle = new Rectangle(param1.x,param1.y,param1.width,param1.height);
         this.scalableTextfields[param1] = {
            "x":param1.x,
            "width":param1.width,
            "orig_rect":_loc3_,
            "align":param2
         };
         return param1;
      }
      
      public function changeScaleableWidth(param1:TextField, param2:Number) : void
      {
         var _loc3_:Object = null;
         if(param1)
         {
            _loc3_ = this.scalableTextfields[param1];
            _loc3_.width = param2;
         }
      }
      
      public function registerScalableTextfield2d(param1:TextField, param2:Boolean) : void
      {
         if(!param1)
         {
            return;
         }
         if(!this.scalableTextfields2d)
         {
            this.scalableTextfields2d = new Dictionary();
         }
         if(this.scalableTextfields2d[param1])
         {
            return;
         }
         this.scalableTextfields2d[param1] = {
            "width":param1.width,
            "height":param1.height,
            "cy":param2,
            "x":param1.x
         };
      }
      
      protected function recursiveRegisterScalableTextfields2d(param1:DisplayObject, param2:Boolean) : void
      {
         var _loc5_:int = 0;
         var _loc6_:DisplayObject = null;
         var _loc3_:TextField = param1 as TextField;
         if(_loc3_)
         {
            this.registerScalableTextfield2d(_loc3_,param2);
            return;
         }
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc4_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc4_.numChildren)
            {
               _loc6_ = _loc4_.getChildAt(_loc5_);
               this.recursiveRegisterScalableTextfields2d(_loc6_,param2);
               _loc5_++;
            }
         }
      }
      
      public function scaleTextField(param1:TextField) : void
      {
         var _loc2_:Object = null;
         if(this.scalableTextfields)
         {
            _loc2_ = this.scalableTextfields[param1];
            if(_loc2_)
            {
               this._scaleTextField(param1,_loc2_);
               return;
            }
         }
         if(this.scalableTextfields2d)
         {
            _loc2_ = this.scalableTextfields2d[param1];
            if(_loc2_)
            {
               this._scaleTextField2d(param1,_loc2_);
               return;
            }
         }
      }
      
      private function _scaleTextField(param1:TextField, param2:Object) : void
      {
         var _loc3_:String = null;
         var _loc4_:Rectangle = null;
         param2 = this.scalableTextfields[param1];
         _loc4_ = param2.orig_rect;
         _loc3_ = param2.align;
         GuiUtil.scaleTextToFitAlign(param1,_loc3_,_loc4_);
      }
      
      private function _scaleTextField2d(param1:TextField, param2:Object) : void
      {
         var _loc3_:int = int(param2.width);
         var _loc4_:int = int(param2.w);
         _loc3_ = int(param2.width);
         _loc4_ = int(param2.x);
         var _loc5_:Number = Number(param2.height);
         var _loc6_:Boolean = Boolean(param2.cy);
         GuiUtil.scaleTextToFit2d(param1,_loc3_,_loc5_,_loc6_);
         param1.x = _loc4_;
      }
      
      protected function scaleTextfields() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:Object = null;
         var _loc3_:* = null;
         if(this.scalableTextfields)
         {
            for(_loc3_ in this.scalableTextfields)
            {
               _loc1_ = _loc3_ as TextField;
               _loc2_ = this.scalableTextfields[_loc3_];
               this._scaleTextField(_loc1_,_loc2_);
            }
         }
         if(this.scalableTextfields2d)
         {
            for(_loc3_ in this.scalableTextfields2d)
            {
               _loc2_ = this.scalableTextfields2d[_loc3_];
               _loc1_ = _loc3_ as TextField;
               this._scaleTextField2d(_loc1_,_loc2_);
            }
         }
      }
      
      public function set scale(param1:Number) : void
      {
         this.scaleX = this.scaleY = param1;
      }
      
      public function get scale() : Number
      {
         return this.scaleX;
      }
      
      public function registerLocaleChangeChild(param1:IlocaleChangeListener) : void
      {
         if(!param1)
         {
            throw new ArgumentError("null locale change child for " + this);
         }
         if(!this.localeChangeChildren)
         {
            this.localeChangeChildren = new Vector.<IlocaleChangeListener>();
         }
         this.localeChangeChildren.push(param1);
      }
      
      public function handleLocaleChange() : void
      {
         var _loc1_:IlocaleChangeListener = null;
         if(this.localeChangeChildren)
         {
            for each(_loc1_ in this.localeChangeChildren)
            {
               if(_loc1_)
               {
                  _loc1_.handleLocaleChange();
               }
            }
         }
      }
   }
}
