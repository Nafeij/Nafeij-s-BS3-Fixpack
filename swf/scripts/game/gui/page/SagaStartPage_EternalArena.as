package game.gui.page
{
   import engine.core.locale.LocaleCategory;
   import engine.core.logging.ILogger;
   import engine.saga.Saga;
   import engine.saga.SagaDlcEntry;
   import engine.saga.SagaDlcEvent;
   import game.cfg.GameConfig;
   import game.gui.GameGuiContext;
   import game.gui.IGuiDialog;
   
   public class SagaStartPage_EternalArena
   {
       
      
      private var config:GameConfig;
      
      private var logger:ILogger;
      
      private const EA_DLC_ID:String = "dlc_eternal_arena";
      
      public function SagaStartPage_EternalArena(param1:GameConfig)
      {
         super();
         this.config = param1;
         this.logger = this.logger;
      }
      
      public function startEternalArena() : void
      {
         var hasPlayedEternalArena:Boolean;
         var saga:Saga = null;
         var eternalArenaUrl:String = null;
         var gc:GameGuiContext = null;
         var dialog:IGuiDialog = null;
         var yes:String = null;
         saga = this.config.saga;
         eternalArenaUrl = saga.def.eternalArenaSagaUrl;
         if(!eternalArenaUrl)
         {
            this.logger.error("no ea");
            return;
         }
         hasPlayedEternalArena = saga.getMasterSaveKeyBool(saga.def.eternalArenaSagaKey);
         if(!hasPlayedEternalArena)
         {
            gc = this.config.gameGuiContext;
            dialog = gc.createDialog();
            yes = gc.translate("yes");
            dialog.openTwoBtnDialog(gc.translate("start_eternal_arena_confirm_title"),gc.translate("start_eternal_arena_confirm_body"),yes,gc.translate("no"),function(param1:String):void
            {
               if(param1 == yes)
               {
                  saga.setMasterSaveKey(saga.def.eternalArenaSagaKey,true);
                  saga.launchSagaByUrl(eternalArenaUrl,null,saga.difficulty,saga.def.url);
               }
            });
            return;
         }
         saga.launchSagaByUrl(eternalArenaUrl,null,saga.difficulty,saga.def.url);
      }
      
      public function checkForDlc(param1:Function, param2:Function = null) : void
      {
         var title:String;
         var body:String;
         var saga:Saga = null;
         var entry:SagaDlcEntry = null;
         var dialog:IGuiDialog = null;
         var purchaseFunction:Function = param1;
         var unavailableFunction:Function = param2;
         saga = this.config.saga;
         var dlc_ea:Boolean = saga.getVarBool(this.EA_DLC_ID);
         if(dlc_ea)
         {
            if(this.checkEternalArenaFileExists(saga))
            {
               this.startEternalArena();
            }
            return;
         }
         entry = saga.def.dlcs.getDlc(this.EA_DLC_ID);
         if(!entry)
         {
            unavailableFunction();
            return;
         }
         title = this.config.gameGuiContext.translate("ss_welcome_title");
         body = this.config.gameGuiContext.translateCategory("platform_checking_dlc",LocaleCategory.PLATFORM);
         dialog = this.config.gameGuiContext.createDialog();
         dialog.openNoButtonDialog(title,body);
         entry.addEventListener(SagaDlcEvent.DLC_CHECK_COMPLETE,function(param1:SagaDlcEvent):void
         {
            entry.removeEventListener(SagaDlcEvent.DLC_CHECK_COMPLETE,arguments.callee);
            dialog.closeDialog("");
            if(purchaseFunction != null && param1.dlc_status == SagaDlcEntry.DLC_NEEDS_INSTALL)
            {
               purchaseFunction();
               return;
            }
            if(saga.getVarBool(EA_DLC_ID))
            {
               if(checkEternalArenaFileExists(saga))
               {
                  startEternalArena();
               }
            }
            else if(purchaseFunction != null)
            {
               purchaseFunction();
            }
         });
         entry.conditionallyApplyDlc(saga,saga.appinfo,false);
      }
      
      private function checkEternalArenaFileExists(param1:Saga) : Boolean
      {
         if(!this.config.context.appInfo.checkFileExists(this.config.resman.assetPath,param1.def.eternalArenaSagaUrl))
         {
            this.logger.e("CONFIG","ERROR: Invalid eternalArenaSagaUrl: " + param1.def.eternalArenaSagaUrl);
            return false;
         }
         return true;
      }
   }
}
