package br.com.cauirs.notifications
{
	import br.com.cauirs.core.DefaultNotificationContainer;
	import br.com.cauirs.skins.SuccessSkin;
	
	public class SuccessNotification extends DefaultNotificationContainer
	{
		public function SuccessNotification()
		{
			super();
			
			setStyle("skinClass", SuccessSkin);
			imageSource = "assets/success.png";
			messageColor = 0x00CC00;
		}
	}
}