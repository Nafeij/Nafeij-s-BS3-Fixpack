package game.gui.page
{
   import engine.core.util.AppInfo;
   import engine.saga.ea.EternalArenaArrangement;
   import flash.events.IEventDispatcher;
   import game.gui.IGuiContext;
   
   public interface IGuiSagaEternalArenaSetup extends IEventDispatcher
   {
       
      
      function init(param1:IGuiContext, param2:IGuiSagaEternalArenaSetupListener, param3:AppInfo, param4:EternalArenaArrangement, param5:Boolean) : void;
      
      function resizeHandler(param1:Number, param2:Number) : void;
      
      function cleanup() : void;
      
      function update(param1:int) : void;
   }
}
