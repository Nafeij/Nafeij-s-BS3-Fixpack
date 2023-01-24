package game.entry
{
   import com.stoicstudio.platform.Platform;
   import engine.core.logging.ILogger;
   import engine.core.util.AppInfo;
   import flash.utils.Dictionary;
   
   public class EntryHelperDesktopCtor
   {
      
      private static var _entryhelpers:Dictionary = new Dictionary();
       
      
      public function EntryHelperDesktopCtor()
      {
         super();
      }
      
      public static function registerEntryHelper(param1:String, param2:Class) : void
      {
         _entryhelpers[param1] = param2;
      }
      
      public static function fromPlatform(param1:String, param2:AppInfo) : IEntryHelperDesktop
      {
         var _loc3_:IEntryHelperDesktop = null;
         var _loc4_:ILogger = param2.logger;
         Platform.id = param1;
         _loc4_.i("INIT","build_platform=[" + param1 + "]");
         var _loc5_:Class = _entryhelpers[param1];
         if(_loc5_ == null)
         {
            _loc4_.i("INIT","Generic desktop platform... [" + param1 + "]");
            _loc3_ = new GenericEntryHelper(param1);
         }
         else
         {
            _loc3_ = new _loc5_(param2);
         }
         return _loc3_;
      }
   }
}
