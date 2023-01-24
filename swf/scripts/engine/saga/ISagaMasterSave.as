package engine.saga
{
   public interface ISagaMasterSave
   {
       
      
      function setMasterSaveKey(param1:String, param2:*) : void;
      
      function getMasterSaveKeyBool(param1:String) : Boolean;
      
      function getMasterSaveKey(param1:String) : *;
      
      function getMasterSaveKeyInt(param1:String) : int;
      
      function incrementMasterSaveKey(param1:String) : void;
      
      function storeMasterSave(param1:Boolean) : void;
      
      function getDebugString() : String;
      
      function hasChild(param1:String) : Boolean;
      
      function cleanup() : void;
   }
}
