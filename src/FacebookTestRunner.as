package {
	import flash.display.Sprite;
	import facebook.FacebookClient;
	import facebook.FacebookRequestEvent;

	/**
	 * Example of how to use these classes.
	 * 
	 */	
	public class FacebookTestRunner extends Sprite
	{
		internal const API_KEY:String = 'YOUR API KEY HERE';
		internal const SECRET:String = 'YOUR SECRET HERE';
		internal const SESSION_KEY:String = 'YOUR SESSION KEY HERE';

		public function FacebookTestRunner()
		{

			var fb:FacebookClient = new FacebookClient(API_KEY,  SECRET, SESSION_KEY);
			fb.addEventListener(FacebookRequestEvent.CALL_RESULT_EVENT, onRequestComplete);
			fb.users_getLoggedInUser();
		}
		
		public function onRequestComplete(pEvent:FacebookRequestEvent):void {
			trace(pEvent.result);
		}
	}
}
