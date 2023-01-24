package engine.saga.ea
{
   import engine.core.BoxString;
   
   public class EternalArenaChallenge
   {
      
      public static const RNG_SEED:String = "seed";
       
      
      public var arrangement:EternalArenaArrangement;
      
      public var ordinal:int;
      
      public var _configHash:String;
      
      private var _statusUpdateTimeMs:Number;
      
      private var _absoluteUpdateTimeMs:Number;
      
      private var _absoluteUpdateDate:Date;
      
      public var steam_lb_current:String;
      
      public var steam_lb_prev:String;
      
      public var steam_lb_wins:String;
      
      public function EternalArenaChallenge()
      {
         super();
      }
      
      public function clone() : EternalArenaChallenge
      {
         var _loc1_:EternalArenaChallenge = new EternalArenaChallenge();
         _loc1_.init(this.arrangement,this.statusUpdateTimeMs,this.absoluteUpdateTimeMs,this.ordinal);
         _loc1_.steam_lb_current = this.steam_lb_current;
         _loc1_.steam_lb_prev = this.steam_lb_prev;
         _loc1_.steam_lb_wins = this.steam_lb_wins;
         _loc1_.configHash = this.configHash;
         return _loc1_;
      }
      
      public function init(param1:EternalArenaArrangement, param2:Number, param3:Number, param4:int) : EternalArenaChallenge
      {
         this.arrangement = param1;
         this.updateRNGSeed();
         this._statusUpdateTimeMs = param2;
         this.absoluteUpdateTimeMs = param3;
         this.ordinal = param4;
         return this;
      }
      
      public function toString() : String
      {
         return "[ordinal=" + this.ordinal + ", _statusUpdateTime=" + this._statusUpdateTimeMs + ", arrangement=" + this.arrangement + "]";
      }
      
      public function isValidArrangement(param1:EternalArenaOptionGroups, param2:BoxString) : Boolean
      {
         if(!this.arrangement)
         {
            param2.value = "null arrangement";
            return false;
         }
         return this.arrangement.isValid(param1,param2);
      }
      
      public function get statusUpdateTimeMs() : Number
      {
         return this._statusUpdateTimeMs;
      }
      
      public function set statusUpdateTimeMs(param1:Number) : void
      {
         this._statusUpdateTimeMs = param1;
      }
      
      public function get absoluteUpdateDate() : Date
      {
         if(this._absoluteUpdateTimeMs > 0)
         {
            this._absoluteUpdateDate = new Date();
            this._absoluteUpdateDate.setTime(this._absoluteUpdateTimeMs);
         }
         return this._absoluteUpdateDate;
      }
      
      public function get absoluteUpdateTimeMs() : Number
      {
         return this._absoluteUpdateTimeMs;
      }
      
      public function set absoluteUpdateTimeMs(param1:Number) : void
      {
         if(this._absoluteUpdateTimeMs == param1)
         {
            return;
         }
         this._absoluteUpdateTimeMs = param1;
         this._absoluteUpdateDate = null;
      }
      
      public function get isActive() : Boolean
      {
         return this.arrangement != null;
      }
      
      public function get isPending() : Boolean
      {
         return this.arrangement == null;
      }
      
      public function get configHash() : String
      {
         return this._configHash;
      }
      
      public function set configHash(param1:String) : void
      {
         this._configHash = param1;
         this.updateRNGSeed();
      }
      
      private function updateRNGSeed() : void
      {
         if(!this.configHash || !this.arrangement)
         {
            return;
         }
         var _loc1_:Number = parseInt(this.configHash.substr(0,8),16);
         var _loc2_:uint = isNaN(_loc1_) ? this.ordinal : _loc1_;
         var _loc3_:int = _loc2_ - int.MAX_VALUE;
         this.arrangement.setValue(EternalArenaOptionGroupTypes.RULES,RNG_SEED,_loc3_.toString());
      }
   }
}
