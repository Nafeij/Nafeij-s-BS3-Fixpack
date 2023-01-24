package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import flash.utils.Dictionary;
   
   public class EternalArenaOptionFilter
   {
       
      
      public var dict:Dictionary;
      
      public function EternalArenaOptionFilter()
      {
         this.dict = new Dictionary();
         super();
      }
      
      public function addFiltration(param1:String, param2:*) : void
      {
         if(param2 is String)
         {
            param2 = new RegExp(param2);
         }
         this.dict[param1] = param2;
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaOptionFilter
      {
         var _loc3_:* = null;
         for(_loc3_ in param1)
         {
            this.addFiltration(_loc3_,param1[_loc3_]);
         }
         return this;
      }
      
      public function checkFilter(param1:String, param2:EternalArenaArrangement) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:RegExp = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         for(_loc3_ in this.dict)
         {
            _loc4_ = this.dict[_loc3_];
            if(_loc4_)
            {
               _loc5_ = param2.getValue(param1,_loc3_);
               if(!_loc5_)
               {
                  return false;
               }
               _loc6_ = _loc5_.match(_loc4_);
               if(!_loc6_ || !_loc6_.length)
               {
                  return false;
               }
            }
         }
         return true;
      }
   }
}
