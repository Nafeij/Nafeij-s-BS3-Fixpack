package T_saga3_eternal_arena_fla_fla
{
   import flash.accessibility.AccessibilityProperties;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import passets.btn_ea_sm_blue;
   import passets.btn_ea_sm_green;
   import passets.btn_ea_sm_red;
   import passets.ea_btn_arrow;
   import passets.ea_thumbnail;
   
   public dynamic class saved_present_48 extends MovieClip
   {
       
      
      public var btn_saved_next:ea_btn_arrow;
      
      public var btn_saved_prev:ea_btn_arrow;
      
      public var button_$ea_arena_delete:btn_ea_sm_red;
      
      public var button_$ea_arena_edit:btn_ea_sm_blue;
      
      public var button_$ea_arena_play:btn_ea_sm_green;
      
      public var ea_arena_my_saved:TextField;
      
      public var text_saved_counter:TextField;
      
      public var text_saved_title:TextField;
      
      public var thumbnail:ea_thumbnail;
      
      public function saved_present_48()
      {
         super();
         this.__setAcc_text_saved_title_saved_present_controls_0();
         this.__setAcc_ea_arena_my_saved_saved_present_controls_0();
         this.__setAcc_text_saved_counter_saved_present_controls_0();
         this.__setAcc_btn_saved_next_saved_present_controls_0();
         this.__setAcc_btn_saved_prev_saved_present_controls_0();
         this.__setAcc_button_$ea_arena_play_saved_present_buttons_0();
         this.__setAcc_button_$ea_arena_edit_saved_present_buttons_0();
         this.__setAcc_button_$ea_arena_delete_saved_present_buttons_0();
      }
      
      internal function __setAcc_text_saved_title_saved_present_controls_0() : *
      {
         this.text_saved_title.accessibilityProperties = new AccessibilityProperties();
         this.text_saved_title.accessibilityProperties.silent = true;
      }
      
      internal function __setAcc_ea_arena_my_saved_saved_present_controls_0() : *
      {
         this.ea_arena_my_saved.accessibilityProperties = new AccessibilityProperties();
         this.ea_arena_my_saved.accessibilityProperties.silent = true;
      }
      
      internal function __setAcc_text_saved_counter_saved_present_controls_0() : *
      {
         this.text_saved_counter.accessibilityProperties = new AccessibilityProperties();
         this.text_saved_counter.accessibilityProperties.silent = true;
      }
      
      internal function __setAcc_btn_saved_next_saved_present_controls_0() : *
      {
         this.btn_saved_next.accessibilityProperties = new AccessibilityProperties();
         this.btn_saved_next.accessibilityProperties.forceSimple = true;
      }
      
      internal function __setAcc_btn_saved_prev_saved_present_controls_0() : *
      {
         this.btn_saved_prev.accessibilityProperties = new AccessibilityProperties();
         this.btn_saved_prev.accessibilityProperties.forceSimple = true;
      }
      
      internal function __setAcc_button_$ea_arena_play_saved_present_buttons_0() : *
      {
         this.button_$ea_arena_play.accessibilityProperties = new AccessibilityProperties();
         this.button_$ea_arena_play.accessibilityProperties.forceSimple = true;
      }
      
      internal function __setAcc_button_$ea_arena_edit_saved_present_buttons_0() : *
      {
         this.button_$ea_arena_edit.accessibilityProperties = new AccessibilityProperties();
         this.button_$ea_arena_edit.accessibilityProperties.forceSimple = true;
      }
      
      internal function __setAcc_button_$ea_arena_delete_saved_present_buttons_0() : *
      {
         this.button_$ea_arena_delete.accessibilityProperties = new AccessibilityProperties();
         this.button_$ea_arena_delete.accessibilityProperties.forceSimple = true;
      }
   }
}
