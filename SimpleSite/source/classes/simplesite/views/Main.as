package app.simplesitepotatotest.views
{
	import app.simplesitepotatotest.assets.Menu;
	import app.simplesitepotatotest.views.AlbumView;
	import app.simplesitepotatotest.views.Home;
	import app.simplesitepotatotest.views.WebCamView;
	
	import com.adobe.serialization.json.JSON;
	import com.facebook.graph.Facebook;
	import com.greensock.TweenMax;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.MouseEvent;
	import flash.media.Camera;
	import flash.media.Video;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.utils.clearTimeout;
	import flash.utils.setTimeout;
	
	import potato.modules.navigation.View;
	
	public class Main extends View
	{
		private var _menu:Menu;
		
		public function Main()
		{
			super();
		}
		
		override public function init():void
		{
			super.init();
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
		
		override public function dispose():void
		{
			super.dispose();
		}
	}
}