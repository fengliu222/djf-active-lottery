package moe.classes{
	import flash.display.MovieClip;
	import flash.events.Event;    
    import flash.geom.Matrix;        
    import flash.display.*; 
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.net.*;
	import flash.external.ExternalInterface;
	import fl.motion.MatrixTransformer;
	import com.greensock.TweenLite;
	import moe.Interface.Turntable;
	import com.demonsters.debugger.MonsterDebugger;
	import flash.text.*;

	public class util {
		public static function createGoodsUI(name:String,src:String,callBack:Function):* {
			var goodsName:TextField=new TextField(); 

			goodsName.autoSize="left";
			goodsName.text=name;
			var goodsNameFormate:TextFormat=new TextFormat();
			goodsNameFormate.size=15;

			goodsName.setTextFormat(goodsNameFormate); 

			goodsName.width=92;
			goodsName.height=75; 

			var goodsNameImgData:BitmapData=new BitmapData(goodsName.width,goodsName.height,true,0x00ffffff);
			goodsNameImgData.draw(goodsName);
			var goodsNameImg:Bitmap=new Bitmap(goodsNameImgData);
			goodsNameImg.smoothing = true;


			var goodsIconLoader:Loader;
			var goodsIconBm:Bitmap=new Bitmap();

			function getLoader():Loader {
			    if (goodsIconLoader==null) {
			        goodsIconLoader=new Loader();
			        goodsIconLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
			     }
			     return goodsIconLoader;
			}
			function loaderpic(url:String):void {
			       getLoader().load(new URLRequest(url));
			}

			function completeHandler(event:Event):void {
				var tempLoader:Loader = LoaderInfo(event.target).loader as Loader;
				tempLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE, completeHandler);

				var goodsIconBm:Bitmap = tempLoader.content as Bitmap;
			    callBack(goodsNameImg,goodsIconBm);
			}

			//function ioErrorHandler(event:*):void {
			    //trace("Unable to load image ");
			//} 

			loaderpic(src);
		}
	}
}