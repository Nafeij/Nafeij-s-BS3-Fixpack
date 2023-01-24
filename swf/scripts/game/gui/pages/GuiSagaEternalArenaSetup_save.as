package game.gui.pages
{
   import engine.saga.ea.EternalArenaArrangement;
   import flash.text.TextField;
   import game.gui.ButtonWithIndex;
   import game.gui.IGuiContext;
   import game.gui.battle.GuiEternalArenaBattleSave;
   
   public class GuiSagaEternalArenaSetup_save extends GuiEternalArenaBattleSave
   {
       
      
      public var _thumbnail:GuiSagaEternalArenaThumbnail;
      
      public function GuiSagaEternalArenaSetup_save()
      {
         super();
      }
      
      override protected function getReferences() : void
      {
         _input = requireGuiChild("input") as TextField;
         _button_$cancel = requireGuiChild("button_$cancel") as ButtonWithIndex;
         _button_$save = requireGuiChild("button_$save") as ButtonWithIndex;
         this._thumbnail = requireGuiChild("thumbnail") as GuiSagaEternalArenaThumbnail;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
         this._thumbnail.cleanup();
      }
      
      override public function init(param1:IGuiContext, param2:GuiSagaEternalArenaSetup_saveListener) : void
      {
         super.init(param1,param2);
         this._thumbnail.init(param1);
      }
      
      override public function showSave(param1:EternalArenaArrangement) : void
      {
         super.showSave(param1);
         this._updateThumbnail();
      }
      
      protected function _updateThumbnail() : void
      {
         this._thumbnail.updateFromArrangement(_arrangement);
      }
   }
}
