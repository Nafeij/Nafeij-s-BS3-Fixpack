package game.gui.battle
{
   public interface IGuiMatchPageListener
   {
       
      
      function quitGameButtonClickHandler(param1:Object) : void;
      
      function newGameButtonClickHandler(param1:Object) : void;
      
      function editEternalArenaClickHandler(param1:Object) : void;
      
      function guiEternalArenaSaveWrite(param1:String, param2:Object, param3:Boolean, param4:Boolean) : Boolean;
      
      function guiEaSaveShowing(param1:Boolean) : void;
   }
}
