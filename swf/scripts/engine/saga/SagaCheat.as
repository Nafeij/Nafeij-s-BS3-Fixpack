package engine.saga
{
   import engine.core.analytic.Ga;
   
   public class SagaCheat
   {
      
      public static var instance:ISaga;
      
      public static var ALLOW:Boolean;
       
      
      public function SagaCheat()
      {
         super();
      }
      
      public static function devCheat(param1:String) : void
      {
         if(ALLOW)
         {
            if(instance)
            {
               instance.logger.info("ALLOW CHEAT with " + param1);
            }
            return;
         }
         Ga.stop(param1);
         if(instance)
         {
            if(!instance.isDevCheat)
            {
               instance.logger.info("CHEATED with " + param1);
               instance.setVar("dev_cheat",true);
            }
            instance.devBookmarked = true;
         }
      }
   }
}
