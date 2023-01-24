package engine.saga.action
{
   import engine.saga.Saga;
   import engine.sound.config.ISoundSystem;
   import engine.sound.view.ISound;
   import flash.system.Capabilities;
   
   public class Action_MusicOneshot extends BaseAction_Sound
   {
      
      public static var firstEventPlayed:String;
       
      
      public function Action_MusicOneshot(param1:ActionDef, param2:Saga)
      {
         super(param1,param2);
      }
      
      override protected function handleStarted() : void
      {
         startLoadingSound(def.location,def.id,def.param,def.varvalue);
         if(!firstEventPlayed)
         {
            firstEventPlayed = event;
         }
      }
      
      override protected function handlePlaySound() : Boolean
      {
         var _loc2_:ISound = null;
         var _loc1_:ISoundSystem = saga.sound.system;
         if(Boolean(_loc1_) && _loc1_.enabled)
         {
            _loc2_ = saga.sound.playMusicOneShot(sku,event,param,value);
            if(!_loc2_ || !_loc2_.playing)
            {
               if(Capabilities.isDebugger)
               {
               }
               if(!_loc2_ || !_loc2_.playing)
               {
                  logger.error("Failed to play music [" + event + "] for " + this);
               }
            }
         }
         end();
         return false;
      }
   }
}
