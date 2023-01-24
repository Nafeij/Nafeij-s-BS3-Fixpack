package game.gui.pages
{
   import flash.display.DisplayObjectContainer;
   
   public interface GuiSagaEternalArenaSetup_saveListener
   {
       
      
      function saveClosed() : void;
      
      function saveWrite(param1:String, param2:Object, param3:Boolean, param4:Boolean) : Boolean;
      
      function getOverlay() : DisplayObjectContainer;
   }
}
