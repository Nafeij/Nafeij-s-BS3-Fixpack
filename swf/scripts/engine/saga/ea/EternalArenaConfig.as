package engine.saga.ea
{
   public class EternalArenaConfig
   {
      
      public static var HOST_URL:String = "https://{ENVIRONMENT}ea.stoic.live/game/getStatus";
      
      public static var DEBUG:Boolean;
      
      public static const ARRANGEMENT_FOLDER:String = "arenas";
      
      public static const TXN_ERROR_RESPONSE:String = "response";
      
      public static const TXN_ERROR_TRANSACTION:String = "transaction";
      
      public static const TXN_ERROR_JSON_MALFORMED:String = "json";
      
      public static const TXN_ERROR_ARRANGEMENT_HASH:String = "arrangementHash";
      
      public static const TXN_ERROR_ARRANGEMENT_VERSION:String = "arrangementVersion";
      
      public static const TXN_ERROR_ARRANGEMENT_MALFORMED:String = "arrangement";
      
      public static const TXN_ERROR_ARRANGEMENT_CONFIGURATION:String = "arrangementConfiguration";
      
      public static const TXN_ERROR_STRUCTURE_OLD:String = "structureVersionOld";
      
      public static const TXN_ERROR_STRUCTURE_NEW:String = "structureVersionNew";
       
      
      public function EternalArenaConfig()
      {
         super();
      }
   }
}
