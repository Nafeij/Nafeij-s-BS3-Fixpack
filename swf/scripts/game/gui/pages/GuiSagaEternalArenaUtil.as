package game.gui.pages
{
   import engine.core.locale.Locale;
   
   public class GuiSagaEternalArenaUtil
   {
       
      
      public function GuiSagaEternalArenaUtil()
      {
         super();
      }
      
      public static function generate_timerText(param1:String, param2:int, param3:Locale, param4:Date) : String
      {
         var _loc10_:String = null;
         var _loc5_:int = param2;
         var _loc6_:int = param2 / 60;
         _loc5_ -= _loc6_ * 60;
         var _loc7_:int = _loc6_ / 24;
         _loc6_ -= _loc7_ * 24;
         var _loc8_:* = param1 + "_minutes";
         if(_loc7_)
         {
            _loc8_ = param1 + "_days";
         }
         else if(_loc6_)
         {
            _loc8_ = param1 + "_hours";
         }
         var _loc9_:String = param3.translateGui(_loc8_,true);
         if(!_loc9_)
         {
            _loc8_ = param1;
         }
         _loc9_ = param3.translateGui(_loc8_);
         _loc9_ = _loc9_.replace("{days}",_loc7_);
         _loc9_ = _loc9_.replace("{hours}",_loc6_);
         _loc9_ = _loc9_.replace("{mins}",_loc5_);
         _loc9_ = _loc9_.replace("{minutes}",_loc5_);
         if(param4)
         {
            _loc10_ = param4.toLocaleDateString();
            _loc9_ = _loc9_.replace("{date}",_loc10_);
         }
         return _loc9_;
      }
   }
}
