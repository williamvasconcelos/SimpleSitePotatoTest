package app.simplesitepotatotest.assets
{
	import com.greensock.TweenMax;
	
	import flash.events.Event;
	import flash.events.ProgressEvent;
	
	import potato.modules.navigation.ViewLoader;
	

	public class LoaderView extends LoaderViewAsset
	{

		public function LoaderView()
		{
			super();
		}

		public function init():void
		{ 
			hide();
		}

		public function show(vl:ViewLoader):void
		{
			if(!vl || vl.loaded) {
				//menuEnabled
				return;
			}
			
			visible = true;
			bar.scaleX = 0;
			
			vl.addEventListener(ProgressEvent.PROGRESS, handleProgress);
			vl.addEventListener(Event.COMPLETE, handleComplete);
		}
		
		public function hide():void
		{
			visible = false;
			bar.scaleX = 0;
		}
		
		public function handleComplete(e:Event):void
		{
			trace("LoaderView::handleComplete()");
			e.target.removeEventListener(ProgressEvent.PROGRESS, handleProgress);
			e.target.removeEventListener(Event.COMPLETE, handleComplete);
		}
		
		public function handleProgress(e:ProgressEvent):void
		{
			showPercent = (e.bytesLoaded / e.bytesTotal);
		}
		
		public function set showPercent(value:Number):void
		{
			trace("LoaderView::set showPercent() -- " + (value / 1));
			bar.scaleX = (value / 1);
		}
	}
}