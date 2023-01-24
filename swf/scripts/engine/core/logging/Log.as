package engine.core.logging
{
   import engine.core.logging.targets.DebugLogTarget;
   import flash.utils.Dictionary;
   
   public class Log
   {
      
      private static var loggers:Dictionary = new Dictionary();
       
      
      public function Log()
      {
         super();
         new DebugLogTarget();
      }
      
      public static function update(param1:int) : void
      {
         var _loc2_:ILogger = null;
         for each(_loc2_ in loggers)
         {
            _loc2_.update(param1);
         }
      }
      
      public static function getLogger(param1:String) : ILogger
      {
         var _loc2_:ILogger = loggers[param1];
         if(!_loc2_)
         {
            _loc2_ = new Logger(param1);
            loggers[param1] = _loc2_;
         }
         return _loc2_;
      }
   }
}
