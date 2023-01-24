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
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaStart_gp
   {
       
      
      private var gui:GuiSagaEternalArenaStart;
      
      private var context:IGuiContext;
      
      private var _nav:GuiGpNav;
      
      private var layer:int;
      
      private var cmd_welcome:Cmd;
      
      private var cmd_back:Cmd;
      
      private var cmd_saved_next:Cmd;
      
      private var cmd_saved_prev:Cmd;
      
      private var gp_a:GuiGpBitmap;
      
      private var gp_b:GuiGpBitmap;
      
      private var gp_l1:GuiGpBitmap;
      
      private var gp_r1:GuiGpBitmap;
      
      public function GuiSagaEternalArenaStart_gp()
      {
         this.cmd_welcome = new Cmd("cmd_etar_welcome",this.cmdfunc_welcome);
         this.cmd_back = new Cmd("cmd_etar_back",this.cmdfunc_back);
         this.cmd_saved_next = new Cmd("cmd_saved_next",this.cmdfunc_saved_next);
         this.cmd_saved_prev = new Cmd("cmd_saved_prev",this.cmdfunc_saved_prev);
         this.gp_a = GuiGp.ctorPrimaryBitmap(GpControlButton.A,true);
         this.gp_b = GuiGp.ctorPrimaryBitmap(GpControlButton.B,true);
         this.gp_l1 = GuiGp.ctorPrimaryBitmap(GpControlButton.L1,true);
         this.gp_r1 = GuiGp.ctorPrimaryBitmap(GpControlButton.R1,true);
         super();
      }
      
      public function cleanup() : void
      {
         GpBinder.gpbinder.unbind(this.cmd_back);
         GpBinder.gpbinder.unbind(this.cmd_welcome);
         GpBinder.gpbinder.unbind(this.cmd_saved_next);
         GpBinder.gpbinder.unbind(this.cmd_saved_prev);
         TweenMax.killDelayedCallsTo(this._placeIcons);
         this.gp_a.cleanup();
         this.gp_b.cleanup();
         this.gp_l1.cleanup();
         this.gp_r1.cleanup();
         if(this._nav)
         {
            this._nav.cleanup();
            this._nav = null;
         }
         GpBinder.gpbinder.removeLayer(this.layer);
         this.layer = 0;
         this.gui = null;
         this.context = null;
      }
      
      public function init(param1:GuiSagaEternalArenaStart) : void
      {
         this.gui = param1;
         this.context = param1.context;
         this._setupNav();
         param1.addChild(this.gp_a);
         param1.addChild(this.gp_b);
         param1.addChild(this.gp_l1);
         param1.addChild(this.gp_r1);
         this.gp_a.scale = this.gp_b.scale = this.gp_l1.scale = this.gp_r1.scale = 1.25;
         this._placeIcons();
      }
      
      private function _setupNav() : void
      {
         this._nav = new GuiGpNav(this.context,"ea_start_nav",this.gui.parent);
         this._nav.alwaysHintControls = true;
         this._nav.add(this.gui.challenge_getter._button_$ea_view_leaderboards);
         this._nav.add(this.gui.challenge_getter._active__button_$ea_view_challenge);
         this._nav.add(this.gui.saved_getter._button_$ea_arena_delete);
         this._nav.add(this.gui.saved_getter._button_$ea_arena_edit);
         this._nav.add(this.gui.saved_getter._button_$ea_arena_play);
         this._nav.add(this.gui.saved_getter._button_$ea_arena_create);
         this._nav.autoSelect();
      }
      
      private function _placeIcons() : void
      {
         GuiGp.placeIcon(this.gui._button$ss_continue,null,this.gp_a,GuiGpAlignH.E,GuiGpAlignV.C,0,0);
         GuiGp.placeIcon(this.gui._buttonClose,null,this.gp_b,GuiGpAlignH.E_RIGHT,GuiGpAlignV.C,-16,0);
         GuiGp.placeIcon(this.gui.saved_getter._btn_saved_prev,null,this.gp_l1,GuiGpAlignH.C,GuiGpAlignV.S_DOWN,0,0);
         GuiGp.placeIcon(this.gui.saved_getter._btn_saved_next,null,this.gp_r1,GuiGpAlignH.C,GuiGpAlignV.S_DOWN,0,0);
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
         GpBinder.gpbinder.removeLayer(this.layer);
         this.updateButtonVisibility();
         if(param1)
         {
            GpBinder.gpbinder.bindPress(GpControlButton.B,this.cmd_back);
            if(this.gui.isWelcoming)
            {
               this.layer = GpBinder.gpbinder.createLayer("etar_welcome");
               GpBinder.gpbinder.bindPress(GpControlButton.A,this.cmd_welcome);
               this.gp_a.gplayer = this.layer;
            }
            this._placeIcons();
            GpBinder.gpbinder.bind(GpControlButton.R1,this.cmd_saved_next);
            GpBinder.gpbinder.bind(GpControlButton.L1,this.cmd_saved_prev);
            TweenMax.delayedCall(0,this._placeIcons);
         }
         else
         {
            GpBinder.gpbinder.unbind(this.cmd_welcome);
            GpBinder.gpbinder.unbind(this.cmd_back);
            GpBinder.gpbinder.unbind(this.cmd_saved_next);
            GpBinder.gpbinder.unbind(this.cmd_saved_prev);
         }
      }
      
      public function updateButtonVisibility() : void
      {
         if(!this.gui)
         {
            return;
         }
         this.gp_b.visible = this.gui.visible;
         this.gp_l1.visible = this.gp_r1.visible = this.gui.visible ? this.gui.saved_getter._saved_present.visible : false;
         this.gp_a.visible = this.gui.visible && this.gui.isWelcoming;
         this._nav.remap();
         if(!this._nav.canSelect(this._nav.selected))
         {
            this._nav.autoSelect(true);
         }
      }
      
      private function cmdfunc_welcome(param1:CmdExec) : void
      {
         if(this.gui)
         {
            this.gui.closeWelcoming();
         }
      }
      
      public function handleWelcomeClosed() : void
      {
         GpBinder.gpbinder.unbind(this.cmd_welcome);
         GpBinder.gpbinder.removeLayer(this.layer);
         this.layer = 0;
         this._placeIcons();
      }
      
      private function cmdfunc_back(param1:CmdExec) : void
      {
         if(this.gui)
         {
            this.gp_b.pulse();
            this.gui._buttonClose.press();
         }
      }
      
      private function cmdfunc_saved_next(param1:CmdExec) : void
      {
         if(param1.param == 0 && Boolean(this.gui))
         {
            this.gp_r1.pulse();
            this.gui.saved_getter._btn_saved_next.press();
         }
      }
      
      private function cmdfunc_saved_prev(param1:CmdExec) : void
      {
         if(param1.param == 0 && Boolean(this.gui))
         {
            this.gp_l1.pulse();
            this.gui.saved_getter._btn_saved_prev.press();
         }
      }
   }
}
