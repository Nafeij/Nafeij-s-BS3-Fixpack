package game.gui.pages
{
   import engine.math.CountedSet;
   import engine.saga.ea.EternalArenaArrangement;
   import engine.saga.ea.EternalArenaOptionFilter;
   import engine.saga.ea.SagaEternalArena;
   import game.gui.ButtonWithIndex;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaSetup_OptionGroup extends GuiBase
   {
       
      
      public var type:String;
      
      public var _optionSelectors:Vector.<GuiSagaEternalArenaSetup_OptionSelector>;
      
      private var _hover:GuiSagaEternalArenaSetup_OptionSelector;
      
      public var _button_randomize:ButtonWithIndex;
      
      public var callback:Function;
      
      private var _updateNavCallback:Function;
      
      private var _allOptions:Vector.<Vector.<Option>>;
      
      public var arrangement:EternalArenaArrangement;
      
      public var readonly:Boolean;
      
      private var optionIds:CountedSet;
      
      private var _displayedOptions:Vector.<Option>;
      
      private var _displayText:String;
      
      public function GuiSagaEternalArenaSetup_OptionGroup()
      {
         this._optionSelectors = new Vector.<GuiSagaEternalArenaSetup_OptionSelector>();
         this._allOptions = new Vector.<Vector.<Option>>();
         this.optionIds = new CountedSet();
         this._displayedOptions = new Vector.<Option>();
         super();
         this._button_randomize = requireGuiChild("button_randomize") as ButtonWithIndex;
         this._button_randomize.setDownFunction(this.buttonRandomizeHandler);
         this._gatherOptionSelectors();
      }
      
      public function cleanup() : void
      {
         var _loc2_:GuiSagaEternalArenaSetup_OptionSelector = null;
         var _loc1_:int = 0;
         while(_loc1_ < this._optionSelectors.length)
         {
            _loc2_ = this._optionSelectors[_loc1_];
            _loc2_.cleanup();
            _loc1_++;
         }
         this._optionSelectors = null;
         this._hover = null;
      }
      
      public function init(param1:IGuiContext, param2:Function, param3:Function, param4:EternalArenaArrangement, param5:Boolean) : void
      {
         var _loc7_:GuiSagaEternalArenaSetup_OptionSelector = null;
         super.initGuiBase(param1);
         this.callback = param2;
         this._updateNavCallback = param3;
         this.arrangement = param4;
         this.readonly = param5;
         this._button_randomize.guiButtonContext = param1;
         var _loc6_:int = 0;
         while(_loc6_ < this._optionSelectors.length)
         {
            _loc7_ = this._optionSelectors[_loc6_];
            _loc7_.init(param1,this.optionSelectorChangedHandler,this.optionSelectorHoverHandler,param5);
            _loc6_++;
         }
         this._button_randomize.visible = !param5;
      }
      
      private function _gatherOptionSelectors() : void
      {
         var _loc2_:String = null;
         var _loc3_:GuiSagaEternalArenaSetup_OptionSelector = null;
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            _loc2_ = "selector_" + _loc1_;
            _loc3_ = getChildByName(_loc2_) as GuiSagaEternalArenaSetup_OptionSelector;
            if(!_loc3_)
            {
               break;
            }
            this._optionSelectors.push(_loc3_);
            this._allOptions.push(new Vector.<Option>());
            _loc1_++;
         }
      }
      
      public function buttonRandomizeHandler(param1:*) : void
      {
         if(this.readonly)
         {
            return;
         }
         var _loc2_:SagaEternalArena = _context.saga.eternalArena;
         _loc2_.initArrangementGroup(this.type,true,this.arrangement);
         this.displayOptions(0);
         this.callback(-1);
         this._updateNavCallback();
      }
      
      public function clear(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:GuiSagaEternalArenaSetup_OptionSelector = null;
         this.type = param1;
         this.setRandomizeToken("ea_randomize_" + param1);
         this.optionIds.reset();
         _loc2_ = 0;
         while(_loc2_ < this._allOptions.length)
         {
            this._allOptions[_loc2_] = new Vector.<Option>();
            _loc2_++;
         }
         this._displayedOptions.splice(0,this._displayedOptions.length);
         _loc2_ = 0;
         while(_loc2_ < this._optionSelectors.length)
         {
            _loc3_ = this._optionSelectors[_loc2_];
            _loc3_.setVisible(false);
            _loc2_++;
         }
      }
      
      public function setRandomizeToken(param1:String) : void
      {
         this._button_randomize.buttonToken = param1;
      }
      
      public function setupOption(param1:String, param2:Vector.<String>, param3:EternalArenaOptionFilter) : void
      {
         var _loc4_:int = this.optionIds.getKeyIndex(param1);
         if(_loc4_ >= this._allOptions.length)
         {
            logger.error("Too many options, we can only suppport " + this._allOptions.length + ", skipping " + param1);
            return;
         }
         var _loc5_:Option = new Option(_loc4_,param1,param2,param3);
         this._allOptions[_loc4_].push(_loc5_);
      }
      
      public function displayOptions(param1:int) : void
      {
         var _loc3_:GuiSagaEternalArenaSetup_OptionSelector = null;
         var _loc4_:Option = null;
         var _loc5_:String = null;
         var _loc2_:int = param1;
         while(_loc2_ < this._optionSelectors.length)
         {
            _loc3_ = this._optionSelectors[_loc2_];
            _loc4_ = this.discoverOption(_loc2_);
            this._displayedOptions[_loc2_] = _loc4_;
            if(!_loc4_)
            {
               this.arrangement.removeValue(this.type,_loc3_.nameId);
               _loc3_.setVisible(false);
            }
            else
            {
               _loc5_ = this.arrangement.getValue(this.type,_loc4_.nameId);
               _loc3_.setupOptionSelector(_loc4_.nameId,_loc4_.choices,_loc5_);
               this.arrangement.setValue(this.type,_loc3_.nameId,_loc3_.selection);
               _loc3_.setVisible(true);
            }
            _loc2_++;
         }
      }
      
      private function discoverOption(param1:int) : Option
      {
         var _loc3_:Option = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._allOptions[param1].length)
         {
            _loc3_ = this._allOptions[param1][_loc2_];
            if(this._checkFilter(_loc3_.filter))
            {
               return _loc3_;
            }
            _loc2_++;
         }
         return null;
      }
      
      private function _checkFilter(param1:EternalArenaOptionFilter) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return param1.checkFilter(this.type,this.arrangement);
      }
      
      private function optionSelectorChangedHandler(param1:GuiSagaEternalArenaSetup_OptionSelector) : void
      {
         var _loc2_:int = this._optionSelectors.indexOf(param1);
         this.callback(_loc2_);
         this.displayOptions(_loc2_ + 1);
         if(this._hover == param1)
         {
            this.displayText = !!this._hover ? this._hover.localizedDescription : null;
         }
         else
         {
            this.displayText = null;
         }
         this._updateNavCallback();
      }
      
      private function optionSelectorHoverHandler(param1:GuiSagaEternalArenaSetup_OptionSelector) : void
      {
         if(param1.hovering)
         {
            this.hover = param1;
         }
         else if(param1 == this._hover)
         {
            this.hover = null;
         }
      }
      
      public function get displayText() : String
      {
         return this._displayText;
      }
      
      public function set displayText(param1:String) : void
      {
         if(this._displayText == param1)
         {
            return;
         }
         this._displayText = param1;
         this.callback(-1);
      }
      
      public function get hover() : GuiSagaEternalArenaSetup_OptionSelector
      {
         return this._hover;
      }
      
      public function set hover(param1:GuiSagaEternalArenaSetup_OptionSelector) : void
      {
         if(this._hover == param1)
         {
            return;
         }
         this._hover = param1;
         this.displayText = !!this._hover ? this._hover.localizedDescription : null;
      }
      
      public function getOptionId(param1:int) : String
      {
         return this._optionSelectors[param1].nameId;
      }
      
      public function getOptionValue(param1:int) : String
      {
         return this._optionSelectors[param1].selection;
      }
   }
}

import engine.saga.ea.EternalArenaOptionFilter;

class Option
{
    
   
   public var index:int;
   
   public var nameId:String;
   
   public var choices:Vector.<String>;
   
   public var filter:EternalArenaOptionFilter;
   
   public function Option(param1:int, param2:String, param3:Vector.<String>, param4:EternalArenaOptionFilter)
   {
      super();
      this.index = param1;
      this.nameId = param2;
      this.choices = param3;
      this.filter = param4;
   }
   
   public function toString() : String
   {
      return this.index + "/" + this.nameId + "/choices=" + this.choices.join(",") + "/filter=" + this.filter;
   }
}
