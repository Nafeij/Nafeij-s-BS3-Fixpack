package passets
{
   import flash.accessibility.AccessibilityProperties;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import game.gui.pages.GuiSagaEternalArenaStart_saved;
   
   public dynamic class ea_start_saved extends GuiSagaEternalArenaStart_saved
   {
       
      
      public var $ea_arena_saved:TextField;
      
      public var $ea_saved_none:TextField;
      
      public var button_$ea_arena_create:btn_ea_nine;
      
      public var saved_present:MovieClip;
      
      public function ea_start_saved()
      {
         super();
         this.__setAcc_$ea_arena_saved_passets_ea_start_saved_title_0();
      }
      
      internal function __setAcc_$ea_arena_saved_passets_ea_start_saved_title_0() : *
      {
         this.$ea_arena_saved.accessibilityProperties = new AccessibilityProperties();
         this.$ea_arena_saved.accessibilityProperties.silent = true;
      }
   }
}
