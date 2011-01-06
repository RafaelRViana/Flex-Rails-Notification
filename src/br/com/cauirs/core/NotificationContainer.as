package br.com.cauirs.core
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.core.IVisualElementContainer;
	
	import spark.components.Group;
	import spark.components.SkinnableContainer;
	
	public class NotificationContainer extends SkinnableContainer
	{
		public function NotificationContainer()
		{
			super();
			
			//This will make the message appear in the whole top
			this.percentWidth = 100;
		}
		
		private var timer:Timer = null;
		
		[Bindable]
		public var hideMessage:String = "Hide";
		
		protected function hide():void
		{
			(owner as IVisualElementContainer).removeElement(this);
			
			if( timer != null )
			{
				if( timer.running )
					timer.stop();
				
				timer.removeEventListener( TimerEvent.TIMER, onTimeout );
				timer = null;
			}	
		}
		
		[Bindable]
		public var message:String;

		private var _timeout:int = -1;
		
		public function get timeout():int{ return _timeout; }
		public function set timeout( seconds:int ):void
		{
			_timeout = seconds;
			
			if( seconds >= 0 )
			{
				timer = new Timer( seconds * 1000, 1 );
				timer.addEventListener( TimerEvent.TIMER, onTimeout );
				timer.start();
			}
		}
		
		private function onTimeout(event:TimerEvent):void
		{
			hide();
		}
	}
}