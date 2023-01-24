package game.gui.pages
{
   import engine.saga.Saga;
   import engine.saga.ea.EternalArenaArrangement;
   import engine.saga.ea.EternalArenaBoards;
   import engine.saga.ea.EternalArenaOptionGroupTypes;
   import engine.saga.ea.SagaEternalArena;
   import flash.utils.Dictionary;
   import game.gui.GuiBase;
   import game.gui.GuiIcon;
   import game.gui.IGuiContext;
   
   public class GuiSagaEternalArenaThumbnail extends GuiBase
   {
      
      public static const TYPE_BG:String = "bg";
      
      public static const TYPE_ARTIFACT:String = "artifact";
      
      public static const TYPE_INITIATIVE:String = "initiative";
      
      public static const TYPE_TIMER:String = "timer";
       
      
      public var _iconIndexes:Object;
      
      public var _icons:Dictionary;
      
      public var folder:String;
      
      private var indexBase:int;
      
      public var MARGIN_X:int = 24;
      
      public var MARGIN_Y:int = 24;
      
      public function GuiSagaEternalArenaThumbnail()
      {
         this._iconIndexes = {
            "bg":0,
            "artifact":1,
            "initiative":2,
            "timer":3
         };
         this._icons = new Dictionary();
         super();
         this.indexBase = numChildren;
         mouseEnabled = mouseChildren = false;
      }
      
      public function cleanup() : void
      {
         this.clear();
         this._icons = null;
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this._icons)
         {
            this.setIcon(_loc1_,null);
         }
      }
      
      public function init(param1:IGuiContext) : void
      {
         super.initGuiBase(param1);
         var _loc2_:Saga = param1.saga;
         var _loc3_:SagaEternalArena = _loc2_.eternalArena;
         this.folder = _loc3_.def.thumbnailsUrl;
      }
      
      public function getIcon(param1:String) : GuiIcon
      {
         return this._icons[param1];
      }
      
      private function setIcon(param1:String, param2:GuiIcon) : void
      {
         var _loc4_:int = 0;
         var _loc3_:GuiIcon = this._icons[param1];
         if(_loc3_)
         {
            removeChild(_loc3_);
            _loc3_.release();
         }
         this._icons[param1] = param2;
         if(param2)
         {
            param2.name = param1;
            param2.x = this.MARGIN_X;
            param2.y = this.MARGIN_Y;
            _loc4_ = Math.min(numChildren,this.indexBase + this._iconIndexes[param1]);
            addChildAt(param2,_loc4_);
         }
      }
      
      private function setIconUrl(param1:String, param2:String) : void
      {
         if(!_context)
         {
            return;
         }
         var _loc3_:GuiIcon = this._icons[param1];
         if(_loc3_ && _loc3_.resource && _loc3_.resource.url == param2)
         {
            return;
         }
         if(!param2)
         {
            this.setIcon(param1,null);
            return;
         }
         this.setIcon(param1,_context.getIcon(param2));
      }
      
      public function updateBg(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:* = this.folder + "/" + param1 + "/" + param2 + "__" + param3 + ".png";
         this.setIconUrl(TYPE_BG,_loc4_);
      }
      
      public function updateOverlay(param1:String, param2:String) : void
      {
         if(!param2)
         {
            this.setIcon(param1,null);
            return;
         }
         var _loc3_:* = this.folder + "/overlay_" + param1 + "_" + param2 + ".png";
         this.setIconUrl(param1,_loc3_);
      }
      
      public function updateFromArrangement(param1:EternalArenaArrangement) : void
      {
         if(!param1)
         {
            this.clear();
            visible = false;
            return;
         }
         visible = true;
         var _loc2_:String = EternalArenaOptionGroupTypes.BOARD;
         var _loc3_:String = param1.getValue(_loc2_,EternalArenaBoards.KEY_SAGA);
         var _loc4_:String = param1.getValue(_loc2_,EternalArenaBoards.KEY_SCENE);
         var _loc5_:String = param1.getValue(_loc2_,EternalArenaBoards.KEY_BOARD);
         this.updateBg(_loc3_,_loc4_,_loc5_);
         var _loc6_:String = EternalArenaOptionGroupTypes.RULES;
         var _loc7_:String = param1.getValue(_loc6_,"artifact");
         var _loc8_:String = param1.getValue(_loc6_,"initiative");
         var _loc9_:String = param1.getValue(_loc6_,"timer");
         this.updateOverlay(GuiSagaEternalArenaThumbnail.TYPE_ARTIFACT,_loc7_);
         this.updateOverlay(GuiSagaEternalArenaThumbnail.TYPE_INITIATIVE,_loc8_);
         this.updateOverlay(GuiSagaEternalArenaThumbnail.TYPE_TIMER,_loc9_);
      }
   }
}
