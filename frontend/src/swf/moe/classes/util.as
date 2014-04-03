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
			goodsName.width=92;
			goodsName.height=75; 
			
			var goodsNameImgData:BitmapData=new BitmapData(goodsName.width,goodsName.height,true,0x00ffffff);
			goodsNameImgData.draw(goodsName);
			var goodsNameImg:Bitmap=new Bitmap(goodsNameImgData);
			goodsNameImg.smoothing = true;
			 
			callBack(goodsNameImg);
		}
	}
}