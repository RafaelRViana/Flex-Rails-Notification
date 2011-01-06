package br.com.cauirs.core
{
	import mx.core.IVisualElement;
	import mx.graphics.SolidColor;
	
	import spark.components.Group;
	import spark.components.VGroup;
	import spark.primitives.Rect;
	
	public class NotificationArea extends Group
	{
		public function NotificationArea()
		{
			super();
			
			var rect:Rect = new Rect;
			rect.percentHeight = 100;
			rect.percentWidth = 100;
			
			var fill:SolidColor = new SolidColor;
			fill.color = 0xFFFFFF;
			rect.fill = fill;
			
			this.addElement(rect);
			
			area = new VGroup;
			area.percentHeight = 100;
			area.percentWidth = 100;
			this.addElement(area);
		}
		
		private var area:VGroup;
		
		public function addNotification( element:IVisualElement ):void
		{
			area.addElementAt( element, 0 );
		}
	}
}