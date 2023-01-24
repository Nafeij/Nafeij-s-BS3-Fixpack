package game.gui.pages
{
   import com.greensock.TweenMax;
   import engine.core.render.BoundedCamera;
   import engine.gui.GuiContextEvent;
   import engine.saga.ea.EternalArenaChallenge;
   import engine.saga.ea.SagaEternalArena;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   import game.gui.page.IGuiChallengeWarning;
   
   public class GuiSagaEternalArenaSetup_ChallengeWarning extends GuiBase implements IGuiChallengeWarning
   {
       
      
      private var _textField:TextField;
      
      private var _timeHelper:GuiSagaEternalArenaTimeHelper;
      
      private var _challenge:EternalArenaChallenge;
      
      private var _originalChallenge:EternalArenaChallenge;
      
      private var _showing:Boolean;
      
      private var _inY:Number;
      
      private var _outY:Number;
      
      private var _lastMinutes:int = -1;
      
      private var _authorSize:Point;
      
      public function GuiSagaEternalArenaSetup_ChallengeWarning()
      {
         this._authorSize = new Point(400,288.5);
         super();
         this._textField = requireGuiChild("text") as TextField;
         registerScalableTextfield(this._textField);
      }
      
      private function handleLocale(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(!visible || !this._textField || !this._timeHelper)
         {
            return;
         }
         if(Boolean(this._originalChallenge) && this._originalChallenge != this._challenge)
         {
            this._textField.htmlText = _context.locale.translateGui("ea_challenge_over");
         }
         else
         {
            _loc2_ = Math.max(this._timeHelper.minutesRemaining,0);
            this._textField.htmlText = GuiSagaEternalArenaUtil.generate_timerText("ea_end_timer",_loc2_,_context.locale,null);
         }
         _context.locale.fixTextFieldFormat(this._textField);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this;
      }
      
      public function init(param1:IGuiContext) : void
      {
         initGuiBase(param1,true);
         _context.addEventListener(GuiContextEvent.LOCALE,this.handleLocale);
         this._timeHelper = new GuiSagaEternalArenaTimeHelper(_context,null,null,null,null);
         _context.saga.eternalArena.addEventListener(SagaEternalArena.EVENT_CHALLENGE,this.challengeHandler);
         this._originalChallenge = _context.saga.eternalArena.challenge;
         this.challengeHandler(null);
         this.handleLocale(null);
         visible = false;
         this._inY = y;
         this._outY = y - height;
         y = this._outY;
      }
      
      public function cleanup() : void
      {
         _context.saga.eternalArena.removeEventListener(SagaEternalArena.EVENT_CHALLENGE,this.challengeHandler);
         _context.removeEventListener(GuiContextEvent.LOCALE,this.handleLocale);
         cleanupGuiBase();
      }
      
      private function challengeHandler(param1:Event) : void
      {
         if(this._originalChallenge == null)
         {
            this._originalChallenge = _context.saga.eternalArena.challenge;
         }
         this._challenge = _context.saga.eternalArena.challenge;
         this._timeHelper.challenge = this._challenge;
      }
      
      public function update(param1:int) : void
      {
         if(!this._timeHelper)
         {
            return;
         }
         this._timeHelper.update(param1);
         if(Boolean(this._challenge) && this._challenge.isPending)
         {
            this.showWarning(false);
         }
         else if(Boolean(this._challenge) && this._timeHelper.minutesRemaining <= 30)
         {
            this.showWarning(true);
            if(this._lastMinutes != this._timeHelper.minutesRemaining)
            {
               this.handleLocale(null);
            }
            this._lastMinutes = this._timeHelper.minutesRemaining;
         }
         else if(Boolean(this._originalChallenge) && this._originalChallenge != this._challenge)
         {
            this.showWarning(true);
         }
         else
         {
            this.showWarning(false);
         }
      }
      
      private function showWarning(param1:Boolean) : void
      {
         if(param1 == this._showing)
         {
            return;
         }
         this._showing = param1;
         if(param1)
         {
            this.animateIn();
         }
         else
         {
            this.animateOut();
         }
      }
      
      private function animateIn() : void
      {
         TweenMax.killTweensOf(this);
         this.setVisible(true);
         TweenMax.to(this,0.2,{"y":this._inY});
      }
      
      private function animateOut() : void
      {
         TweenMax.killTweensOf(this);
         TweenMax.to(this,0.2,{
            "y":this._outY,
            "onComplete":this.setVisible,
            "onCompleteParams":[false]
         });
      }
      
      private function setVisible(param1:Boolean) : void
      {
         visible = param1;
         this.handleLocale(null);
      }
      
      public function resizeHandler(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / 4;
         var _loc4_:Number = param2;
         var _loc5_:Number = BoundedCamera.computeFitScale(_loc3_,_loc4_,this.authorSize.x,this.authorSize.y);
         _loc5_ = Math.min(1,_loc5_);
         scaleX = scaleY = _loc5_;
         x = param1 - width;
      }
      
      public function get authorSize() : Point
      {
         return this._authorSize;
      }
   }
}
