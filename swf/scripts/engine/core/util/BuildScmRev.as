package engine.core.util
{
   public class BuildScmRev
   {
       
      
      public var scm:String;
      
      public var rev:String;
      
      public function BuildScmRev(param1:String, param2:String)
      {
         super();
         this.scm = param1;
         this.rev = param2;
      }
      
      public function toString() : String
      {
         return "scm=" + this.scm + " rev=" + this.rev;
      }
   }
}
