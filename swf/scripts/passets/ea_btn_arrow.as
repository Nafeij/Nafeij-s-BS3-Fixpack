package passets
{
   import game.gui.ButtonWithIndex;
   
   public dynamic class ea_btn_arrow extends ButtonWithIndex
   {
       
      
      public function ea_btn_arrow()
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
