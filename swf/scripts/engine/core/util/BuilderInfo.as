package engine.core.util
{
   public class BuilderInfo
   {
       
      
      public var tag:String;
      
      public var date:String;
      
      public function BuilderInfo(param1:String, param2:String)
      {
         super();
         this.tag = param1;
         this.date = param2;
      }
      
      public function toString() : String
      {
         return "tag=" + this.tag + " date=" + this.date;
      }
   }
}
