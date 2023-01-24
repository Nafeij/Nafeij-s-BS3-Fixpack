package game.gui.page
{
   import engine.saga.ea.EternalArenaArrangement;
   
   public interface IGuiSagaEternalArenaStartListener
   {
       
      
      function guiEternalArenaExit() : void;
      
      function guiEternalArenaViewChallenge() : void;
      
      function guiEternalArenaViewLeaderboards() : void;
      
      function guiEternalArenaLeaderboardsSupported() : Boolean;
      
      function guiEternalArenaSetupArena(param1:EternalArenaArrangement) : void;
      
      function guiEternalArenaLoadArrangements() : Vector.<EternalArenaArrangement>;
      
      function guiEternalArenaDeleteArrangement(param1:EternalArenaArrangement) : void;
      
      function guiEternalArenaUpdateButtonVisibility() : void;
   }
}
