package game.gui.battle
{
   import engine.core.locale.Locale;
   import engine.core.util.StringUtil;
   import engine.gui.GuiGpNav;
   import engine.saga.ea.EternalArenaArrangement;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import game.gui.ButtonWithIndex;
   import game.gui.GuiBase;
   import game.gui.IGuiContext;
   import game.gui.IGuiDialog;
   import game.gui.pages.GuiSagaEternalArenaSetup_saveListener;
   
   public class GuiEternalArenaBattleSave extends GuiBase
   {
       
      
      public var mc:MovieClip;
      
      protected var _listener:GuiSagaEternalArenaSetup_saveListener;
      
      public var _input:TextField;
      
      public var _button_$cancel:ButtonWithIndex;
      
      public var _button_$save:ButtonWithIndex;
      
      private var _nav:GuiGpNav;
      
      protected var _arrangement:EternalArenaArrangement;
      
      protected var _filename:String;
      
      protected var _json:Object;
      
      public function GuiEternalArenaBattleSave()
      {
         super();
         visible = false;
         this.getReferences();
      }
      
      protected function getReferences() : void
      {
         this._input = requireGuiChild("input") as TextField;
         this._button_$cancel = requireGuiChild("button_ea$cancel") as ButtonWithIndex;
         this._button_$save = requireGuiChild("button_ea$ea_arena_save_battle") as ButtonWithIndex;
      }
      
      public function cleanup() : void
      {
         if(this._nav)
         {
            this._nav.cleanup();
            this._nav = null;
         }
      }
      
      public function init(param1:IGuiContext, param2:GuiSagaEternalArenaSetup_saveListener) : void
      {
         super.initGuiBase(param1);
         this._listener = param2;
         this._button_$cancel.guiButtonContext = param1;
         this._button_$save.guiButtonContext = param1;
         this._button_$cancel.setDownFunction(this.buttonCancelHandler);
         this._button_$save.setDownFunction(this.buttonSaveHandler);
         this._setupNav();
      }
      
      private function _setupNav() : void
      {
         this._nav = new GuiGpNav(context,"ea_start_nav",this._listener.getOverlay());
         this._nav.alwaysHintControls = true;
         this._nav.add(this._button_$cancel);
         this._nav.add(this._button_$save);
         this._nav.add(this._input);
         this._nav.autoSelect();
      }
      
      public function showSave(param1:EternalArenaArrangement) : void
      {
         this._arrangement = param1;
         var _loc2_:String = StringUtil.stripSuffix(param1.filename,".json");
         if(!_loc2_)
         {
            _loc2_ = param1.generateFilename();
         }
         var _loc3_:Locale = _context.locale;
         this._input.text = this._arrangement.getLocalizedName(_loc3_);
      }
      
      private function buttonCancelHandler(param1:*) : void
      {
         this._listener.saveClosed();
      }
      
      private function buttonSaveHandler(param1:*) : void
      {
         var _loc3_:Locale = null;
         var _loc4_:IGuiDialog = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:String = this._input.text;
         this._filename = StringUtil.safetyFileString(_loc2_);
         this._filename = this._filename.toLowerCase();
         if(!this._arrangement.ordinal)
         {
            _loc3_ = _context.locale;
            if(this._arrangement.getLocalizedName(_loc3_) != _loc2_)
            {
               this._arrangement.setName(_loc2_);
            }
         }
         this._json = this._arrangement.toJson();
         if(!this._listener.saveWrite(this._filename,this._json,false,false))
         {
            _loc4_ = _context.createDialog();
            _loc5_ = String(_context.translate("yes"));
            _loc6_ = String(_context.translate("no"));
            _loc7_ = String(_context.translate("ea_save_overwrite_title"));
            _loc8_ = String(_context.translate("ea_save_overwrite_body"));
            _loc8_ = _loc8_.replace("{filename}",this._filename);
            _loc4_.openTwoBtnDialog(_loc7_,_loc8_,_loc5_,_loc6_,this.dialogCloseHandler);
            return;
         }
         this._listener.saveClosed();
      }
      
      private function dialogCloseHandler(param1:String) : void
      {
         var _loc2_:String = String(_context.translate("yes"));
         if(_loc2_ == param1)
         {
            this.handleWrite();
         }
      }
      
      public function setVisible(param1:Boolean) : void
      {
         visible = param1;
         if(this._nav)
         {
            if(param1)
            {
               this._nav.activate();
            }
            else
            {
               this._nav.deactivate();
            }
         }
      }
      
      private function handleWrite() : void
      {
         var _loc1_:IGuiDialog = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(!this._listener.saveWrite(this._filename,this._json,true,false))
         {
            _loc1_ = _context.createDialog();
            _loc2_ = String(_context.translate("ok"));
            _loc3_ = String(_context.translate("ea_save_error_title"));
            _loc4_ = String(_context.translate("ea_save_error_body"));
            _loc1_.openDialog(_loc3_,_loc4_,_loc2_,this.dialogCloseHandler);
            return;
         }
         this._listener.saveClosed();
      }
   }
}
