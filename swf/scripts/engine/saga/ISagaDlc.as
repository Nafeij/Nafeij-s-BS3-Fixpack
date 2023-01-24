package engine.saga
{
   public interface ISagaDlc
   {
       
      
      function ownsDlc(param1:SagaDlcEntry, param2:Function = null) : int;
      
      function showStoreDlc(param1:SagaDlcEntry) : Boolean;
   }
}
