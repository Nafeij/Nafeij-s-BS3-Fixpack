package assets
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import game.gui.pages.GuiSagaEternalArenaLeaderboards;
   import passets.ea_back;
   import passets.ea_banner_alltime;
   import passets.ea_banner_tournament;
   import passets.lb_timer;
   
   public dynamic class saga3_ea_leaderboards extends GuiSagaEternalArenaLeaderboards
   {
       
      
      public var $ea_lb_title:TextField;
      
      public var $ea_see_previous_lb:TextField;
      
      public var bmpholder_common__gui__saga3e__ea_bg_red_start:MovieClip;
      
      public var bmpholder_common__gui__saga3e__ea_bg_topbanner:MovieClip;
      
      public var btn_wiki$ea_wiki:passets_btn_wiki;
      
      public var buttonClose:ea_back;
      
      public var button_$ss_lb_friends:ea_banner_alltime;
      
      public var button_$ss_lb_global:ea_banner_tournament;
      
      public var lbs:passets;
      
      public var timer:lb_timer;
      
      public var winner:MovieClip;
      
      public function saga3_ea_leaderboards()
      {
         super();
      }
   }
}
