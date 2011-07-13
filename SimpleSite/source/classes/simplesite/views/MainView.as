package simplesite.views
{	
	import simplesite.assets.Menu;
	
	import com.greensock.TweenMax;
	
	import potato.modules.navigation.View;
	
	public class MainView extends View
	{
		private var _menu:Menu;

		override public function init():void
		{
			with(graphics) beginFill(0x0), drawRect(0, 0, 100, 100), endFill();
		}
		override public function show():void
		{
			super.show();
			_menu = new Menu(msg("main"));
			addChild(_menu);
			
			super.show();
			TweenMax.delayedCall(2, super.show);
			addView("home");
		}

		public function set menuEnabled(value:Boolean):void
		{
			_menu.enabled = value;
		}
		
		override public function hide():void
		{
			super.hide();
		}
		override public function resize():void
		{
			
		}
		override public function dispose():void
		{
			
		}

	}
}
