package engine.math
{
   import flash.utils.Dictionary;
   
   public class CountedSet
   {
       
      
      private var d:Dictionary;
      
      private var c:int;
      
      public function CountedSet()
      {
         this.d = new Dictionary();
         super();
      }
      
      public function getKeyIndex(param1:*) : int
      {
         var _loc2_:* = this.d[param1];
         if(_loc2_ == undefined)
         {
            _loc2_ = this.c++;
            this.d[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public function reset() : void
      {
         this.d = new Dictionary();
         this.c = 0;
      }
   }
}
