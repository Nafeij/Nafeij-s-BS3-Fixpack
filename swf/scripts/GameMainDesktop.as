package
{
   import com.stoicstudio.platform.Platform;
   import com.stoicstudio.platform.PlatformInput;
   import com.stoicstudio.platform.gog.GogEntryHelper;
   import com.stoicstudio.platform.steam.SteamEntryHelper;
   import com.stoicstudio.platform.tencent.TencentEntryHelper;
   import engine.anim.def.AnimFrame;
   import engine.core.util.BuildId;
   import engine.core.util.BuildInfo;
   import engine.core.util.BuildScmRev;
   import engine.core.util.BuilderInfo;
   import engine.saga.SagaDef;
   import engine.saga.VariableStaticDlcLinkage3;
   import engine.saga.action.Action_Battle;
   import engine.saga.convo.def.ConvoLinkDefVars;
   import engine.saga.vars.VariableStaticDlcLinkage;
   import engine.talent.Talents;
   import game.entry.EntryHelperDesktopCtor;
   import game.entry.FbEntryHelper;
   import game.entry.GameApplicationDesktopAir;
   import game.entry.GameEntryDesktopAir;
   import game.entry.IEntryHelperDesktop;
   import game.entry.OriginEntryHelper;
   import game.gui.GuiSagaOptionsConfig;
   import game.gui.InitializeGui;
   import game.session.states.VideoState;
   import lib.fmodstudio.FmodStudioSoundDriver;
   
   public class GameMainDesktop extends GameApplicationDesktopAir
   {
       
      
      public function GameMainDesktop()
      {
         var _loc5_:IEntryHelperDesktop = null;
         GameEntryDesktopAir.soundDriver = FmodStudioSoundDriver;
         EntryHelperDesktopCtor.registerEntryHelper("steam",SteamEntryHelper);
         EntryHelperDesktopCtor.registerEntryHelper("origin",OriginEntryHelper);
         EntryHelperDesktopCtor.registerEntryHelper("gog",GogEntryHelper);
         EntryHelperDesktopCtor.registerEntryHelper("fb",FbEntryHelper);
         EntryHelperDesktopCtor.registerEntryHelper("tgp",TencentEntryHelper);
         GuiSagaOptionsConfig.ENABLE_FULLSCREEN = true;
         VideoState.USE_1080_MP4 = true;
         Talents.ENABLED = true;
         addUncaughtErrorHandler();
         var _loc1_:BuildScmRev = new BuildScmRev("hg","0cfd0e00ce162e929ff2567c206aba9e21ce8fa2");
         var _loc2_:BuilderInfo = new BuilderInfo("saga3-v1.4.4 4","2019-01-11 23:17:55");
         var _loc3_:BuildId = new BuildId("saga3-v1.4.4","2.61.04");
         var _loc4_:BuildInfo = new BuildInfo(_loc3_,_loc2_,_loc1_);
         super(_loc4_);
         var _loc6_:String = "steam";
         Platform.id = _loc6_;
         entry.logInfo("GameMainDesktop build_platform=[" + _loc6_ + "]");
         entry.logInfo("GameMainDesktop build_info=[" + _loc4_ + "]");
         _loc5_ = EntryHelperDesktopCtor.fromPlatform(_loc6_,entry.appInfo);
         entry.setEntryHelper(_loc5_);
         var _loc7_:Boolean = true;
         InitializeGui.initializeGuis(_loc7_,this.entry.appInfo.logger);
         PlatformInput.hasClicker = true;
         PlatformInput.hasKeyboard = true;
         GuiSagaOptionsConfig.ENABLE_FULLSCREEN = true;
         Action_Battle.USE_DANGER_BONUS_COMBATANTS = false;
         AnimFrame.COMPRESSED_FRAMES = true;
         ConvoLinkDefVars.CHECK_LINK_PATHS = true;
         Platform.supportsOSFilePicker = true;
         SagaDef.SURVIVAL_ENABLED = true;
         SagaDef.ETERNAL_ARENA_ENABLED = true;
         VariableStaticDlcLinkage.setStaticDlcLinkage(new VariableStaticDlcLinkage3());
         entry.logInfo("SagaDef.SURVIVAL_ENABLED=" + SagaDef.SURVIVAL_ENABLED);
      }
   }
}
