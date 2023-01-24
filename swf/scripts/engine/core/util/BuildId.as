package engine.core.util
{
   public class BuildId
   {
       
      
      public var version:String;
      
      public var number:String;
      
      public function BuildId(param1:String, param2:String)
      {
         super();
         this.version = param1;
         this.number = param2;
      }
      
      public function toString() : String
      {
         return "" + this.version + " " + this.number;
      }
   }
}
