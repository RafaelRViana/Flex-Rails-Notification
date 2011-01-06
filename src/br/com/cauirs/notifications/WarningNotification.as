package br.com.cauirs.notifications
{
	import br.com.cauirs.core.DefaultNotificationContainer;
	import br.com.cauirs.skins.WarningSkin;
	
	public class WarningNotification extends DefaultNotificationContainer
	{
		public function WarningNotification()
		{
			super();
			
			setStyle("skinClass", WarningSkin);
			imageSource = "assets/warning.png";
			messageColor = 0xFFCC00;
		}
	}
}