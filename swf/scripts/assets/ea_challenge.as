package assets
{
   import flash.display.MovieClip;
   import game.gui.pages.GuiSagaEternalArenaStart_challenge;
   import passets.btn_ea_nine;
   import passets.ea_thumbnail;
   
   public dynamic class ea_challenge extends GuiSagaEternalArenaStart_challenge
   {
       
      
      public var active:MovieClip;
      
      public var button_$ea_view_leaderboards:btn_ea_nine;
      
      public var error:MovieClip;
      
      public var pending:MovieClip;
      
      public var thumbnail:ea_thumbnail;
      
      public function ea_challenge()
      {
         super();
      }
   }
}
