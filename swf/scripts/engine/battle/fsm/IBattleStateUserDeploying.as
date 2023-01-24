package engine.battle.fsm
{
   public interface IBattleStateUserDeploying
   {
       
      
      function get isLocalDeployed() : Boolean;
      
      function set isLocalDeployed(param1:Boolean) : void;
      
      function get timeoutRemainingMs() : int;
      
      function get timeoutMs() : int;
      
      function set timeoutMs(param1:int) : void;
      
      function get timeoutPercent() : Number;
   }
}
