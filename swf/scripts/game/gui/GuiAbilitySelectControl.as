package game.gui
{
   import engine.gui.StickFlicker;
   
   public class GuiAbilitySelectControl extends GuiBase
   {
       
      
      public var chitsGroup:GuiChitsGroup;
      
      public var leftBtn:ButtonWithIndex;
      
      public var rightBtn:ButtonWithIndex;
      
      private var _onAbilitySelectionChanged:Function;
      
      private var _gp_bound:Boolean = false;
      
      private var _gp_flicker:StickFlicker;
      
      public function GuiAbilitySelectControl()
      {
         super();
         this.chitsGroup = requireGuiChild("chits") as GuiChitsGroup;
         this.leftBtn = requireGuiChild("left") as ButtonWithIndex;
         this.rightBtn = requireGuiChild("right") as ButtonWithIndex;
      }
      
      public function init(param1:IGuiContext, param2:Function) : void
      {
         super.initGuiBase(param1);
         this.chitsGroup.init(param1);
         this.leftBtn.guiButtonContext = param1;
         this.rightBtn.guiButtonContext = param1;
         this.leftBtn.setDownFunction(this.onLeftBtnDown);
         this.rightBtn.setDownFunction(this.onRightBtnDown);
         this._onAbilitySelectionChanged = param2;
         this._gp_flicker = new StickFlicker(this.flickHandler,true,true,"gpnav_GuiAbilitySelectControl",param1.logger);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            this._bindGpControls();
         }
         else
         {
            this._unbindGpControls();
         }
      }
      
      public function setCount(param1:int) : void
      {
         this.chitsGroup.numVisibleChits = param1;
      }
      
      public function set index(param1:int) : void
      {
         this.chitsGroup.activeChitIndex = param1;
         this._onAbilitySelectionChanged();
      }
      
      public function get index() : int
      {
         return this.chitsGroup.activeChitIndex;
      }
      
      public function cleanup() : void
      {
         this.leftBtn.cleanup();
         this.rightBtn.cleanup();
         this.chitsGroup.cleanupGuiBase();
         cleanupGuiBase();
      }
      
      private function onLeftBtnDown(param1:ButtonWithIndex) : void
      {
         this.chitsGroup.prevChit();
         this._onAbilitySelectionChanged();
      }
      
      private function onRightBtnDown(param1:ButtonWithIndex) : void
      {
         this.chitsGroup.nextChit();
         this._onAbilitySelectionChanged();
      }
      
      private function _bindGpControls() : void
      {
         if(!this._gp_bound)
         {
            this._gp_bound = true;
            this._gp_flicker.enabled = true;
         }
      }
      
      private function _unbindGpControls() : void
      {
         if(this._gp_bound)
         {
            this._gp_bound = false;
            this._gp_flicker.enabled = false;
         }
      }
      
      private function flickHandler(param1:StickFlicker, param2:int) : void
      {
         var _loc3_:int = Math.abs(param2);
         if(_loc3_ < 45)
         {
            this.onRightBtnDown(null);
         }
         else if(_loc3_ > 135)
         {
            this.onLeftBtnDown(null);
         }
      }
   }
}
