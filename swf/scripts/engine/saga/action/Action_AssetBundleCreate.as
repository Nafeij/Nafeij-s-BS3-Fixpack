package engine.saga.action
{
   import engine.saga.Saga;
   
   public class Action_AssetBundleCreate extends Action
   {
       
      
      public function Action_AssetBundleCreate(param1:ActionDef, param2:Saga)
      {
         super(param1,param2);
      }
      
      override protected function handleStarted() : void
      {
         end();
      }
   }
}