package engine.core.logging
{
   import engine.core.analytic.Ga;
   import engine.core.analytic.GmA;
   import engine.core.util.StringUtil;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class Logger implements ILogger
   {
      
      private static const NUM_CATEGORY_CHARS:int = 4;
      
      public static var instance:ILogger;
      
      private static var _catStrings:Dictionary = new Dictionary();
       
      
      private var _name:String;
      
      private var targets:Vector.<ILogTarget>;
      
      private var _isDebugEnabled:Boolean = false;
      
      private var _isInfoEnabled:Boolean = true;
      
      private var _isLoggingEnabled:Boolean = true;
      
      private var _frameNumber:int = 0;
      
      private var _isLogging:Boolean;
      
      private var _numErrors:int;
      
      private var lastInfo:MessageBuffer;
      
      private var lastDebug:MessageBuffer;
      
      private var lastError:MessageBuffer;
      
      private var lastCrit:MessageBuffer;
      
      public function Logger(param1:String)
      {
         this.targets = new Vector.<ILogTarget>();
         this.lastInfo = new MessageBuffer();
         this.lastDebug = new MessageBuffer();
         this.lastError = new MessageBuffer();
         this.lastCrit = new MessageBuffer();
         super();
         this._name = param1;
         instance = this;
      }
      
      public static function makeCatString(param1:String) : String
      {
         if(!param1)
         {
            return "(" + StringUtil.repeat(" ",NUM_CATEGORY_CHARS) + ") ";
         }
         var _loc2_:int = NUM_CATEGORY_CHARS - param1.length;
         if(_loc2_ > 0)
         {
            param1 += StringUtil.repeat(" ",_loc2_);
         }
         var _loc3_:* = String(_catStrings[param1]);
         if(!_loc3_)
         {
            _loc3_ = "(" + param1 + ") ";
            _catStrings[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public function get isLogging() : Boolean
      {
         return this._isLogging;
      }
      
      public function get numErrors() : int
      {
         return this._numErrors;
      }
      
      public function cleanup() : void
      {
         var _loc1_:ILogTarget = null;
         var _loc2_:ILogTargetCleanupable = null;
         for each(_loc1_ in this.targets)
         {
            _loc2_ = _loc1_ as ILogTargetCleanupable;
            if(_loc2_)
            {
               _loc2_.cleanup();
            }
         }
         this.targets.splice(0,this.targets.length);
      }
      
      private function _formatMsg(param1:String, param2:Array) : String
      {
         var _loc4_:Object = null;
         var _loc3_:int = 0;
         for each(_loc4_ in param2)
         {
            param1 = param1.replace("{" + _loc3_ + "}",_loc4_);
            _loc3_++;
         }
         return param1;
      }
      
      public function d(param1:String, param2:String, ... rest) : void
      {
         if(this._isDebugEnabled)
         {
            this._debug(param1,param2,rest);
         }
      }
      
      public function i(param1:String, param2:String, ... rest) : void
      {
         if(this._isInfoEnabled)
         {
            this._info(param1,param2,rest);
         }
      }
      
      public function e(param1:String, param2:String, ... rest) : void
      {
         if(this._isLoggingEnabled)
         {
            this._error(param1,param2,rest);
         }
      }
      
      public function c(param1:String, param2:String, ... rest) : void
      {
         if(this._isLoggingEnabled)
         {
            this._critical(param1,param2,rest);
         }
      }
      
      public function debug(param1:String, ... rest) : void
      {
         this._debug(null,param1,rest);
      }
      
      public function info(param1:String, ... rest) : void
      {
         this._info(null,param1,rest);
      }
      
      public function error(param1:String, ... rest) : void
      {
         this._error(null,param1,rest);
      }
      
      public function critical(param1:String, ... rest) : void
      {
         this._critical(null,param1,rest);
      }
      
      private function _debug(param1:String, param2:String, param3:Array) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(!param2)
         {
            return;
         }
         if(this._isDebugEnabled)
         {
            this._isLogging = true;
            _loc4_ = makeCatString(param1);
            _loc5_ = _loc4_ + this._formatMsg(param2,param3);
            this.__debug(this.lastDebug.process(_loc5_));
         }
      }
      
      private function __debug(param1:String) : void
      {
         var _loc3_:ILogTarget = null;
         if(!param1)
         {
            return;
         }
         this._isLogging = true;
         var _loc2_:int = getTimer();
         for each(_loc3_ in this.targets)
         {
            _loc3_.debug(this,_loc2_,param1);
         }
         this._isLogging = false;
      }
      
      private function _info(param1:String, param2:String, param3:Array) : void
      {
         if(!param2)
         {
            return;
         }
         var _loc4_:String = makeCatString(param1);
         var _loc5_:String = _loc4_ + this._formatMsg(param2,param3);
         this.__info(this.lastInfo.process(_loc5_));
      }
      
      private function __info(param1:String) : void
      {
         var _loc3_:ILogTarget = null;
         if(!param1)
         {
            return;
         }
         this._isLogging = true;
         var _loc2_:int = getTimer();
         for each(_loc3_ in this.targets)
         {
            _loc3_.info(this,_loc2_,param1);
         }
         this._isLogging = false;
      }
      
      private function _error(param1:String, param2:String, param3:Array) : void
      {
         if(!param2)
         {
            return;
         }
         ++this._numErrors;
         var _loc4_:String = makeCatString(param1);
         var _loc5_:String = _loc4_ + this._formatMsg(param2,param3);
         Ga.trackException(_loc5_);
         GmA.trackError("error",_loc5_);
         this._isLogging = true;
         this.__error(this.lastError.process(_loc5_));
      }
      
      private function __error(param1:String) : void
      {
         var _loc3_:ILogTarget = null;
         if(!param1)
         {
            return;
         }
         this._isLogging = true;
         var _loc2_:int = getTimer();
         for each(_loc3_ in this.targets)
         {
            _loc3_.error(this,_loc2_,param1);
         }
         this._isLogging = false;
      }
      
      private function _critical(param1:String, param2:String, param3:Array) : void
      {
         if(!param2)
         {
            return;
         }
         var _loc4_:String = makeCatString(param1);
         var _loc5_:String = _loc4_ + this._formatMsg(param2,param3);
         this._isLogging = true;
         Ga.trackException(_loc5_);
         GmA.trackError("critical",_loc5_);
         this.__critical(this.lastCrit.process(_loc5_));
      }
      
      private function __critical(param1:String) : void
      {
         var _loc3_:ILogTarget = null;
         if(!param1)
         {
            return;
         }
         this._isLogging = true;
         var _loc2_:int = getTimer();
         for each(_loc3_ in this.targets)
         {
            _loc3_.critical(this,_loc2_,param1);
         }
         this._isLogging = false;
      }
      
      public function addTarget(param1:ILogTarget) : ILogger
      {
         if(!param1)
         {
            throw new ArgumentError("null target");
         }
         this.targets.push(param1);
         return this;
      }
      
      public function removeTarget(param1:ILogTarget) : ILogger
      {
         if(!param1)
         {
            throw new ArgumentError("null target");
         }
         var _loc2_:int = this.targets.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.targets.splice(_loc2_,1);
         }
         return this;
      }
      
      public function get isDebugEnabled() : Boolean
      {
         return this._isDebugEnabled;
      }
      
      public function set isDebugEnabled(param1:Boolean) : void
      {
         this._isDebugEnabled = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get frameNumber() : int
      {
         return this._frameNumber;
      }
      
      public function set frameNumber(param1:int) : void
      {
         this._frameNumber = param1;
      }
      
      public function set logLevel(param1:String) : void
      {
         if(param1 == "DEBUG")
         {
            this._isLoggingEnabled = true;
            this._isDebugEnabled = true;
            this._isInfoEnabled = true;
         }
         else if(param1 == "NONE")
         {
            this._isLoggingEnabled = false;
            this._isDebugEnabled = false;
            this._isInfoEnabled = false;
         }
         else if(param1 == "ERROR")
         {
            this._isLoggingEnabled = true;
            this._isDebugEnabled = false;
            this._isInfoEnabled = false;
         }
         else
         {
            this._isLoggingEnabled = true;
            this._isDebugEnabled = false;
            this._isInfoEnabled = true;
         }
      }
      
      public function get logLevel() : String
      {
         if(this._isDebugEnabled)
         {
            return "DEBUG";
         }
         if(this._isInfoEnabled)
         {
            return "INFO";
         }
         if(!this._isLoggingEnabled)
         {
            return "NONE";
         }
         return "ERROR";
      }
      
      public function getLogFilePaths() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:ILogTarget = null;
         var _loc3_:String = null;
         for each(_loc2_ in this.targets)
         {
            _loc3_ = _loc2_.getLogFilePath();
            if(_loc3_)
            {
               if(!_loc1_)
               {
                  _loc1_ = [];
               }
               _loc1_.push(_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function update(param1:int) : void
      {
         this.lastInfo.dirty && this.__info(this.lastInfo.update(param1));
         this.lastDebug.dirty && this.__debug(this.lastDebug.update(param1));
         this.lastError.dirty && this.__error(this.lastError.update(param1));
         this.lastCrit.dirty && this.__critical(this.lastCrit.update(param1));
      }
   }
}

class MessageBuffer
{
   
   public static var MIN_BUFFER_MS:int = 1000;
   
   public static var MAX_BUFFER_MS:int = 30000;
    
   
   public var lastMsg:String;
   
   public var lastCount:int;
   
   public var totalCount:int;
   
   public var elapsed:int;
   
   public var dirty:Boolean;
   
   public var buffer_ms:int;
   
   public function MessageBuffer()
   {
      this.buffer_ms = MIN_BUFFER_MS;
      super();
   }
   
   public function process(param1:String) : String
   {
      if(this.lastMsg == param1)
      {
         ++this.totalCount;
         ++this.lastCount;
         this.dirty = true;
         return null;
      }
      this.dirty = false;
      this.buffer_ms = MIN_BUFFER_MS;
      this.elapsed = 0;
      this.lastMsg = param1;
      this.lastCount = 0;
      this.totalCount = 0;
      return this.lastMsg;
   }
   
   public function update(param1:int) : String
   {
      this.elapsed += param1;
      if(!this.lastMsg || !this.lastCount || !this.dirty)
      {
         return null;
      }
      if(this.elapsed < this.buffer_ms)
      {
         return null;
      }
      this.dirty = false;
      this.elapsed -= this.buffer_ms;
      this.buffer_ms = Math.min(MAX_BUFFER_MS,this.buffer_ms * 2);
      var _loc2_:String = String(this.lastMsg);
      if(this.lastCount == this.totalCount)
      {
         _loc2_ += " (x" + this.lastCount + ")";
      }
      else
      {
         _loc2_ += " (x" + this.lastCount + "/" + this.totalCount + ")";
      }
      this.lastCount = 0;
      return _loc2_;
   }
}
