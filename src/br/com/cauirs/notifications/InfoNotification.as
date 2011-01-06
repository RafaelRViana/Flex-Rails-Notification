package br.com.cauirs.notifications
{
	import br.com.cauirs.core.DefaultNotificationContainer;
	import br.com.cauirs.skins.InfoSkin;
	
	public class InfoNotification extends DefaultNotificationContainer
	{
		public function InfoNotification()
		{
			super();
			
			setStyle("skinClass", InfoSkin);
			imageSource = "assets/info.png";
			messageColor = 0x0080FF;
		}
	}
}