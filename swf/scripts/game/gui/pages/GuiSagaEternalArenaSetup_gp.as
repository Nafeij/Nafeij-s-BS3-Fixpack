package game.gui.pages
{
   import com.greensock.TweenMax;
   import engine.core.cmd.Cmd;
   import engine.core.cmd.CmdExec;
   import engine.core.gp.GpBinder;
   import engine.core.gp.GpControlButton;
   import engine.gui.GuiGp;
   import engine.gui.GuiGpAlignH;
   import engine.gui.GuiGpAlignV;
   import engine.gui.GuiGpBitmap;
   import engine.gui.GuiGpNav;
   import flash.display.DisplayObject;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaSetup_gp
   {
       
      
      private var gui:GuiSagaEternalArenaSetup;
      
      private var context:IGuiContext;
      
      private var _nav:GuiGpNav;
      
      private var cmd_back:Cmd;
      
      private var cmd_prev:Cmd;
      
      private var cmd_next:Cmd;
      
      private var gp_b:GuiGpBitmap;
      
      private var gp_l1:GuiGpBitmap;
      
      private var gp_r1:GuiGpBitmap;
      
      public function GuiSagaEternalArenaSetup_gp()
      {
         this.cmd_back = new Cmd("cmd_ea_setup_back",this.cmdfunc_back);
         this.cmd_prev = new Cmd("cmd_ea_setup_prev",this.cmdfunc_prev);
         this.cmd_next = new Cmd("cmd_ea_setup_next",this.cmdfunc_next);
         this.gp_b = GuiGp.ctorPrimaryBitmap(GpControlButton.B,true);
         this.gp_l1 = GuiGp.ctorPrimaryBitmap(GpControlButton.L1,true);
         this.gp_r1 = GuiGp.ctorPrimaryBitmap(GpControlButton.R1,true);
         super();
      }
      
      public function cleanup() : void
      {
         GpBinder.gpbinder.unbind(this.cmd_back);
         GpBinder.gpbinder.unbind(this.cmd_prev);
         GpBinder.gpbinder.unbind(this.cmd_next);
         TweenMax.killDelayedCallsTo(this._placeIcons);
         this.gp_b.cleanup();
         this.gp_r1.cleanup();
         this.gp_l1.cleanup();
         if(this._nav)
         {
            this._nav.cleanup();
            this._nav = null;
         }
         this.gui = null;
         this.context = null;
      }
      
      public function init(param1:GuiSagaEternalArenaSetup) : void
      {
         this.gui = param1;
         this.context = param1.context;
         param1.addChild(this.gp_b);
         param1.addChild(this.gp_r1);
         param1.addChild(this.gp_l1);
         this.gp_b.scale = this.gp_r1.scale = this.gp_l1.scale = 1.25;
         this._setupNav();
         this._placeIcons();
      }
      
      private function _setupNav() : void
      {
         this._nav = new GuiGpNav(this.context,"ea_setup_nav",this.gui.parent);
         var _loc1_:int = 0;
         while(_loc1_ < this.gui._optionGroup._optionSelectors.length)
         {
            if(this.gui._optionGroup._optionSelectors[_loc1_].prev.visible && this.gui._optionGroup._optionSelectors[_loc1_].prev.visible)
            {
               this._nav.add(this.gui._optionGroup._optionSelectors[_loc1_].textbox);
            }
            _loc1_++;
         }
         this._nav.add(this.gui._tabGroup._btn_tab_board);
         this._nav.add(this.gui._tabGroup._btn_tab_combatants);
         this._nav.add(this.gui._tabGroup._btn_tab_rules);
         this._nav.add(this.gui._button_$ea_arena_play);
         this._nav.add(this.gui._button_$ea_arena_save);
         this._nav.add(this.gui._rosterDownArrow);
         this._nav.add(this.gui._rosterUpArrow);
         this._nav.add(this.gui._optionGroup._button_randomize);
         this._nav.setCallbackPress(this._onNavPress);
         this._nav.setCallbackPostNavigate(this._onPostNavigate);
         this._nav.autoSelect();
      }
      
      private function _placeIcons() : void
      {
         this.updateButtonVisibility();
      }
      
      private function _onNavPress(param1:DisplayObject, param2:Boolean) : void
      {
         this._checkIfNavNeedsRemapping();
      }
      
      private function _checkIfNavNeedsRemapping() : void
      {
         if(this._isNavSelectingTabBar())
         {
            this.remapNavState();
         }
      }
      
      public function remapNavState() : void
      {
         if(this._nav)
         {
            this._nav.remap();
         }
      }
      
      private function _onPostNavigate() : void
      {
         this.updateButtonVisibility();
      }
      
      private function _isNavSelectingTabBar() : Boolean
      {
         return Boolean(this._nav) && (this._nav.selected == this.gui._tabGroup._btn_tab_board || this._nav.selected == this.gui._tabGroup._btn_tab_combatants || this._nav.selected == this.gui._tabGroup._btn_tab_rules);
      }
      
      private function _getShoulderButtons() : Object
      {
         var _loc2_:int = 0;
         var _loc1_:Object = new Object();
         if(this._nav)
         {
            if(this._isNavSelectingTabBar())
            {
               _loc1_.left = this.gui._tabGroup._btn_tab_prev;
               _loc1_.right = this.gui._tabGroup._btn_tab_next;
            }
            else
            {
               _loc2_ = 0;
               while(_loc2_ < this.gui._optionGroup._optionSelectors.length)
               {
                  if(this._nav.selected == this.gui._optionGroup._optionSelectors[_loc2_].textbox)
                  {
                     _loc1_.left = this.gui._optionGroup._optionSelectors[_loc2_].prev;
                     _loc1_.right = this.gui._optionGroup._optionSelectors[_loc2_].next;
                  }
                  _loc2_++;
               }
            }
         }
         return _loc1_;
      }
      
      private function _updateShoulderIconPlacement(param1:Object = null) : void
      {
         var _loc2_:Object = null;
         if(param1 == null)
         {
            param1 = this._nav.selected;
         }
         _loc2_ = this._getShoulderButtons();
         if(_loc2_ && _loc2_.left && Boolean(_loc2_.right))
         {
            this.gp_l1.visible = this.gp_r1.visible = true;
            GuiGp.placeIcon(_loc2_.left,null,this.gp_l1,GuiGpAlignH.W_LEFT,GuiGpAlignV.C,0,0);
            GuiGp.placeIcon(_loc2_.right,null,this.gp_r1,GuiGpAlignH.E_RIGHT,GuiGpAlignV.C,0,0);
         }
         else
         {
            this.gp_l1.visible = this.gp_r1.visible = false;
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this._nav)
         {
            if(param1)
            {
               this._nav.activate();
            }
            else
            {
               this._nav.deactivate();
            }
         }
         if(!this.gui)
         {
            return;
         }
         this.updateButtonVisibility();
         if(param1)
         {
            GpBinder.gpbinder.bindPress(GpControlButton.B,this.cmd_back);
            GpBinder.gpbinder.bindPress(GpControlButton.R1,this.cmd_next);
            GpBinder.gpbinder.bindPress(GpControlButton.L1,this.cmd_prev);
            this._placeIcons();
            TweenMax.delayedCall(0,this._placeIcons);
         }
         else
         {
            GpBinder.gpbinder.unbind(this.cmd_back);
            GpBinder.gpbinder.unbind(this.cmd_next);
            GpBinder.gpbinder.unbind(this.cmd_prev);
         }
      }
      
      public function setNavState(param1:Boolean) : void
      {
         if(this._nav)
         {
            if(param1)
            {
               this._nav.activate();
            }
            else
            {
               this._nav.deactivate();
            }
         }
      }
      
      public function updateButtonVisibility() : void
      {
         if(!this.gui)
         {
            return;
         }
         GuiGp.placeIcon(this.gui._buttonClose,null,this.gp_b,GuiGpAlignH.E_RIGHT,GuiGpAlignV.C,0,0);
         this._updateShoulderIconPlacement();
      }
      
      private function cmdfunc_back(param1:CmdExec) : void
      {
         this.gp_b.pulse();
         this.gui._buttonClose.press();
      }
      
      private function cmdfunc_prev(param1:CmdExec) : void
      {
         var _loc2_:Object = this._getShoulderButtons();
         if(_loc2_ && _loc2_.left && Boolean(_loc2_.left.visible))
         {
            this.gp_l1.pulse();
            _loc2_.left.press();
            this._checkIfNavNeedsRemapping();
         }
      }
      
      private function cmdfunc_next(param1:CmdExec) : void
      {
         var _loc2_:Object = this._getShoulderButtons();
         if(_loc2_ && _loc2_.right && Boolean(_loc2_.right.visible))
         {
            this.gp_r1.pulse();
            _loc2_.right.press();
            this._checkIfNavNeedsRemapping();
         }
      }
   }
}
