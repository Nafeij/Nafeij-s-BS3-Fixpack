package engine.saga
{
   import engine.saga.vars.IVariable;
   
   public class SagaDlcVariableData
   {
       
      
      public var name:String;
      
      public var dlc_linkage_name:String;
      
      public function SagaDlcVariableData(param1:String, param2:String)
      {
         super();
         this.name = param1;
         this.dlc_linkage_name = param2;
      }
      
      public function applyVariable(param1:Saga, param2:*) : void
      {
         var _loc3_:IVariable = param1.setVar(this.name,param2);
         if(_loc3_)
         {
            _loc3_.def.dlc_linkage = this.dlc_linkage_name;
         }
      }
   }
}
