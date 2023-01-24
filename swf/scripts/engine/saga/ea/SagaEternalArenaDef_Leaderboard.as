package engine.saga.ea
{
   public class SagaEternalArenaDef_Leaderboard
   {
       
      
      public var name:String;
      
      public var override:String;
      
      public function SagaEternalArenaDef_Leaderboard()
      {
         super();
      }
      
      public function toString() : String
      {
         return "[lbname=" + this.name + "]";
      }
      
      public function fromJson(param1:Object) : SagaEternalArenaDef_Leaderboard
      {
         this.name = param1.name;
         this.override = this.name;
         return this;
      }
   }
}
