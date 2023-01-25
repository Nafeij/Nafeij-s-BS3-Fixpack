package game.gui.battle
{
   import engine.core.locale.LocaleCategory;
   import engine.core.util.StringUtil;
   import engine.saga.SagaVar;
   import flash.text.TextField;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   
   public class GuiEAScoreElement extends GuiBase
   {
      
      public static var mcClazz:Class;
       
      
      private var _text:TextField;
      
      private var _textKey:String;
      
      private var _scoreId:String;
      
      private var _score:TextField;
      
      private var _scoreValue:int;
      
      public function GuiEAScoreElement()
      {
         super();
         this._text = requireGuiChild("text") as TextField;
         this._score = requireGuiChild("score") as TextField;
      }
      
      public function init(param1:IGuiContext) : void
      {
         initGuiBase(param1,true);
      }
      
      public function cleanup() : void
      {
         cleanupGuiBase();
      }
      
      public function setText(param1:String, param2:String = null) : void
      {
         var _loc4_:int = 0;
         this._textKey = param1;
         this._scoreId = param2;
         var _loc3_:String = String(context.locale.translateGui(param1));
         switch(param1)
         {
            case "ea_score_bonus_rule":
               if(this._scoreId)
               {
                  _loc3_ = _loc3_.replace("{score_id}",context.locale.translate(LocaleCategory.EA_OPT,this._scoreId));
               }
               break;
            case "ea_score_difficulty":
               _loc4_ = context.saga.getVarInt(SagaVar.VAR_DIFFICULTY);
               switch(_loc4_)
               {
                  case 1:
                     _loc3_ = _loc3_.replace("{difficulty}",context.locale.translate(LocaleCategory.EA_OPT,"difficulty_easy"));
                     break;
                  case 2:
                     _loc3_ = _loc3_.replace("{difficulty}",context.locale.translate(LocaleCategory.EA_OPT,"difficulty_medium"));
                     break;
                  case 3:
                     _loc3_ = _loc3_.replace("{difficulty}",context.locale.translate(LocaleCategory.EA_OPT,"difficulty_hard"));
               }
         }
         this._text.htmlText = _loc3_;
         context.locale.fixTextFieldFormat(this._text);
      }
      
      public function setScore(param1:int) : void
      {
         this._scoreValue = param1;
         this._score.htmlText = param1 < 0 ? "-" + StringUtil.formatCommaInteger(Math.abs(param1)) : StringUtil.formatCommaInteger(param1);
         context.locale.fixTextFieldFormat(this._score);
      }
      
      override public function handleLocaleChange() : void
      {
         this.setText(this._textKey);
         this.setScore(this._scoreValue);
      }
   }
}
