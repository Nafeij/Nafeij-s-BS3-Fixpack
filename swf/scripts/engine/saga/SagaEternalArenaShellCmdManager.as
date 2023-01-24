package engine.saga
{
   import engine.core.cmd.CmdExec;
   import engine.core.cmd.ShellCmdManager;
   import engine.core.logging.ILogger;
   import engine.math.MathUtil;
   import engine.saga.ea.EternalArenaArrangement;
   import engine.saga.ea.EternalArenaChallenge;
   import engine.saga.ea.SagaEternalArena;
   import flash.utils.getTimer;
   
   public class SagaEternalArenaShellCmdManager extends ShellCmdManager
   {
       
      
      public var saga:Saga;
      
      public var ea:SagaEternalArena;
      
      public function SagaEternalArenaShellCmdManager(param1:ILogger, param2:Saga, param3:Boolean)
      {
         super(param1);
         this.saga = param2;
         this.ea = param2.eternalArena;
         this.cheat = true;
         if(param3)
         {
            add("random",this.shellFuncRandom,true);
            add("null",this.shellFuncNull,true);
            add("pending",this.shellFuncPending,true);
            add("remain",this.shellFuncRemain,true);
            add("lboverride",this.shellFuncLbOverride,true);
         }
      }
      
      private function shellFuncNull(param1:CmdExec) : void
      {
         this.ea = this.saga.eternalArena;
         this.ea.challenge = null;
      }
      
      private function shellFuncRandom(param1:CmdExec) : void
      {
         this.ea = this.saga.eternalArena;
         var _loc2_:EternalArenaArrangement = this.ea.initArrangement(true,null);
         _loc2_.ordinal = MathUtil.randomInt(0,5) * 213;
         var _loc3_:uint = 1000;
         var _loc4_:Date = new Date();
         _loc4_.setTime(_loc4_.getTime() + _loc3_);
         var _loc5_:EternalArenaChallenge = new EternalArenaChallenge().init(_loc2_,_loc3_,_loc4_.getTime(),_loc2_.ordinal);
         this.ea.challenge = _loc5_;
      }
      
      private function shellFuncPending(param1:CmdExec) : void
      {
         this.ea = this.saga.eternalArena;
         var _loc2_:uint = 1000;
         var _loc3_:Date = new Date();
         _loc3_.setTime(_loc3_.getTime() + _loc2_);
         var _loc4_:int = MathUtil.randomInt(0,200) * 413;
         var _loc5_:EternalArenaChallenge = new EternalArenaChallenge().init(null,_loc2_,_loc3_.getTime(),_loc4_);
         this.ea.challenge = _loc5_;
      }
      
      private function shellFuncRemain(param1:CmdExec) : void
      {
         this.ea = this.saga.eternalArena;
         if(!this.ea.challenge)
         {
            logger.error("no challenge");
            return;
         }
         var _loc2_:Array = param1.param;
         if(_loc2_.length < 2)
         {
            logger.error("specify seconds");
            return;
         }
         var _loc3_:int = int(_loc2_[1]);
         var _loc4_:int = (getTimer() + _loc3_) * 1000;
         this.ea.challenge.statusUpdateTimeMs = _loc4_;
      }
      
      private function shellFuncLbOverride(param1:CmdExec) : void
      {
         var _loc2_:Array = param1.param;
         if(_loc2_.length < 2)
         {
            logger.info("Usage: <key> <override>");
            return;
         }
         var _loc3_:String = _loc2_[1];
         var _loc4_:String = _loc2_[2];
         this.ea = this.saga.eternalArena;
         this.ea.def.leaderboards.overrideLeaderboardEnvironment(_loc3_,_loc4_);
      }
   }
}
