package game.gui.pages
{
   import engine.core.locale.Locale;
   import engine.saga.ea.EternalArenaChallenge;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   import flash.utils.getTimer;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaTimeHelper
   {
       
      
      private var _challenge:EternalArenaChallenge;
      
      private var _dirty:Boolean = true;
      
      private var _minutesRemaining:int;
      
      public var _context:IGuiContext;
      
      public var _tokenActive:String;
      
      public var _tokenPending:String;
      
      public var _textFieldActive:TextField;
      
      public var _textFieldPending:TextField;
      
      public function GuiSagaEternalArenaTimeHelper(param1:IGuiContext, param2:String, param3:String, param4:TextField, param5:TextField)
      {
         super();
         this._context = param1;
         this._tokenActive = param2;
         this._tokenPending = param3;
         this._textFieldActive = param4;
         this._textFieldPending = param5;
         if(this._textFieldActive)
         {
            this._textFieldActive.visible = false;
            this._textFieldActive.htmlText = "";
         }
         if(this._textFieldPending)
         {
            this._textFieldPending.visible = false;
            this._textFieldPending.htmlText = "";
         }
      }
      
      public function update(param1:int) : void
      {
         if(!this._challenge)
         {
            return;
         }
         this._updateTimes();
      }
      
      public function get minutesRemaining() : int
      {
         return this._minutesRemaining;
      }
      
      public function set minutesRemaining(param1:int) : void
      {
         if(this._minutesRemaining == param1 && !this._dirty)
         {
            return;
         }
         this._minutesRemaining = param1;
         this._updateText_timer();
      }
      
      public function get challenge() : EternalArenaChallenge
      {
         return this._challenge;
      }
      
      public function set challenge(param1:EternalArenaChallenge) : void
      {
         if(this._challenge == param1)
         {
            return;
         }
         this._dirty = true;
         this._challenge = param1;
         this._updateTimes();
         this._updateText_timer();
      }
      
      public function _updateTimes() : void
      {
         var _loc1_:Number = 0;
         if(this._challenge)
         {
            _loc1_ = this._challenge.statusUpdateTimeMs;
         }
         var _loc2_:Number = getTimer();
         var _loc3_:Number = (_loc1_ - _loc2_) / 1000;
         var _loc4_:int = Math.ceil(_loc3_ / 60);
         this.minutesRemaining = _loc4_;
      }
      
      public function makeDirty() : void
      {
         this._dirty = true;
      }
      
      public function get isActive() : Boolean
      {
         return Boolean(this._challenge) && this._challenge.isActive;
      }
      
      public function get isPending() : Boolean
      {
         return Boolean(this._challenge) && this._challenge.isPending;
      }
      
      private function _updateText_timer() : void
      {
         var _loc4_:TextField = null;
         var _loc5_:Date = null;
         var _loc6_:String = null;
         var _loc7_:GuiBase = null;
         if(!this._challenge)
         {
            this._hideOther(null,this._textFieldActive);
            this._hideOther(null,this._textFieldPending);
            this._dirty = false;
            return;
         }
         var _loc1_:Locale = this._context.locale;
         var _loc2_:Boolean = this._challenge.isActive;
         var _loc3_:String = _loc2_ ? this._tokenActive : this._tokenPending;
         _loc4_ = _loc2_ ? this._textFieldActive : this._textFieldPending;
         if(Boolean(_loc3_) && Boolean(_loc4_))
         {
            _loc5_ = this._challenge.absoluteUpdateDate;
            _loc6_ = GuiSagaEternalArenaUtil.generate_timerText(_loc3_,this._minutesRemaining,_loc1_,_loc5_);
            _loc4_.htmlText = _loc6_;
            _loc4_.visible = true;
            _loc7_ = _loc4_.parent as GuiBase;
            if(_loc7_)
            {
               _loc7_.scaleTextField(_loc4_);
            }
         }
         else if(_loc4_)
         {
            _loc4_.visible = false;
         }
         this._hideOther(_loc4_,this._textFieldPending);
         this._hideOther(_loc4_,this._textFieldActive);
         this._dirty = false;
      }
      
      private function _hideOther(param1:DisplayObject, param2:DisplayObject) : void
      {
         if(Boolean(param2) && param2 != param1)
         {
            param2.visible = false;
         }
      }
   }
}
