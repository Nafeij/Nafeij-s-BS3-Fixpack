package T_saga3_eternal_arena_fla_fla
{
   import flash.accessibility.AccessibilityProperties;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import passets.ea_thumbnail;
   
   public dynamic class pending_5 extends MovieClip
   {
       
      
      public var $ea_challenge_pending:TextField;
      
      public var text_detail:TextField;
      
      public var text_timer:TextField;
      
      public var text_title:TextField;
      
      public var thumbnail:ea_thumbnail;
      
      public function pending_5()
      {
         super();
         this.__setAcc_text_detail_pending_bg_0();
         this.__setAcc_text_timer_pending_bg_0();
      }
      
      internal function __setAcc_text_detail_pending_bg_0() : *
      {
         this.text_detail.accessibilityProperties = new AccessibilityProperties();
         this.text_detail.accessibilityProperties.silent = true;
      }
      
      internal function __setAcc_text_timer_pending_bg_0() : *
      {
         this.text_timer.accessibilityProperties = new AccessibilityProperties();
         this.text_timer.accessibilityProperties.silent = true;
      }
   }
}
