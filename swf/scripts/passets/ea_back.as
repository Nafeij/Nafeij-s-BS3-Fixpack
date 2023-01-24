package passets
{
   import game.gui.ButtonWithIndex;
   
   public dynamic class ea_back extends ButtonWithIndex
   {
       
      
      public function ea_back()
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
