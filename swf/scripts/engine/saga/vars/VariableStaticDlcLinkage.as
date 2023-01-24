package engine.saga.vars
{
   public class VariableStaticDlcLinkage
   {
      
      private static var instance:IVariableStaticDlcLinkage;
       
      
      public function VariableStaticDlcLinkage()
      {
         super();
      }
      
      public static function setStaticDlcLinkage(param1:IVariableStaticDlcLinkage) : void
      {
         instance = param1;
      }
      
      public static function getInstance() : IVariableStaticDlcLinkage
      {
         if(!instance)
         {
            instance = new VariableStaticDlcLinkageNull();
         }
         return instance;
      }
   }
}
