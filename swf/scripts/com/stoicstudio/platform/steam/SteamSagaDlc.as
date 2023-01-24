package com.stoicstudio.platform.steam
{
   import air.steamworks.ane.SteamworksAne;
   import engine.saga.ISagaDlc;
   import engine.saga.SagaDlcEntry;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public final class SteamSagaDlc implements ISagaDlc
   {
       
      
      private var steamworks:SteamworksAne;
      
      public function SteamSagaDlc(param1:SteamworksAne)
      {
         super();
         this.steamworks = param1;
      }
      
      public function ownsDlc(param1:SagaDlcEntry, param2:Function = null) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         if(Boolean(this.steamworks) && this.steamworks.enabled)
         {
            if(param1.platform_id_steam_appid < 0)
            {
               return SagaDlcEntry.DLC_OWNED;
            }
            if(param1.platform_id_steam_appid)
            {
               _loc3_ = this.steamworks.SteamApps_BIsSubscribedApp(param1.platform_id_steam_appid);
               _loc4_ = this.steamworks.SteamApps_BIsDlcInstalled(param1.platform_id_steam_appid);
               if(_loc3_ && _loc4_)
               {
                  return SagaDlcEntry.DLC_OWNED;
               }
               if(_loc3_)
               {
                  return SagaDlcEntry.DLC_NEEDS_INSTALL;
               }
               return SagaDlcEntry.DLC_NOT_OWNED;
            }
         }
         return SagaDlcEntry.DLC_STATUS_UNKNOWN;
      }
      
      public function showStoreDlc(param1:SagaDlcEntry) : Boolean
      {
         var _loc3_:URLRequest = null;
         var _loc2_:String = "http://store.steampowered.com/app/" + param1.platform_id_steam_appid;
         if(Boolean(this.steamworks) && this.steamworks.enabled)
         {
            if(this.steamworks.SteamUtils_IsOverlayEnabled())
            {
               this.steamworks.SteamFriends_ActivateGameOverlayToWebPage(_loc2_);
               return true;
            }
         }
         if(param1.platform_id_steam_appid)
         {
            _loc3_ = new URLRequest(_loc2_);
            navigateToURL(_loc3_);
            return true;
         }
         return false;
      }
   }
}
