package game.gui.pages
{
   import engine.gui.GuiContextEvent;
   import flash.text.TextField;
   import game.gui.GuiBase;
   import game.gui.GuiIcon;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaSetup_InfoPanelOptions extends GuiBase
   {
       
      
      public var _thumbnail:GuiSagaEternalArenaThumbnail;
      
      public var _text_description:TextField;
      
      public var _text_title:TextField;
      
      private var _icon:GuiIcon;
      
      public function GuiSagaEternalArenaSetup_InfoPanelOptions()
      {
         super();
         this._thumbnail = requireGuiChild("holder_thumbnail") as GuiSagaEternalArenaThumbnail;
         this._text_description = requireGuiChild("text_description") as TextField;
         this._text_title = requireGuiChild("text_title") as TextField;
         registerScalableTextfieldAlign(this._text_title);
      }
      
      public function init(param1:IGuiContext) : void
      {
         super.initGuiBase(param1);
         this._thumbnail.init(param1);
         _context.addEventListener(GuiContextEvent.LOCALE,this.localeHandler);
      }
      
      public function cleanup() : void
      {
         _context.removeEventListener(GuiContextEvent.LOCALE,this.localeHandler);
         this._thumbnail.cleanup();
         this._thumbnail = null;
      }
      
      public function updateText(param1:String, param2:String) : void
      {
         if(Boolean(_context) && Boolean(_context.saga))
         {
            this._text_description.htmlText = _context.saga.performStringReplacement_SagaVar(param2);
         }
         this._text_title.htmlText = param1;
         scaleTextField(this._text_title);
         this.fixTextFields();
      }
      
      public function updateThumbnailBg(param1:String, param2:String, param3:String) : void
      {
         this._thumbnail.updateBg(param1,param2,param3);
      }
      
      public function updateThumbnailOverlays(param1:String, param2:String, param3:String) : void
      {
         this._thumbnail.updateOverlay(GuiSagaEternalArenaThumbnail.TYPE_INITIATIVE,param1);
         this._thumbnail.updateOverlay(GuiSagaEternalArenaThumbnail.TYPE_ARTIFACT,param2);
         this._thumbnail.updateOverlay(GuiSagaEternalArenaThumbnail.TYPE_TIMER,param3);
      }
      
      private function localeHandler(param1:GuiContextEvent) : void
      {
         this.fixTextFields();
      }
      
      private function fixTextFields() : void
      {
         _context.locale.fixTextFieldFormat(this._text_description);
         _context.locale.fixTextFieldFormat(this._text_title);
         scaleTextfields();
      }
   }
}
