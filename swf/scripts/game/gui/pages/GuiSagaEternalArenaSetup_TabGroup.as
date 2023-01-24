package game.gui.pages
{
   import game.gui.ButtonWithIndex;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaSetup_TabGroup extends GuiBase
   {
       
      
      public var tabs:Vector.<ButtonWithIndex>;
      
      public var index:int = 0;
      
      public var _btn_tab_board:ButtonWithIndex;
      
      public var _btn_tab_rules:ButtonWithIndex;
      
      public var _btn_tab_combatants:ButtonWithIndex;
      
      public var _btn_tab_prev:ButtonWithIndex;
      
      public var _btn_tab_next:ButtonWithIndex;
      
      private var _callback:Function;
      
      public function GuiSagaEternalArenaSetup_TabGroup()
      {
         this.tabs = new Vector.<ButtonWithIndex>();
         super();
         this._btn_tab_board = requireGuiChild("btn_tab__board") as ButtonWithIndex;
         this._btn_tab_rules = requireGuiChild("btn_tab__rules") as ButtonWithIndex;
         this._btn_tab_combatants = requireGuiChild("btn_tab__combatants") as ButtonWithIndex;
         this._btn_tab_prev = requireGuiChild("btn_tab_prev") as ButtonWithIndex;
         this._btn_tab_next = requireGuiChild("btn_tab_next") as ButtonWithIndex;
      }
      
      public function init(param1:IGuiContext, param2:Function) : void
      {
         super.initGuiBase(param1);
         this._callback = param2;
         this.addTab(this._btn_tab_board);
         this.addTab(this._btn_tab_rules);
         this.addTab(this._btn_tab_combatants);
         this._btn_tab_prev.guiButtonContext = _context;
         this._btn_tab_next.guiButtonContext = _context;
         this._btn_tab_prev.setDownFunction(this.tabPrevHandler);
         this._btn_tab_next.setDownFunction(this.tabNextHandler);
         this.tabs[0].press();
      }
      
      public function cleanup() : void
      {
         var _loc1_:ButtonWithIndex = null;
         this._callback = null;
         this._btn_tab_prev.cleanup();
         this._btn_tab_next.cleanup();
         this._btn_tab_prev = null;
         this._btn_tab_next = null;
         for each(_loc1_ in this.tabs)
         {
            _loc1_.cleanup();
         }
         this.tabs = null;
      }
      
      public function addTab(param1:ButtonWithIndex) : void
      {
         param1.toggled = this.tabs.length == this.index;
         this.tabs.push(param1);
         param1.isToggle = true;
         param1.setDownFunction(this.tabPressedHandler);
      }
      
      public function tabNextHandler(param1:*) : void
      {
         this.index = Math.min(this.index + 1,this.tabs.length - 1);
         this.tabs[this.index].press();
      }
      
      public function tabPrevHandler(param1:*) : void
      {
         this.index = Math.max(this.index - 1,0);
         this.tabs[this.index].press();
      }
      
      private function tabPressedHandler(param1:*) : void
      {
         var _loc2_:ButtonWithIndex = null;
         for each(_loc2_ in this.tabs)
         {
            _loc2_.toggled = _loc2_ == param1;
         }
         this.index = this.tabs.indexOf(param1);
         if(null != this._callback)
         {
            this._callback(param1);
         }
      }
   }
}
