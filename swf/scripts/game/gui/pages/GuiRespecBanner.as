package game.gui.pages
{
   import engine.core.gp.GpSource;
   import engine.entity.def.IEntityDef;
   import engine.saga.ISaga;
   import flash.events.Event;
   import game.gui.GuiGamePrefs;
   
   public class GuiRespecBanner extends GuiPromoteBanner
   {
      
      public static const EVENT_RESPEC:String = "GuiPromoteBanner.EVENT_RESPEC";
       
      
      public function GuiRespecBanner()
      {
         super();
      }
      
      override protected function getTextFieldName() : String
      {
         return "text$respec";
      }
      
      override public function update() : void
      {
         if(!context || !context.saga || !context.legend)
         {
            visible = false;
            return;
         }
         var _loc1_:ISaga = context.saga;
         if(!_loc1_.isEternalArena)
         {
            visible = false;
            return;
         }
         var _loc2_:IEntityDef = context.legend.roster.getEntityDefById(unitId);
         if(!_loc2_ || !_loc2_.respecAvailable)
         {
            visible = false;
            return;
         }
         visible = true;
         var _loc3_:Boolean = Boolean(context.getPref(GuiGamePrefs.PREF_PG_PROMOTE_DISMISSED_PREFIX_ + unitId));
         extended = !_loc3_ || Boolean(GpSource.instance.numDevices);
      }
      
      override public function doPress(param1:Boolean) : void
      {
         var _loc2_:IEntityDef = context.legend.roster.getEntityDefById(unitId);
         if(!_loc2_)
         {
            context.logger.info("GuiRespecBanner.clickHandler [" + unitId + "] NO UNIT");
            return;
         }
         if(!extended)
         {
            if(!_loc2_.respecAvailable)
            {
               context.logger.info("GuiRespecBanner.clickHandler [" + unitId + "] NOT READY extended=" + extended + " respecAvailable=" + _loc2_.respecAvailable);
               return;
            }
         }
         if(param1)
         {
            if(!isPromoteBannerClickOk)
            {
               context.logger.info("GuiRespecBanner.clickHandler [" + unitId + "] NOT CLICKABLE");
               return;
            }
         }
         context.logger.info("GuiRespecBanner.clickHandler [" + unitId + "] OK");
         context.playSound("ui_generic");
         context.setPref(GuiGamePrefs.PREF_PG_PROMOTE_DISMISSED_PREFIX_ + unitId,false);
         dispatchEvent(new Event(EVENT_RESPEC));
         this.update();
      }
   }
}
