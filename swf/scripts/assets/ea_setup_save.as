package assets
{
   import flash.text.TextField;
   import game.gui.pages.GuiSagaEternalArenaSetup_save;
   import passets.btn_ea_sm_blue;
   import passets.btn_ea_sm_green;
   import passets.ea_thumbnail;
   
   public dynamic class ea_setup_save extends GuiSagaEternalArenaSetup_save
   {
       
      
      public var button_$cancel:btn_ea_sm_blue;
      
      public var button_$save:btn_ea_sm_green;
      
      public var input:TextField;
      
      public var thumbnail:ea_thumbnail;
      
      public function ea_setup_save()
      {
         super();
      }
   }
}
