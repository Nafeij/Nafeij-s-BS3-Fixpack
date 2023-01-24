package engine.saga.ea
{
   import flash.events.Event;
   import tbs.srv.data.LeaderboardData;
   
   public class SagaEternalArenaEvent extends Event
   {
      
      public static var CHANGED:String = "SagaEternalArenaEvent.CHANGED";
       
      
      public var leaderboard:LeaderboardData;
      
      public function SagaEternalArenaEvent(param1:String, param2:LeaderboardData)
      {
         super(param1);
         this.leaderboard = param2;
      }
   }
}
