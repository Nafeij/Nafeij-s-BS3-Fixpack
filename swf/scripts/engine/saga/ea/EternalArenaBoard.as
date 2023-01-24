package engine.saga.ea
{
   import engine.core.util.StringUtil;
   
   public class EternalArenaBoard
   {
       
      
      public var url:String;
      
      public var basename:String;
      
      public var sagaId:String;
      
      public var boardId:String;
      
      public var waves:Boolean;
      
      public function EternalArenaBoard(param1:String, param2:String, param3:String, param4:Boolean)
      {
         super();
         this.url = param2;
         this.basename = StringUtil.getBasename(param2);
         this.sagaId = param1;
         this.boardId = param3;
         this.waves = param4;
      }
   }
}
