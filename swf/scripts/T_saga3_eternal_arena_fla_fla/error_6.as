package T_saga3_eternal_arena_fla_fla
{
   import flash.accessibility.AccessibilityProperties;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class error_6 extends MovieClip
   {
       
      
      public var $ea_challenge_error:TextField;
      
      public var text_detail:TextField;
      
      public function error_6()
      {
         super();
         this.__setAcc_text_detail_error_Layer_1_0();
      }
      
      internal function __setAcc_text_detail_error_Layer_1_0() : *
      {
         this.text_detail.accessibilityProperties = new AccessibilityProperties();
         this.text_detail.accessibilityProperties.silent = true;
      }
   }
}
