package passets
{
   import game.gui.ButtonWithIndex;
   
   public dynamic class abl_pop_common_arrow_button extends ButtonWithIndex
   {
       
      
      public function abl_pop_common_arrow_button()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
      }
   }
}
