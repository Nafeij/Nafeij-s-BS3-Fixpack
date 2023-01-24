package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import game.gui.pages.GuiSagaEternalArenaLeaderboards_lbs;
   import passets.ea_btn_arrow;
   import passets.ea_chits_group;
   
   public dynamic class passets extends GuiSagaEternalArenaLeaderboards_lbs
   {
       
      
      public var $ss_lb_name:TextField;
      
      public var $ss_lb_rank:TextField;
      
      public var $ss_lb_score:TextField;
      
      public var button_board_next:ea_btn_arrow;
      
      public var button_board_prev:ea_btn_arrow;
      
      public var chits:ea_chits_group;
      
      public var mc_texts_name:MovieClip;
      
      public var mc_texts_rank:MovieClip;
      
      public var mc_texts_score:MovieClip;
      
      public var text_board_name:TextField;
      
      public var text_challenge_title:TextField;
      
      public var text_info_desc:TextField;
      
      public function passets()
      {
         super();
      }
   }
}
