package engine.core.rewards
{
   import com.hurlant.crypto.Crypto;
   import com.hurlant.crypto.hash.IHash;
   import com.hurlant.crypto.symmetric.ICipher;
   import com.hurlant.util.Hex;
   import flash.utils.ByteArray;
   
   public class RefereumCrypt
   {
      
      private static const _key:String = "BannerSaga4Lyfe";
       
      
      public function RefereumCrypt()
      {
         super();
      }
      
      public static function Test() : void
      {
         var _loc1_:String = RefereumCrypt.EncryptAES("6zj0lj7w");
         var _loc2_:String = RefereumCrypt.EncryptAES("45bb8d33-1fda-49bd-b0a5-edd8f00dc05e");
         var _loc3_:String = RefereumCrypt.DecryptAES(_loc1_);
         var _loc4_:String = RefereumCrypt.DecryptAES(_loc2_);
         var _loc5_:String = RefereumCrypt.HashSHA256("my-unique-user-id");
      }
      
      public static function EncryptAES(param1:String) : String
      {
         var _loc2_:ByteArray = Hex.toArray(Hex.fromString(param1));
         var _loc3_:ICipher = Crypto.getCipher("simple-aes-ecb",Hex.toArray(_key),Crypto.getPad("pkcs5"));
         _loc3_.encrypt(_loc2_);
         return Hex.fromArray(_loc2_).toString();
      }
      
      public static function DecryptAES(param1:String) : String
      {
         var _loc2_:ByteArray = Hex.toArray(param1);
         var _loc3_:ICipher = Crypto.getCipher("simple-aes-ecb",Hex.toArray(_key),Crypto.getPad("pkcs5"));
         _loc3_.decrypt(_loc2_);
         return _loc2_.toString();
      }
      
      public static function HashSHA256(param1:String) : String
      {
         var _loc2_:IHash = Crypto.getHash("sha256");
         var _loc3_:ByteArray = _loc2_.hash(Hex.toArray(Hex.fromString(param1)));
         return Hex.fromArray(_loc3_).toString();
      }
   }
}
