package engine.saga.save
{
   import flash.events.IEventDispatcher;
   
   public interface ISaveManager extends IEventDispatcher
   {
       
      
      function putMasterSave(param1:String, param2:Object) : void;
      
      function getMasterSave(param1:String, param2:String) : Object;
      
      function get isInitialized() : Boolean;
   }
}
