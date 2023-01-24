package engine.saga
{
   import com.greensock.TweenMax;
   import engine.core.logging.ILogger;
   import engine.core.util.AppInfo;
   import engine.saga.save.ISaveManager;
   import engine.saga.save.SaveManager;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class SagaMasterSave implements ISagaMasterSave
   {
      
      public static var SAVE_THROTTLE_MS:int = 2000;
       
      
      public var saga:ISaga;
      
      public var defId:String;
      
      public var saveManager:ISaveManager;
      
      public var logger:ILogger;
      
      public var appinfo:AppInfo;
      
      public var masterSave:Object;
      
      public var masterSaveChildren:Dictionary;
      
      public var childkeys:Array;
      
      public var cleanedup:Boolean;
      
      public var lastSaveTime:int;
      
      public var saveTween:TweenMax;
      
      public function SagaMasterSave(param1:ISaga, param2:ISaveManager, param3:AppInfo, param4:Array)
      {
         this.masterSaveChildren = new Dictionary();
         super();
         this.saga = param1;
         this.defId = param1.sagaDefId;
         this.saveManager = param2;
         this.logger = param1.logger;
         this.appinfo = param3;
         this.childkeys = param4;
         this.initializeMasterSave();
      }
      
      public function cleanup() : void
      {
         this.cleanedup = true;
         if(this.saveManager)
         {
            this.saveManager.removeEventListener(SaveManager.EVENT_INITIALIZED,this.initializeMasterSave);
         }
         if(this.saveTween)
         {
            this.saveTween.kill();
            this.saveTween = null;
         }
      }
      
      public function initializeMasterSave() : void
      {
         var _loc1_:String = null;
         this.saveManager.removeEventListener(SaveManager.EVENT_INITIALIZED,this.initializeMasterSave);
         if(this.saveManager.isInitialized)
         {
            this.masterSave = this.saveManager.getMasterSave(this.defId,"GameSaga.start " + this);
            if(this.childkeys)
            {
               for each(_loc1_ in this.childkeys)
               {
                  if(_loc1_)
                  {
                     this.masterSaveChildren[_loc1_] = this.saveManager.getMasterSave(_loc1_,"SagaMasterSave child [" + _loc1_ + "] for master [" + this.defId + "]");
                  }
               }
            }
            this.saga.handleMasterSaveInitialized();
         }
         else
         {
            this.saveManager.addEventListener(SaveManager.EVENT_INITIALIZED,this.initializeMasterSave);
         }
      }
      
      public function resetMasterSave() : void
      {
         this.masterSave = null;
         this.masterSaveChildren = new Dictionary();
         this.initializeMasterSave();
      }
      
      public function storeMasterSave(param1:Boolean) : void
      {
         if(!this.masterSave || !this.saveManager)
         {
            return;
         }
         if(this._scheduleSave(param1))
         {
            return;
         }
         this.saveManager.putMasterSave(this.defId,this.masterSave);
      }
      
      private function _scheduleSave(param1:Boolean) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_ - this.lastSaveTime;
         if(!param1 && _loc3_ < SAVE_THROTTLE_MS)
         {
            if(!this.saveTween)
            {
               _loc4_ = (SAVE_THROTTLE_MS - _loc3_) * 0.001;
               this.saveTween = TweenMax.delayedCall(_loc4_,this.storeMasterSave,[true]);
            }
            return true;
         }
         if(this.saveTween)
         {
            this.saveTween.kill();
            this.saveTween = null;
         }
         this.lastSaveTime = _loc2_;
         return false;
      }
      
      private function _createMasterSave() : void
      {
         if(!this.masterSave)
         {
            this.masterSave = {
               "build_start":this.appinfo.buildInfo.id.toString(),
               "build_last":this.appinfo.buildInfo.id.toString()
            };
         }
      }
      
      public function setMasterSaveKey(param1:String, param2:*) : void
      {
         this._createMasterSave();
         this.masterSave[param1] = param2;
         this.storeMasterSave(false);
      }
      
      public function getMasterSaveKeyBool(param1:String) : Boolean
      {
         return Boolean(this.masterSave) && Boolean(this.masterSave[param1]);
      }
      
      public function getMasterSaveKey(param1:String) : *
      {
         return !!this.masterSave ? this.masterSave[param1] : undefined;
      }
      
      public function getMasterSaveKeyInt(param1:String) : int
      {
         return !!this.masterSave ? int(this.masterSave[param1]) : 0;
      }
      
      public function incrementMasterSaveKey(param1:String) : void
      {
         this._createMasterSave();
         var _loc2_:int = int(this.masterSave[param1]);
         _loc2_++;
         this.masterSave[param1] = _loc2_;
         this.storeMasterSave(false);
      }
      
      public function getDebugString() : String
      {
         var _loc2_:* = null;
         var _loc1_:String = "";
         for(_loc2_ in this.saga.masterSave)
         {
            _loc1_ += "      " + _loc2_ + "\t\t" + this.saga.getMasterSaveKey(_loc2_);
         }
         return _loc1_;
      }
      
      public function hasChild(param1:String) : Boolean
      {
         var _loc2_:Object = this.masterSaveChildren[param1];
         return null != _loc2_;
      }
   }
}
