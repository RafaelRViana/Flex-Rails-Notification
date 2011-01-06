package br.com.cauirs.notifications
{
	import br.com.cauirs.core.DefaultNotificationContainer;
	import br.com.cauirs.skins.ErrorSkin;
	
	public class ErrorNotification extends DefaultNotificationContainer
	{
		public function ErrorNotification()
		{
			super();
			
			setStyle("skinClass", ErrorSkin);
			imageSource = "assets/error.png";
			messageColor = 0xFF0000;
		}
	}
}