package moe.classes {
	import flash.display.*;
    import flash.events.Event;
    import flash.events.ProgressEvent;
    import flash.net.URLRequest;
	import flash.geom.Matrix;
	import com.demonsters.debugger.MonsterDebugger;
	public class ImageLoader extends Sprite{
		
		private var loader:Loader;
        private var w:Number;
        private var h:Number;
		private var imgData:BitmapData;
		public function ImageLoader(_w:Number, _h:Number, url:String)
        {
            super();
             
            this.w = _w;
            this.h = _h;
             
            loader = new Loader();
             
            loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
             
            loader.load(new URLRequest(url));
             
           // MonsterDebugger.trace(this,loader);
        }
         
        private function progressHandler(e:ProgressEvent):void {
            var num:uint = (e.bytesLoaded / e.bytesTotal) * 100;
            MonsterDebugger.trace(this,'已加载--' + num + "%");
        }
         
        private function completeHandler(e:Event):void {
			var bitmap:Bitmap = e.currentTarget.content as Bitmap;
			this.addChild(loader);
          
        }

	}
	
}
