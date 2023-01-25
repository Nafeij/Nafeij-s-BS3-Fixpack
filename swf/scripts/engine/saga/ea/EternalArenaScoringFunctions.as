package engine.saga.ea
{
   import engine.core.logging.ILogger;
   import engine.core.util.StringUtil;
   import engine.expression.Parser;
   import flash.utils.Dictionary;
   
   public class EternalArenaScoringFunctions
   {
      
      public static const functionSchema:Object = {
         "name":"EternalArenaScoringFuction",
         "type":"object",
         "properties":{
            "stringKey":{"type":"string"},
            "functionStr":{"type":"string"}
         }
      };
      
      public static const schema:Object = {
         "name":"EternalArenaScoringFunctions",
         "type":"array",
         "items":functionSchema
      };
       
      
      public var functionStringKeys:Dictionary;
      
      public var functionStrs:Vector.<String>;
      
      public var functionParserToLhs:Dictionary;
      
      public var functions:Vector.<Parser>;
      
      public function EternalArenaScoringFunctions()
      {
         this.functionStringKeys = new Dictionary();
         this.functionStrs = new Vector.<String>();
         this.functionParserToLhs = new Dictionary();
         this.functions = new Vector.<Parser>();
         super();
      }
      
      public function fromJson(param1:Object, param2:ILogger) : EternalArenaScoringFunctions
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:Parser = null;
         for each(_loc3_ in param1)
         {
            _loc4_ = String(_loc3_.functionStr);
            _loc5_ = String(_loc3_.stringKey);
            _loc6_ = _loc4_.indexOf("=");
            if(_loc6_ < 1)
            {
               throw new ArgumentError("invalid function definition [" + _loc4_ + "]");
            }
            _loc7_ = _loc4_.substr(0,_loc6_);
            _loc8_ = _loc4_.substr(_loc6_ + 1);
            _loc9_ = new Parser(_loc8_,param2);
            this.functionStrs.push(_loc4_);
            this.functionStringKeys[_loc7_] = _loc5_;
            this.functionParserToLhs[_loc9_] = _loc7_;
            this.functions.push(_loc9_);
         }
         return this;
      }
      
      public function computeFunctions(param1:EternalArenaScorecard, param2:ILogger) : void
      {
         var _loc3_:Parser = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         for each(_loc3_ in this.functions)
         {
            _loc4_ = String(this.functionParserToLhs[_loc3_]);
            _loc5_ = _loc3_.eval(param1);
            param1.caches[_loc4_] = _loc5_;
            if(param2)
            {
               param2.info("FUNCTION " + StringUtil.padLeft(_loc4_," ",16) + "=" + _loc5_);
            }
         }
      }
   }
}
