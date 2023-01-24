package engine.saga.ea
{
   import engine.core.http.HttpRequestMethod;
   import engine.core.logging.ILogger;
   
   public class EternalArenaGetArenaArrangementTxn extends EternalArenaTxn
   {
      
      private static const arrangement_schema:Object = {
         "name":"EternalArenaCommunicatorArenaArrangement",
         "type":"object",
         "properties":{
            "arrangement":{
               "type":"object",
               "skip":true
            },
            "version":{"type":"number"},
            "arena_hash":{"type":"string"}
         }
      };
       
      
      public var arrangement:EternalArenaArrangement;
      
      public function EternalArenaGetArenaArrangementTxn(param1:String, param2:HttpRequestMethod, param3:Function, param4:ILogger, param5:int)
      {
         super(param1,param2,arrangement_schema,param3,param4,param5);
      }
      
      override protected function handleResponseProcessing() : void
      {
         super.handleResponseProcessing();
         if(Boolean(response) && EternalArenaConfig.DEBUG)
         {
            logger.debug("EternalArenaGetArenaArrangementTxn::handleResponseProcessing - reponse " + response);
         }
      }
      
      override protected function handleJsonResponseProcessing() : void
      {
         super.handleJsonResponseProcessing();
         if(!validateJsonObject(arrangement_schema))
         {
            return;
         }
         this.arrangement = new EternalArenaArrangement().fromJson(jsonObject.arrangement);
         this.arrangement.hash = jsonObject.arena_hash;
      }
   }
}
