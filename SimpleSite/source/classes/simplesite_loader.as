package
{	
	import potato.modules.navigation.presets.YAMLLoaderView;
	import potato.modules.navigation.ViewLoader;
	import flash.events.Event;
	import simplesite.assets.LoaderView;

	public class simplesite_loader extends YAMLLoaderView
	{
		public static var loaderView:LoaderView;
		public static var vigentView:String;
		
		override public function init():void
		{
			super.init();
			
			loaderView = new LoaderView();
			loaderView.y = 42;
			addChild(loaderView);
			
			var vl:ViewLoader = loaderFor("main");
			vl.addEventListener(Event.COMPLETE, onLoadComplete);
			vl.start();
		}
		
		public static function showLoaderFor(vl:ViewLoader):void
		{
			loaderView.show(vl);
		}
		
		public function onLoadComplete(e:Event):void
		{
			var id:String = e.target.view.id; 
			changeView(id);
		}
		
		override public function resize():void
		{
			trace("Loader::resize()");
		}
		
		override public function dispose():void
		{
			trace("Loader::dispose()");
		}
	
	}
}
