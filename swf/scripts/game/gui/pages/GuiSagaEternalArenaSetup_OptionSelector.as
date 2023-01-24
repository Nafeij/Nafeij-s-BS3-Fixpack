package game.gui.pages
{
   import engine.core.locale.LocaleCategory;
   import engine.gui.GuiContextEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import game.gui.ButtonWithIndex;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaSetup_OptionSelector extends GuiBase
   {
       
      
      public var nameId:String;
      
      private var choices:Vector.<String>;
      
      private var lastChoices:Vector.<String>;
      
      private var _index:int;
      
      public var selection:String;
      
      private var _text_type:TextField;
      
      private var _text_index:TextField;
      
      private var _text$of:TextField;
      
      private var _text_count:TextField;
      
      private var _text_selection:TextField;
      
      private var _btn_sel_next:ButtonWithIndex;
      
      private var _btn_sel_prev:ButtonWithIndex;
      
      private var callback:Function;
      
      private var hoverCallback:Function;
      
      public var readonly:Boolean;
      
      public var hovering:Boolean;
      
      private var _ignoreChanges:Boolean;
      
      public function GuiSagaEternalArenaSetup_OptionSelector()
      {
         super();
         this._text_type = requireGuiChild("text_type") as TextField;
         this._text_count = requireGuiChild("text_count") as TextField;
         this._text$of = requireGuiChild("text$of") as TextField;
         this._text_index = requireGuiChild("text_index") as TextField;
         this._text_selection = requireGuiChild("text_selection") as TextField;
         registerScalableTextfield(this._text_selection);
         registerScalableTextfield(this._text$of);
         registerScalableTextfield(this._text_type);
         registerScalableTextfield(this._text_count);
         registerScalableTextfield(this._text_index);
         this._btn_sel_next = requireGuiChild("btn_sel_next") as ButtonWithIndex;
         this._btn_sel_prev = requireGuiChild("btn_sel_prev") as ButtonWithIndex;
      }
      
      public function cleanup() : void
      {
         removeEventListener(MouseEvent.MOUSE_OVER,this.mouseOverHandler);
         removeEventListener(MouseEvent.MOUSE_OUT,this.mouseOutHandler);
         removeEventListener(GuiContextEvent.LOCALE,this.localeHandler);
      }
      
      public function init(param1:IGuiContext, param2:Function, param3:Function, param4:Boolean) : void
      {
         super.initGuiBase(param1);
         this.callback = param2;
         this.hoverCallback = param3;
         this._btn_sel_next.guiButtonContext = param1;
         this._btn_sel_prev.guiButtonContext = param1;
         this._btn_sel_next.setDownFunction(this.btnSelNextHandler);
         this._btn_sel_prev.setDownFunction(this.btnSelPrevHandler);
         addEventListener(MouseEvent.MOUSE_OVER,this.mouseOverHandler);
         addEventListener(MouseEvent.MOUSE_OUT,this.mouseOutHandler);
         this._text_selection.visible = true;
         this._btn_sel_next.visible = !param4;
         this._btn_sel_prev.visible = !param4;
         _context.addEventListener(GuiContextEvent.LOCALE,this.localeHandler);
      }
      
      private function localeHandler(param1:GuiContextEvent) : void
      {
         this.updateText();
         this.fixTextFields();
      }
      
      private function fixTextFields() : void
      {
         _context.locale.fixTextFieldFormat(this._text_type);
         _context.locale.fixTextFieldFormat(this._text_index);
         _context.locale.fixTextFieldFormat(this._text$of);
         _context.locale.fixTextFieldFormat(this._text_count);
         _context.locale.fixTextFieldFormat(this._text_selection);
         this._btn_sel_next.handleLocaleChange();
         this._btn_sel_prev.handleLocaleChange();
         scaleTextfields();
      }
      
      public function get textbox() : TextField
      {
         return this._text_selection;
      }
      
      public function get prev() : ButtonWithIndex
      {
         return this._btn_sel_prev;
      }
      
      public function get next() : ButtonWithIndex
      {
         return this._btn_sel_next;
      }
      
      public function setVisible(param1:Boolean) : void
      {
         visible = this._text_selection.visible = param1;
      }
      
      public function get tokenName() : String
      {
         return this.nameId + "_" + this.selection;
      }
      
      public function get tokenDescription() : String
      {
         return this.tokenName + "_d";
      }
      
      public function get localizedName() : String
      {
         return _context.translateCategory(this.tokenName,LocaleCategory.EA_OPT);
      }
      
      public function get localizedDescription() : String
      {
         return _context.translateCategory(this.tokenDescription,LocaleCategory.EA_OPT);
      }
      
      override public function toString() : String
      {
         return "nameId=" + this._index + ":" + this.selection;
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         this.hovering = true;
         this.hoverCallback(this);
      }
      
      private function mouseOutHandler(param1:MouseEvent) : void
      {
         this.hovering = false;
         this.hoverCallback(this);
      }
      
      public function setupOptionSelector(param1:String, param2:Vector.<String>, param3:String) : void
      {
         this.nameId = param1;
         this.choices = param2;
         this._validateValue(param3);
         this.updateText();
      }
      
      private function _validateValue(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc4_:int = 0;
         if(param1)
         {
            _loc4_ = this.choices.indexOf(param1);
            if(_loc4_ >= 0)
            {
               this.index = _loc4_;
               return;
            }
         }
         if(this.index >= 0 && this.index < this.choices.length && this.choices[this.index] == this.selection)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.choices.length)
         {
            if(this.selection == this.choices[_loc3_])
            {
               this.index = _loc3_;
               _loc2_ = true;
               break;
            }
            _loc3_++;
         }
         if(!_loc2_)
         {
            this.index = 0;
            this.selection = this.choices[this.index];
         }
      }
      
      private function btnSelNextHandler(param1:*) : void
      {
         if(this.readonly)
         {
            return;
         }
         this.index = (this.index + 1) % this.choices.length;
      }
      
      private function btnSelPrevHandler(param1:*) : void
      {
         if(this.readonly)
         {
            return;
         }
         this.index = (this.index + this.choices.length - 1) % this.choices.length;
      }
      
      private function updateText() : void
      {
         this.updateText_Type();
         this.updateText_Choice();
         this.fixTextFields();
      }
      
      private function updateText_Choice() : void
      {
         if(this.choices == null)
         {
            return;
         }
         this._text_selection.htmlText = context.translateCategory(this.nameId + "_" + this.selection,LocaleCategory.EA_OPT);
         this._text_count.htmlText = this.choices.length.toString();
         this._text_index.htmlText = (this.index + 1).toString();
      }
      
      private function updateText_Type() : void
      {
         this._text_type.htmlText = context.translateCategory(this.nameId,LocaleCategory.EA_OPT);
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function set index(param1:int) : void
      {
         if(this._index == param1 && this.lastChoices == this.choices)
         {
            return;
         }
         this.lastChoices = this.choices;
         this._index = param1;
         this.selection = this.choices[this._index];
         this.updateText_Choice();
         this.fixTextFields();
         if(!this._ignoreChanges)
         {
            this.callback(this);
         }
      }
   }
}
