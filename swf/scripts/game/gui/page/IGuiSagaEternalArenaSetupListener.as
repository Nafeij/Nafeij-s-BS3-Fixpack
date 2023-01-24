package game.gui.page
{
   public interface IGuiSagaEternalArenaSetupListener
   {
       
      
      function guiEternalArenaStart() : void;
      
      function guiEternalArenaSaveWrite(param1:String, param2:Object, param3:Boolean, param4:Boolean) : Boolean;
   }
}
