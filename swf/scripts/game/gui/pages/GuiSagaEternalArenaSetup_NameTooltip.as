package game.gui.pages
{
   import engine.entity.def.IEntityDef;
   import engine.gui.GuiUtil;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaSetup_NameTooltip extends GuiBase
   {
       
      
      private var _nameText:TextField;
      
      private var _bgMc:MovieClip;
      
      private var _ent:IEntityDef;
      
      private const _minTextWidth:Number = 300;
      
      public function GuiSagaEternalArenaSetup_NameTooltip()
      {
         super();
         this._nameText = requireGuiChild("text") as TextField;
         this._bgMc = requireGuiChild("background") as MovieClip;
      }
      
      public function init(param1:IGuiContext) : void
      {
         super.initGuiBase(param1);
      }
      
      public function cleanup() : void
      {
         super.cleanupGuiBase();
      }
      
      public function setName(param1:IEntityDef) : void
      {
         this._ent = param1;
         this._nameText.htmlText = this._ent.name;
         context.locale.fixTextFieldFormat(this._nameText);
         var _loc2_:Number = GuiUtil.figureOutTextWidth(this._nameText) + 60;
         this._bgMc.width = Math.max(this._minTextWidth,_loc2_);
      }
   }
}
