package game.gui.pages
{
   import engine.core.locale.Locale;
   import engine.gui.GuiContextEvent;
   import engine.saga.Saga;
   import engine.saga.ea.EternalArenaArrangement;
   import engine.saga.ea.SagaEternalArena;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import game.gui.ButtonWithIndex;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   import game.gui.IGuiDialog;
   import game.gui.page.IGuiSagaEternalArenaStartListener;
   
   public class GuiSagaEternalArenaStart_saved extends GuiBase
   {
       
      
      public var listener:IGuiSagaEternalArenaStartListener;
      
      public var _thumbnail:GuiSagaEternalArenaThumbnail;
      
      public var _text_saved_title:TextField;
      
      public var _text_saved_counter:TextField;
      
      public var _text_saved_filename:TextField;
      
      public var _$ea_arena_saved:TextField;
      
      public var _btn_saved_next:ButtonWithIndex;
      
      public var _btn_saved_prev:ButtonWithIndex;
      
      public var _button_$ea_arena_create:ButtonWithIndex;
      
      public var _button_$ea_arena_delete:ButtonWithIndex;
      
      public var _button_$ea_arena_edit:ButtonWithIndex;
      
      public var _button_$ea_arena_play:ButtonWithIndex;
      
      public var _$ea_saved_none:TextField;
      
      public var _saved_present:MovieClip;
      
      private var _arrangements:Vector.<EternalArenaArrangement>;
      
      private var _arrangement:EternalArenaArrangement;
      
      private var _index:int;
      
      public function GuiSagaEternalArenaStart_saved()
      {
         super();
         this._saved_present = requireGuiChild("saved_present") as MovieClip;
         this._thumbnail = requireGuiChild("thumbnail",this._saved_present) as GuiSagaEternalArenaThumbnail;
         this._text_saved_title = requireGuiChild("text_saved_title",this._saved_present) as TextField;
         this._text_saved_counter = requireGuiChild("text_saved_counter",this._saved_present) as TextField;
         this._text_saved_filename = requireGuiChild("ea_arena_my_saved",this._saved_present) as TextField;
         this._$ea_arena_saved = requireGuiChild("$ea_arena_saved") as TextField;
         this._$ea_saved_none = requireGuiChild("$ea_saved_none") as TextField;
         this._$ea_saved_none.visible = false;
         this._btn_saved_next = requireGuiChild("btn_saved_next",this._saved_present) as ButtonWithIndex;
         this._btn_saved_prev = requireGuiChild("btn_saved_prev",this._saved_present) as ButtonWithIndex;
         this._button_$ea_arena_create = requireGuiChild("button_$ea_arena_create") as ButtonWithIndex;
         this._button_$ea_arena_delete = requireGuiChild("button_$ea_arena_delete",this._saved_present) as ButtonWithIndex;
         this._button_$ea_arena_edit = requireGuiChild("button_$ea_arena_edit",this._saved_present) as ButtonWithIndex;
         this._button_$ea_arena_play = requireGuiChild("button_$ea_arena_play",this._saved_present) as ButtonWithIndex;
         registerScalableTextfieldAlign(this._text_saved_title,"center");
         registerScalableTextfieldAlign(this._text_saved_counter,"center");
         registerScalableTextfieldAlign(this._text_saved_filename,"center");
      }
      
      public function cleanup() : void
      {
         _context.removeEventListener(GuiContextEvent.LOCALE,this.localeHandler);
         this._thumbnail.cleanup();
      }
      
      public function init(param1:IGuiContext, param2:IGuiSagaEternalArenaStartListener) : void
      {
         super.initGuiBase(param1);
         this.listener = param2;
         this._thumbnail.init(param1);
         registerScalableTextfield(this._text_saved_title);
         registerScalableTextfield(this._text_saved_filename);
         registerScalableTextfield(this._$ea_arena_saved);
         this._button_$ea_arena_create.guiButtonContext = _context;
         this._button_$ea_arena_delete.guiButtonContext = _context;
         this._button_$ea_arena_edit.guiButtonContext = _context;
         this._button_$ea_arena_play.guiButtonContext = _context;
         this._btn_saved_next.guiButtonContext = _context;
         this._btn_saved_prev.guiButtonContext = _context;
         this._btn_saved_next.setDownFunction(this.buttonSavedNextHandler);
         this._btn_saved_prev.setDownFunction(this.buttonSavedPrevHandler);
         this._button_$ea_arena_create.setDownFunction(this.buttonCreateArenaHandler);
         this._button_$ea_arena_delete.setDownFunction(this.buttonDeleteHandler);
         this._button_$ea_arena_edit.setDownFunction(this.buttonEditHandler);
         this._button_$ea_arena_play.setDownFunction(this.buttonPlayHandler);
         _context.addEventListener(GuiContextEvent.LOCALE,this.localeHandler);
         this.localeHandler(null);
         var _loc3_:Vector.<EternalArenaArrangement> = param2.guiEternalArenaLoadArrangements();
         this.showLoadedArrangements(_loc3_);
      }
      
      private function localeHandler(param1:Event) : void
      {
         this._button_$ea_arena_create.handleLocaleChange();
         this._button_$ea_arena_delete.handleLocaleChange();
         this._button_$ea_arena_edit.handleLocaleChange();
         this._button_$ea_arena_play.handleLocaleChange();
         scaleTextfields();
      }
      
      public function showLoadedArrangements(param1:Vector.<EternalArenaArrangement>) : void
      {
         this._arrangements = param1;
         this.selectLoadedArrangement(0);
      }
      
      private function _savedPresentVisible(param1:Boolean) : void
      {
         this._saved_present.visible = this._button_$ea_arena_delete.visible = this._button_$ea_arena_edit.visible = this._button_$ea_arena_play.visible = param1;
         this._$ea_saved_none.visible = !param1;
      }
      
      public function selectLoadedArrangement(param1:int) : void
      {
         if(0 == this._arrangements.length)
         {
            this._index = -1;
            this._arrangement = null;
            this._savedPresentVisible(false);
            this._updateThumbnail();
            return;
         }
         this._index = Math.max(0,Math.min(param1,this._arrangements.length - 1));
         this._savedPresentVisible(true);
         this._arrangement = this._arrangements[this._index];
         var _loc2_:String = _context.translate("ea_saved_counter");
         _loc2_ = _loc2_.replace("{index}",this._index + 1);
         _loc2_ = _loc2_.replace("{count}",this._arrangements.length);
         this._text_saved_counter.htmlText = _loc2_;
         var _loc3_:Locale = _context.locale;
         var _loc4_:String = this._arrangement.getLocalizedName(_loc3_);
         this._text_saved_title.htmlText = _loc4_;
         this._text_saved_filename.htmlText = this._arrangement.filename;
         scaleTextField(this._text_saved_title);
         scaleTextField(this._text_saved_filename);
         this._updateThumbnail();
      }
      
      private function _updateThumbnail() : void
      {
         this._thumbnail.updateFromArrangement(this._arrangement);
         this.listener.guiEternalArenaUpdateButtonVisibility();
      }
      
      public function buttonSavedNextHandler(param1:*) : void
      {
         var _loc2_:int = (this._index + 1) % this._arrangements.length;
         this.selectLoadedArrangement(_loc2_);
      }
      
      public function buttonSavedPrevHandler(param1:*) : void
      {
         var _loc2_:int = (this._arrangements.length + this._index - 1) % this._arrangements.length;
         this.selectLoadedArrangement(_loc2_);
      }
      
      private function buttonCreateArenaHandler(param1:*) : void
      {
         this.listener.guiEternalArenaSetupArena(null);
      }
      
      private function buttonDeleteHandler(param1:*) : void
      {
         if(!this._arrangement)
         {
            return;
         }
         var _loc2_:IGuiDialog = _context.createDialog();
         var _loc3_:String = _context.translate("yes");
         var _loc4_:String = _context.translate("no");
         var _loc5_:String = _context.translate("ea_delete_title");
         var _loc6_:String = _context.translate("ea_delete_body");
         _loc6_ = _loc6_.replace("{filename}",this._arrangement.filename);
         _loc2_.openTwoBtnDialog(_loc5_,_loc6_,_loc3_,_loc4_,this.dialogCloseHandler);
      }
      
      private function dialogCloseHandler(param1:String) : void
      {
         var _loc2_:String = _context.translate("yes");
         if(_loc2_ == param1)
         {
            this.listener.guiEternalArenaDeleteArrangement(this._arrangement);
            this._arrangements.removeAt(this._index);
            this.selectLoadedArrangement(this._index);
         }
      }
      
      private function buttonEditHandler(param1:*) : void
      {
         this.listener.guiEternalArenaSetupArena(this._arrangement);
      }
      
      private function buttonPlayHandler(param1:*) : void
      {
         var _loc2_:Saga = _context.saga;
         var _loc3_:SagaEternalArena = _loc2_.eternalArena;
         _loc3_.playBattle(this._arrangement,false);
      }
   }
}
