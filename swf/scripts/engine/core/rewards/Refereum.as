package engine.core.rewards
{
   import engine.core.logging.ILogger;
   import engine.core.util.AppInfo;
   import engine.core.util.StableJson;
   import engine.saga.Saga;
   import engine.sound.config.FmodSoundSystem;
   import engine.sound.config.ISoundSystem;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class Refereum
   {
      
      private static const REFEREUM_COMPLETE_ACV_URL:String = "https://reward.refereum.com/se";
      
      private static const REFEREUM_CONFIG_URL_BASE:String = "http://bannersaga.s3.amazonaws.com/refereum/";
      
      private static const REFEREUM_MASTER_SAVE_KEY_PREFIX:String = "refereum_sent_";
      
      private static const REFEREUM_TIMER_DELAY:Number = 1000;
      
      private static var _logger:ILogger = null;
      
      private static var _config:RefereumConfig = null;
      
      private static var _soundSystem:FmodSoundSystem;
      
      private static var _initializationTimer:Timer;
      
      private static var _notifiedNoSaga:Boolean;
      
      private static var _notifiedNotRunning:Boolean;
       
      
      public function Refereum()
      {
         super();
      }
      
      private static function isDisabled() : Boolean
      {
         return _config == null;
      }
      
      private static function isRunning() : Boolean
      {
         return !isDisabled() && _config.initialized;
      }
      
      public static function initialize(param1:ILogger, param2:AppInfo) : void
      {
         if(isRunning())
         {
            _logger.debug("Refereum::initialize - Already Initialized. Please call Stop before calling Initialize again");
            return;
         }
         _logger = param1;
         _config = new RefereumConfig();
         _config.initialize(_logger,REFEREUM_CONFIG_URL_BASE,param2);
      }
      
      public static function stop() : void
      {
         stopInitializationTimer();
         if(!isRunning())
         {
            _logger.debug("Refereum::stop - Stop called when already stopped.");
            return;
         }
         if(_config)
         {
            _config.stop();
            _config = null;
         }
      }
      
      public static function logInUser(param1:String) : void
      {
         if(!isRunning())
         {
            _logger.debug("Refereum::logInUser - Not running");
            return;
         }
         _config.userId = RefereumCrypt.HashSHA256(param1);
      }
      
      public static function completeAchievement(param1:String, param2:Boolean = false) : void
      {
         var loader:RefereumUrlLoader;
         var request:URLRequest;
         var body:Object;
         var refereumId:int = 0;
         var saga:Saga = null;
         var id:String = param1;
         var force:Boolean = param2;
         if(!isRunning() || !_config.userId)
         {
            _logger.debug("Refereum::completeAchievement - Not Running or not logged in");
            return;
         }
         if(!(id in _config.acvIdToRefereumId))
         {
            _logger.debug("Refereum::completeAchievement - No refereum id for " + id);
            return;
         }
         refereumId = int(_config.acvIdToRefereumId[id]);
         if(refereumId == 0)
         {
            _logger.debug("Refereum::completeAchievement - Received an invalid id for Refereum " + id);
            return;
         }
         saga = Saga.instance;
         if(saga)
         {
            if(saga.getMasterSaveKeyBool(REFEREUM_MASTER_SAVE_KEY_PREFIX + refereumId) && !force)
            {
               _logger.debug("Refereum::completeAchievement - Achievement id " + refereumId + " has already been unlocked");
               return;
            }
         }
         loader = new RefereumUrlLoader(_logger);
         request = new URLRequest(REFEREUM_COMPLETE_ACV_URL);
         body = new Object();
         body["g"] = _config.gameId;
         body["i"] = refereumId;
         body["k"] = _config.sdkId;
         body["u"] = _config.userId;
         request.data = StableJson.stringifyObject(body);
         request.method = URLRequestMethod.POST;
         loader.open(request,function(param1:*):void
         {
            if(!isRunning())
            {
               _logger.error("Refereum::_onCompleteAchievementSuccess - Not Running");
               return;
            }
            _logger.debug("Refereum::_onCompleteAchievementSuccess - Successfully posted id " + refereumId + " to refereum!");
            if(saga)
            {
               saga.setMasterSaveKey(REFEREUM_MASTER_SAVE_KEY_PREFIX + refereumId,true);
            }
         },function():void
         {
            if(!isRunning())
            {
               _logger.error("Refereum::_onCompleteAchievementSuccess - Not Running");
               return;
            }
            _logger.debug("Refereum::_onCompleteAchievementFailed - Failed to post id " + refereumId);
         });
      }
      
      public static function initializeRefereumSDK(param1:ISoundSystem) : void
      {
         if(isDisabled())
         {
            _logger.debug("Refereum::initializeRefereumSDK - Refereum is disabled, ignoring call to initialize.");
            return;
         }
         _soundSystem = param1 as FmodSoundSystem;
         if(!_soundSystem)
         {
            _logger.debug("Refereum::initializeRefereumSDK - No FmodSoundSystem available, thus we are not able to run attribution calls.");
            return;
         }
         _initializationTimer = new Timer(REFEREUM_TIMER_DELAY,0);
         _notifiedNoSaga = false;
         _notifiedNotRunning = false;
         _initializationTimer.addEventListener(TimerEvent.TIMER,delayInitializeRefereumSDK);
         _initializationTimer.start();
      }
      
      private static function stopInitializationTimer() : void
      {
         if(_initializationTimer)
         {
            _initializationTimer.stop();
            _initializationTimer.removeEventListener(TimerEvent.TIMER,delayInitializeRefereumSDK);
            _initializationTimer = null;
         }
      }
      
      private static function delayInitializeRefereumSDK(param1:TimerEvent) : void
      {
         var _loc2_:Saga = Saga.instance;
         if(!_loc2_)
         {
            if(!_notifiedNoSaga)
            {
               _notifiedNoSaga = true;
               _logger.debug("Refereum::delayInitializeRefereumSDK - Attempted to initialize the refereum sdk without a saga. Will try again shortly.");
            }
            return;
         }
         _notifiedNoSaga = false;
         if(!isRunning() || !_config.userId)
         {
            if(_notifiedNotRunning)
            {
               _notifiedNotRunning = true;
               _logger.debug("Refereum::delayInitializeRefereumSDK - Attempted to initialize but we still aren\'t running. Will try again shortly.");
            }
            return;
         }
         _notifiedNotRunning = false;
         stopInitializationTimer();
         if(_config.disableAttribution)
         {
            _logger.debug("Refereum::delayInitializeRefereumSDK - Refereum Attribution is disabled");
            return;
         }
         _logger.debug("Refereum::delayInitializeRefereumSDK - Initializing the SDK");
         _soundSystem.refereumInitialize(_config.sdkId,_config.gameId,_config.userId,_loc2_.firstTime);
         _soundSystem = null;
      }
   }
}
