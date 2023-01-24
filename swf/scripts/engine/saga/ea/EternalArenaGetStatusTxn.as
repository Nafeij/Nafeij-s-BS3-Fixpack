package engine.saga.ea
{
   import engine.core.http.HttpRequestMethod;
   import engine.core.logging.ILogger;
   
   public class EternalArenaGetStatusTxn extends EternalArenaTxn
   {
      
      private static const config_schema:Object = {
         "name":"EternalArenaCommunicatorConfig",
         "type":"object",
         "properties":{
            "challenge_status":{"type":"string"},
            "update_rate":{"type":"number"},
            "next_status_change":{"type":"number"},
            "ordinal":{"type":"number"},
            "arena_arrangement_def_url":{"type":"string"},
            "arena_def_hash":{"type":"string"},
            "config_hash":{"type":"string"},
            "steam_lb_current":{
               "type":"string",
               "optional":true
            },
            "steam_lb_prev":{
               "type":"string",
               "optional":true
            },
            "steam_lb_wins":{
               "type":"string",
               "optional":true
            }
         }
      };
      
      private static const response_schema:Object = {
         "name":"EternalArenaCommunicatorConfigResponse",
         "type":"object",
         "properties":{
            "time_until_status_update":{"type":"number"},
            "version":{"type":"number"},
            "config":{
               "type":config_schema,
               "optional":true
            }
         }
      };
       
      
      public var timeUntilStatusUpdate:Number;
      
      public var challengeStatus:String;
      
      public var updateRateMS:int;
      
      public var arenaArrangementDefUrl:String;
      
      public var arenaArrangementHash:String;
      
      public var configHash:String;
      
      public var ordinal:int;
      
      public var steam_lb_current:String;
      
      public var steam_lb_prev:String;
      
      public var steam_lb_wins:String;
      
      public var nextStatusUpdate:Number;
      
      public function EternalArenaGetStatusTxn(param1:HttpRequestMethod, param2:Function, param3:ILogger, param4:int)
      {
         super("",param1,null,param2,param3,param4);
      }
      
      override protected function handleResponseProcessing() : void
      {
         super.handleResponseProcessing();
         if(Boolean(response) && EternalArenaConfig.DEBUG)
         {
            logger.debug("EternalArenaGetStatusTxn::handleResponseProcessing - reponse " + response);
         }
      }
      
      override protected function handleJsonResponseProcessing() : void
      {
         super.handleJsonResponseProcessing();
         if(!validateJsonObject(response_schema))
         {
            return;
         }
         this.timeUntilStatusUpdate = jsonObject.time_until_status_update;
         if(jsonObject.config)
         {
            this.challengeStatus = jsonObject.config.challenge_status;
            this.updateRateMS = jsonObject.config.update_rate;
            this.arenaArrangementDefUrl = jsonObject.config.arena_arrangement_def_url;
            this.arenaArrangementHash = jsonObject.config.arena_def_hash;
            this.configHash = jsonObject.config.config_hash;
            this.ordinal = jsonObject.config.ordinal;
            this.nextStatusUpdate = jsonObject.config.next_status_change;
            this.steam_lb_current = jsonObject.config.steam_lb_current;
            this.steam_lb_prev = jsonObject.config.steam_lb_prev;
            this.steam_lb_wins = jsonObject.config.steam_lb_wins;
         }
      }
   }
}
