package engine.saga.ea
{
   import engine.core.logging.ILogger;
   
   public class SagaEternalArenaDef_Leaderboards
   {
      
      public static var LB_ID_PREV:Object = {
         "base":"_lb_ea_challenge_previous",
         "override":""
      };
      
      public static var LB_ID_CURR:Object = {
         "base":"_lb_ea_challenge_current",
         "override":""
      };
      
      public static var LB_ID_WINS:Object = {
         "base":"_lb_ea_wins",
         "override":""
      };
       
      
      public var _leaderboards:Vector.<SagaEternalArenaDef_Leaderboard>;
      
      public var leaderboardNames:Vector.<String>;
      
      public var numLeaderboards:int;
      
      public var logger:ILogger;
      
      private var _leaderboardsDirty:Boolean;
      
      public function SagaEternalArenaDef_Leaderboards(param1:ILogger)
      {
         this._leaderboards = new Vector.<SagaEternalArenaDef_Leaderboard>();
         this.leaderboardNames = new Vector.<String>();
         super();
         this.logger = param1;
      }
      
      public function initData() : SagaEternalArenaDef_Leaderboards
      {
         var _loc1_:Object = {"lbs":[{"name":LB_ID_CURR.base},{"name":LB_ID_PREV.base},{"name":LB_ID_WINS.base}]};
         return this.fromJson(_loc1_,this.logger);
      }
      
      public function fromJson(param1:Object, param2:ILogger) : SagaEternalArenaDef_Leaderboards
      {
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:SagaEternalArenaDef_Leaderboard = null;
         var _loc3_:Array = param1.lbs;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc5_ = _loc3_[_loc4_];
            if(!_loc5_.original)
            {
               _loc5_.original = _loc5_.name;
            }
            _loc6_ = new SagaEternalArenaDef_Leaderboard().fromJson(_loc5_);
            this._leaderboards.push(_loc6_);
            this.leaderboardNames.push(_loc6_.name);
            ++this.numLeaderboards;
            _loc4_++;
         }
         return this;
      }
      
      public function getLeaderboardIndexByName(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._leaderboards.length)
         {
            if(this._leaderboards[_loc2_].name == param1 || this._leaderboards[_loc2_].override == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         this.logger.debug("SagaEternalArenaDef_Leaderboards::getLeaderboardIndexByName - Failed to find [" + param1 + "] in the leaderboards array, returning 0");
         return -1;
      }
      
      public function getLeaderboardByIndex(param1:int) : SagaEternalArenaDef_Leaderboard
      {
         return this._leaderboards[param1];
      }
      
      public function getLeaderboardByName(param1:String) : SagaEternalArenaDef_Leaderboard
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this._leaderboards)
         {
            if(_loc2_.name == param1 || _loc2_.override == param1)
            {
               return _loc2_ as SagaEternalArenaDef_Leaderboard;
            }
         }
         return null;
      }
      
      public function getLeaderboardIdByName(param1:String) : String
      {
         var _loc2_:SagaEternalArenaDef_Leaderboard = this.getLeaderboardByName(param1);
         return !!_loc2_ ? _loc2_.override : null;
      }
      
      public function overrideLeaderboardEnvironment(param1:Object, param2:String) : void
      {
         var _loc3_:SagaEternalArenaDef_Leaderboard = this.getLeaderboardByName(param1.base);
         if(!_loc3_)
         {
            throw new ArgumentError("invalid leaderboard name [" + param1.base + "]");
         }
         var _loc4_:String = _loc3_.override;
         if(_loc4_ == param2)
         {
            return;
         }
         if(param2)
         {
            this.logger.i("ETAR","LB overriding " + _loc3_.name + " with " + param2);
            _loc3_.override = param2;
            param1.override = param2;
         }
         else
         {
            this.logger.i("ETAR","LB restoring override " + _loc3_.override + " to " + _loc3_.name);
            _loc3_.override = _loc3_.name;
            param1.override = "";
         }
         this._leaderboardsDirty = this._leaderboardsDirty || _loc4_ != _loc3_.override;
      }
   }
}
