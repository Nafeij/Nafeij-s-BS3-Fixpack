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
   import game.gui.ButtonWithIndex;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaLeaderboards_gp
   {
       
      
      private var gui:GuiSagaEternalArenaLeaderboards;
      
      private var context:IGuiContext;
      
      private var nav:GuiGpNav;
      
      private var layer:int;
      
      private var cmd_lb_close:Cmd;
      
      private var cmd_lb_prev:Cmd;
      
      private var cmd_lb_next:Cmd;
      
      private var cmd_wiki_press:Cmd;
      
      private var cmd_scope_toggle:Cmd;
      
      private var gp_b:GuiGpBitmap;
      
      private var gp_y:GuiGpBitmap;
      
      private var gp_x:GuiGpBitmap;
      
      private var gp_l1:GuiGpBitmap;
      
      private var gp_r1:GuiGpBitmap;
      
      private var navPlaceholder:ButtonWithIndex;
      
      public function GuiSagaEternalArenaLeaderboards_gp()
      {
         this.cmd_lb_close = new Cmd("cmd_ea_lb_prev",this.cmdfunc_lb_close);
         this.cmd_lb_prev = new Cmd("cmd_ea_lb_prev",this.cmdfunc_lb_prev);
         this.cmd_lb_next = new Cmd("cmd_ea_lb_next",this.cmdfunc_lb_next);
         this.cmd_wiki_press = new Cmd("cmd_ea_wiki_press",this.cmdfunc_wiki_press);
         this.cmd_scope_toggle = new Cmd("cmd_ea_scope_toggle",this.cmdfunc_scope_toggle);
         this.gp_b = GuiGp.ctorPrimaryBitmap(GpControlButton.B,true);
         this.gp_y = GuiGp.ctorPrimaryBitmap(GpControlButton.Y,true);
         this.gp_x = GuiGp.ctorPrimaryBitmap(GpControlButton.X,true);
         this.gp_l1 = GuiGp.ctorPrimaryBitmap(GpControlButton.L1,true);
         this.gp_r1 = GuiGp.ctorPrimaryBitmap(GpControlButton.R1,true);
         super();
      }
      
      public function cleanup() : void
      {
         TweenMax.killDelayedCallsTo(this._placeIcons);
         GpBinder.gpbinder.unbind(this.cmd_lb_next);
         GpBinder.gpbinder.unbind(this.cmd_lb_prev);
         GpBinder.gpbinder.unbind(this.cmd_wiki_press);
         GpBinder.gpbinder.unbind(this.cmd_scope_toggle);
         GpBinder.gpbinder.unbind(this.cmd_lb_close);
         this.gp_b.cleanup();
         this.gp_y.cleanup();
         this.gp_x.cleanup();
         this.gp_l1.cleanup();
         this.gp_r1.cleanup();
         if(this.nav)
         {
            this.nav.cleanup();
            this.nav = null;
         }
         GpBinder.gpbinder.removeLayer(this.layer);
         this.layer = 0;
         this.gui = null;
         this.context = null;
      }
      
      public function init(param1:GuiSagaEternalArenaLeaderboards) : void
      {
         this.gui = param1;
         this.context = param1.context;
         param1.addChild(this.gp_b);
         param1.addChild(this.gp_y);
         param1.addChild(this.gp_x);
         param1.addChild(this.gp_l1);
         param1.addChild(this.gp_r1);
         this.gp_b.scale = this.gp_x.scale = this.gp_y.scale = this.gp_l1.scale = this.gp_r1.scale = 1.25;
         this.createNav();
      }
      
      private function createNav() : void
      {
         if(this.nav)
         {
            this.nav.cleanup();
         }
         this.nav = new GuiGpNav(this.context,"survival_leaderboard",this.gui.parent);
         this.nav.orientation = GuiGpNav.ORIENTATION_VERTICAL;
         this.nav.setCallbackNavigate(this.handleNavigate);
         this.navPlaceholder = new ButtonWithIndex();
         this.gui.addChild(this.navPlaceholder);
         this.nav.add(this.navPlaceholder);
         this.gui._lbs.addNavs(this.nav);
      }
      
      public function updateNav() : void
      {
         this.navPlaceholder.enabled = !this.gui._lbs.isRowVisible;
         this.nav.remap();
         this.nav.autoSelect();
      }
      
      private function handleNavigate(param1:int, param2:int, param3:Boolean) : Boolean
      {
         if(param1 == 1)
         {
            this.gui._lbs.pressNext();
            return true;
         }
         if(param1 == 3)
         {
            this.gui._lbs.pressPrev();
            return true;
         }
         return false;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(!this.gui)
         {
            return;
         }
         GpBinder.gpbinder.removeLayer(this.layer);
         if(param1)
         {
            this.layer = GpBinder.gpbinder.createLayer("ss_lb");
            this.gp_b.gplayer = this.gp_y.gplayer = this.gp_x.gplayer = this.gp_l1.gplayer = this.gp_r1.gplayer = this.layer;
            GpBinder.gpbinder.bindPress(GpControlButton.R1,this.cmd_lb_next);
            GpBinder.gpbinder.bindPress(GpControlButton.L1,this.cmd_lb_prev);
            GpBinder.gpbinder.bindPress(GpControlButton.X,this.cmd_wiki_press);
            GpBinder.gpbinder.bindPress(GpControlButton.Y,this.cmd_scope_toggle);
            GpBinder.gpbinder.bindPress(GpControlButton.B,this.cmd_lb_close);
            this._placeIcons();
            TweenMax.delayedCall(0,this._placeIcons);
            if(this.nav)
            {
               this.nav.activate();
            }
         }
         else
         {
            GpBinder.gpbinder.unbind(this.cmd_lb_next);
            GpBinder.gpbinder.unbind(this.cmd_lb_prev);
            GpBinder.gpbinder.unbind(this.cmd_wiki_press);
            GpBinder.gpbinder.unbind(this.cmd_scope_toggle);
            GpBinder.gpbinder.unbind(this.cmd_lb_close);
            if(this.nav)
            {
               this.nav.deactivate();
            }
         }
         this.gp_b.visible = this.gp_x.visible = this.gp_y.visible = this.gp_l1.visible = this.gp_r1.visible = param1;
      }
      
      private function _placeIcons() : void
      {
         GuiGp.placeIcon(this.gui._buttonClose,null,this.gp_b,GuiGpAlignH.E_RIGHT,GuiGpAlignV.C,-16,0);
         this.gui._lbs.placeGpNavIcons(this.gp_l1,this.gp_r1);
         GuiGp.placeIcon(this.gui._button_$ss_lb_global,null,this.gp_y,GuiGpAlignH.E_LEFT,GuiGpAlignV.C,40,0);
         GuiGp.placeIcon(this.gui._btn_wiki$ea_wiki,null,this.gp_x,GuiGpAlignH.W_LEFT,GuiGpAlignV.N_UP,10,-105);
      }
      
      private function cmdfunc_lb_prev(param1:CmdExec) : void
      {
         this.gp_l1.pulse();
         this.gui._lbs.pressPrev();
      }
      
      private function cmdfunc_lb_next(param1:CmdExec) : void
      {
         this.gp_r1.pulse();
         this.gui._lbs.pressNext();
      }
      
      private function cmdfunc_lb_close(param1:CmdExec) : void
      {
         this.gp_b.pulse();
         this.gui._buttonClose.press();
      }
      
      private function cmdfunc_scope_toggle(param1:CmdExec) : void
      {
         this.gp_y.pulse();
         this.gui.global = !this.gui.global;
      }
      
      private function cmdfunc_wiki_press(param1:CmdExec) : void
      {
         this.gp_x.pulse();
         this.gui._btn_wiki$ea_wiki.press();
      }
   }
}
