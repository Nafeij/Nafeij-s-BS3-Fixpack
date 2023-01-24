package game.gui.pages
{
   import engine.saga.Saga;
   import engine.saga.ea.EternalArenaChallenge;
   import flash.text.TextField;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaLeaderboards_timer extends GuiBase
   {
       
      
      private var saga:Saga;
      
      private var _timer_text_active:TextField;
      
      private var _timer_text_pending:TextField;
      
      private var timeHelper:GuiSagaEternalArenaTimeHelper;
      
      private var _challenge:EternalArenaChallenge;
      
      public function GuiSagaEternalArenaLeaderboards_timer()
      {
         super();
         this._timer_text_active = requireGuiChild("timer_text_active") as TextField;
         this._timer_text_pending = requireGuiChild("timer_text_pending") as TextField;
         registerScalableTextfieldAlign(this._timer_text_active);
         registerScalableTextfieldAlign(this._timer_text_pending);
      }
      
      public function cleanup() : void
      {
         super.cleanupGuiBase();
      }
      
      public function init(param1:IGuiContext) : void
      {
         super.initGuiBase(param1,true);
         this.saga = _context.saga;
         this.logger = param1.logger;
         param1.locale.fixTextFieldFormat(this._timer_text_active);
         param1.locale.fixTextFieldFormat(this._timer_text_pending);
         this.timeHelper = new GuiSagaEternalArenaTimeHelper(_context,"ea_lb_timer","ea_lb_timer_pending",this._timer_text_active,this._timer_text_pending);
      }
      
      override public function handleLocaleChange() : void
      {
         super.handleLocaleChange();
         if(this.timeHelper)
         {
            this.timeHelper.makeDirty();
            this.timeHelper._updateTimes();
         }
         context.locale.fixTextFieldFormat(this._timer_text_active);
         context.locale.fixTextFieldFormat(this._timer_text_pending);
         scaleTextfields();
      }
      
      public function update(param1:int) : void
      {
         if(this.timeHelper)
         {
            this.timeHelper.update(param1);
         }
      }
      
      public function refreshGui() : void
      {
         if(!_context)
         {
            return;
         }
      }
      
      public function get challenge() : EternalArenaChallenge
      {
         return this._challenge;
      }
      
      public function set challenge(param1:EternalArenaChallenge) : void
      {
         if(this.timeHelper)
         {
            this.timeHelper.challenge = param1;
         }
         if(this._challenge == param1)
         {
            return;
         }
         this._challenge = param1;
      }
   }
}
