package engine.saga.vars
{
   import flash.utils.Dictionary;
   
   public class VariableStaticDlcLinkageNull implements IVariableStaticDlcLinkage
   {
       
      
      protected var dlc_linkage:Dictionary;
      
      public function VariableStaticDlcLinkageNull()
      {
         this.dlc_linkage = new Dictionary();
         super();
      }
      
      public function getDlcLinkageStrings(param1:String) : Vector.<String>
      {
         return this.dlc_linkage[param1];
      }
   }
}
