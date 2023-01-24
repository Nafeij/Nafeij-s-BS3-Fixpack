package game.gui.pages
{
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaSetup_InfoPanelRoster extends GuiBase
   {
       
      
      public var _glob_players:GuiSagaEternalArenaSetup_IconsGlob;
      
      public var _glob_enemies:GuiSagaEternalArenaSetup_IconsGlob;
      
      public var _glob_adds:GuiSagaEternalArenaSetup_IconsGlob;
      
      private var _tooltipHolder:MovieClip;
      
      private var ids_roster:Vector.<String>;
      
      private var ids_enemies:Vector.<String>;
      
      private var ids_adds:Vector.<String>;
      
      private var _iconsByDisplay:Dictionary;
      
      public function GuiSagaEternalArenaSetup_InfoPanelRoster()
      {
         this._iconsByDisplay = new Dictionary();
         super();
      }
      
      public function init(param1:IGuiContext, param2:MovieClip) : void
      {
         super.initGuiBase(param1);
         this._tooltipHolder = param2;
         this._glob_players = new GuiSagaEternalArenaSetup_IconsGlob(param1,requireGuiChild("glob_players") as MovieClip,this._tooltipHolder);
         this._glob_enemies = new GuiSagaEternalArenaSetup_IconsGlob(param1,requireGuiChild("glob_enemies") as MovieClip,this._tooltipHolder);
         this._glob_adds = new GuiSagaEternalArenaSetup_IconsGlob(param1,requireGuiChild("glob_adds") as MovieClip,this._tooltipHolder);
      }
      
      public function cleanup() : void
      {
         this._glob_players.cleanup();
         this._glob_enemies.cleanup();
         this._glob_adds.cleanup();
      }
      
      public function updatePlayerRoster(param1:Vector.<String>) : void
      {
         this.ids_roster = param1;
         this._glob_players.arrangeIcons(param1);
         this._glob_enemies.place(this._glob_players.bottom);
         this._glob_adds.place(this._glob_enemies.bottom);
      }
      
      public function updateEnemies(param1:Vector.<String>, param2:Vector.<String>) : void
      {
         this.ids_enemies = param1;
         this.ids_adds = param2;
         this._glob_enemies.arrangeIcons(param1);
         this._glob_adds.arrangeIcons(param2,false);
         this._glob_adds.place(this._glob_enemies.bottom);
      }
   }
}
