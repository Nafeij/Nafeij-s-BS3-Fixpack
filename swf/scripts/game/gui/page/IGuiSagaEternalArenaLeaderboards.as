package game.gui.page
{
   import engine.core.util.AppInfo;
   import engine.saga.ISaga;
   import flash.events.IEventDispatcher;
   import game.gui.IGuiContext;
   
   public interface IGuiSagaEternalArenaLeaderboards extends IEventDispatcher
   {
       
      
      function init(param1:IGuiContext, param2:IGuiSagaEternalArenaLeaderboardsListener, param3:ISaga, param4:AppInfo) : void;
      
      function resizeHandler(param1:Number, param2:Number) : void;
      
      function cleanup() : void;
      
      function update(param1:int) : void;
   }
}
