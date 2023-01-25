package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.core.util.StringUtil;
   import flash.utils.Dictionary;
   
   public class EternalArenaBoards
   {
      
      public static const OPTION_GROUP_TYPE:String = "board";
      
      public static const KEY_SAGA:String = "saga";
      
      public static const KEY_BOARD:String = "board";
      
      public static const KEY_SCENE:String = "scene";
      
      public static const KEY_WAVES:String = "waves";
       
      
      public var allboards:Vector.<EternalArenaBoard>;
      
      public var version:String;
      
      private var sagaIds:Vector.<String>;
      
      private var sagaIdToBasenamesDict:Dictionary;
      
      private var sagaIdToBasenames:Dictionary;
      
      private var basenameToBoards:Dictionary;
      
      private var basenameToBoardIds:Dictionary;
      
      public var sku:String;
      
      public var pathprefix:String;
      
      public function EternalArenaBoards(param1:String)
      {
         this.allboards = new Vector.<EternalArenaBoard>();
         this.sagaIds = new Vector.<String>();
         this.sagaIdToBasenamesDict = new Dictionary();
         this.sagaIdToBasenames = new Dictionary();
         this.basenameToBoards = new Dictionary();
         this.basenameToBoardIds = new Dictionary();
         super();
         this.sku = param1;
         this.pathprefix = param1 + "/scene/";
      }
      
      public function getUrl(param1:String, param2:String) : String
      {
         var _loc4_:EternalArenaBoard = null;
         var _loc3_:Vector.<EternalArenaBoard> = this.basenameToBoards[param2];
         var _loc5_:int = 0;
         var _loc6_:* = _loc3_;
         for each(_loc4_ in _loc6_)
         {
            return _loc4_.url;
         }
         return null;
      }
      
      public function fromText(param1:String, param2:ILogger) : EternalArenaBoards
      {
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc10_:* = false;
         var _loc11_:String = null;
         var _loc12_:EternalArenaBoard = null;
         param1 = param1.replace(/\r/g,"");
         var _loc3_:Array = param1.split("\n");
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc5_ = String(_loc3_[_loc4_]);
            if(_loc5_)
            {
               if(_loc5_.indexOf("#") == 0)
               {
                  if(_loc5_.indexOf("#version") == 0)
                  {
                     _loc8_ = _loc5_.split("=");
                     if(_loc8_.length == 2)
                     {
                        this.version = _loc8_[1];
                     }
                  }
               }
               else
               {
                  _loc6_ = _loc5_.split(",");
                  if(_loc6_.length < 3)
                  {
                     param2.error("Invalid line missing boards [" + (_loc4_ + 1) + "] [" + _loc5_ + "]");
                  }
                  else
                  {
                     _loc7_ = 2;
                     while(_loc7_ < _loc6_.length)
                     {
                        _loc9_ = String(_loc6_[_loc7_]);
                        _loc10_ = _loc9_.lastIndexOf("^") == _loc9_.length - 1;
                        if(_loc10_)
                        {
                           _loc9_ = _loc9_.substr(0,_loc9_.length - 1);
                        }
                        _loc11_ = String(_loc6_[1]);
                        if(!StringUtil.startsWith(_loc11_,this.pathprefix))
                        {
                           _loc11_ = this.pathprefix + _loc11_;
                        }
                        _loc12_ = new EternalArenaBoard(_loc6_[0],_loc11_,_loc9_,_loc10_);
                        this.addBoard(_loc12_);
                        _loc7_++;
                     }
                  }
               }
            }
            _loc4_++;
         }
         return this;
      }
      
      public function generateOptionGroup() : EternalArenaOptionGroup
      {
         var _loc4_:String = null;
         var _loc5_:EternalArenaOptionFilter = null;
         var _loc6_:Vector.<String> = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:EternalArenaOptionFilter = null;
         var _loc10_:Vector.<String> = null;
         var _loc11_:Vector.<EternalArenaBoard> = null;
         var _loc12_:int = 0;
         var _loc13_:EternalArenaBoard = null;
         var _loc14_:EternalArenaOptionFilter = null;
         var _loc1_:EternalArenaOptionGroup = new EternalArenaOptionGroup();
         _loc1_.id = OPTION_GROUP_TYPE;
         _loc1_.addOption(EternalArenaOption.ctor(KEY_SAGA,this.sagaIds,null));
         var _loc2_:Vector.<String> = new <String>["true","false"];
         var _loc3_:int = 0;
         while(_loc3_ < this.sagaIds.length)
         {
            _loc4_ = this.sagaIds[_loc3_];
            _loc5_ = new EternalArenaOptionFilter();
            _loc5_.addFiltration(KEY_SAGA,_loc4_);
            _loc6_ = this.sagaIdToBasenames[_loc4_];
            _loc1_.addOption(EternalArenaOption.ctor(KEY_SCENE,_loc6_,_loc5_));
            _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               _loc8_ = _loc6_[_loc7_];
               _loc9_ = new EternalArenaOptionFilter();
               _loc9_.addFiltration(KEY_SAGA,_loc4_);
               _loc9_.addFiltration(KEY_SCENE,"^" + _loc8_ + "$");
               _loc10_ = this.basenameToBoardIds[_loc8_];
               _loc1_.addOption(EternalArenaOption.ctor(KEY_BOARD,_loc10_,_loc9_));
               _loc11_ = this.basenameToBoards[_loc8_];
               _loc12_ = 0;
               while(_loc12_ < _loc11_.length)
               {
                  _loc13_ = _loc11_[_loc12_];
                  if(_loc13_.waves)
                  {
                     _loc14_ = new EternalArenaOptionFilter();
                     _loc14_.addFiltration(KEY_SAGA,_loc4_);
                     _loc14_.addFiltration(KEY_SCENE,"^" + _loc8_ + "$");
                     _loc14_.addFiltration(KEY_BOARD,_loc13_.boardId);
                     _loc1_.addOption(EternalArenaOption.ctor(KEY_WAVES,_loc2_,_loc14_));
                  }
                  _loc12_++;
               }
               _loc7_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      private function addBoard(param1:EternalArenaBoard) : void
      {
         this.allboards.push(param1);
         this._addBasename(param1.sagaId,param1.basename);
         this._addBoard(param1);
      }
      
      private function _addBasename(param1:String, param2:String) : void
      {
         var _loc3_:Dictionary = this.sagaIdToBasenamesDict[param1];
         var _loc4_:Vector.<String> = this.sagaIdToBasenames[param1];
         if(!_loc4_)
         {
            this.sagaIds.push(param1);
            _loc4_ = new Vector.<String>();
            this.sagaIdToBasenames[param1] = _loc4_;
            _loc3_ = new Dictionary();
            this.sagaIdToBasenamesDict[param1] = _loc3_;
         }
         if(!_loc3_[param2])
         {
            _loc3_[param2] = true;
            _loc4_.push(param2);
         }
      }
      
      private function _addBoard(param1:EternalArenaBoard) : void
      {
         var _loc2_:Vector.<EternalArenaBoard> = this.basenameToBoards[param1.basename];
         if(!_loc2_)
         {
            _loc2_ = new Vector.<EternalArenaBoard>();
            this.basenameToBoards[param1.basename] = _loc2_;
         }
         var _loc3_:Vector.<String> = this.basenameToBoardIds[param1.basename];
         if(!_loc3_)
         {
            _loc3_ = new Vector.<String>();
            this.basenameToBoardIds[param1.basename] = _loc3_;
         }
         _loc2_.push(param1);
         _loc3_.push(param1.boardId);
      }
   }
}
