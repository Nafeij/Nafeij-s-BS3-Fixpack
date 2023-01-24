package engine.saga
{
   import engine.core.logging.ILogger;
   import engine.def.EngineJsonDef;
   import engine.saga.vars.VariableStaticDlcLinkage;
   
   public class SagaDlcEntryVars extends SagaDlcEntry
   {
      
      public static const schema:Object = {
         "name":"SagaDlcEntryVars",
         "type":"object",
         "properties":{
            "id":{"type":"string"},
            "vars":{
               "type":"array",
               "items":"string"
            },
            "steam_appid":{"type":"number"},
            "gog_appid":{
               "type":"number",
               "optional":true
            },
            "apple_productid":{"type":"string"},
            "google_android_productid":{"type":"string"},
            "amazon_android_productid":{"type":"string"},
            "xbl_productid":{
               "type":"string",
               "optional":true
            },
            "psn_productid":{
               "type":"string",
               "optional":true
            },
            "nx_productid":{
               "type":"number",
               "optional":true
            },
            "ownedDefault":{
               "type":"boolean",
               "optional":true
            },
            "gog_store_link":{"type":"string"}
         }
      };
       
      
      public function SagaDlcEntryVars(param1:ILogger)
      {
         super(param1);
      }
      
      public function fromJson(param1:Object, param2:ILogger) : SagaDlcEntry
      {
         var _loc4_:String = null;
         var _loc5_:SagaDlcVariableData = null;
         EngineJsonDef.validateThrow(param1,schema,param2);
         this.id = param1.id;
         this.platform_id_steam_appid = param1.steam_appid;
         if(param1.gog_appid != undefined)
         {
            this.platform_id_gog_appid = param1.gog_appid;
         }
         if(param1.gog_store_link != undefined)
         {
            this.platform_gog_store_link = param1.gog_store_link;
         }
         this.platform_id_apple_productid = param1.apple_productid;
         this.platform_id_google_android_productid = param1.google_android_productid;
         this.platform_id_amazon_productid = param1.amazon_android_productid;
         this.platform_id_xbl_productid = param1.xbl_productid;
         this.platform_id_psn_productid = param1.psn_productid;
         if(param1.nx_productid != undefined)
         {
            this.platform_id_nx_productid = param1.nx_productid;
         }
         var _loc3_:Vector.<String> = VariableStaticDlcLinkage.getInstance().getDlcLinkageStrings(this.id);
         if(Boolean(_loc3_) && Boolean(_loc3_.length))
         {
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = new SagaDlcVariableData(_loc4_,this.id);
               vars.push(_loc5_);
            }
         }
         this.ownedDefault = param1.ownedDefault;
         return this;
      }
   }
}
