package game.gui.page
{
   import flash.display.DisplayObject;
   import game.gui.IGuiContext;
   
   public interface IGuiChallengeWarning
   {
       
      
      function get displayObject() : DisplayObject;
      
      function init(param1:IGuiContext) : void;
      
      function update(param1:int) : void;
      
      function cleanup() : void;
      
      function resizeHandler(param1:Number, param2:Number) : void;
   }
}
