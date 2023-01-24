package engine.core.util
{
   public class BuildInfo
   {
       
      
      public var id:BuildId;
      
      public var builder:BuilderInfo;
      
      public var scm:BuildScmRev;
      
      public function BuildInfo(param1:BuildId, param2:BuilderInfo, param3:BuildScmRev)
      {
         super();
         this.id = param1;
         this.builder = param2;
         this.scm = param3;
      }
      
      public function toString() : String
      {
         return "id=[" + this.id + "], builder=[" + this.builder + "], scm=[" + this.scm + "]";
      }
   }
}
