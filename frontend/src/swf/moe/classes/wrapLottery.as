/**
 * Description: Outer lottery class,
 * Author: Moe;
 */
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
	import moe.classes.util;
	import moe.classes.ExBitmap;
	import moe.classes.ImageLoader;
	
	public class wrapLottery implements Turntable{
		private var curGoods:String;
		private var curObj:MovieClip;
		public var afterCallback:Function;
		public function wrapLottery(curObj:MovieClip):void{
			this.curObj = curObj;
		}
		public function start(rotation:Number):void {
			
			rotateAnimation(rotation);
		}
		public function beforeAnimation():void {}

		public function rotateAnimation(deg:Number):void {

			//每次旋转都回归到初始角度
			this.curObj.rotation = 0;
			
			//开始旋转动画，使用TweenLite类
			TweenLite.to(this.curObj,Number(4),{rotation:360 * 3 + deg,onComplete:afterAnimation});

		}

		public function afterAnimation():void{
			 afterCallback();
		}

		public function updateData(type:Number,id:Number):void {
			
		}
		
		public function updateAllData(goods:Array):void {
			 
			for(var i:Number=0; i < goods.length; i++){
				
				//文字属性
				//var tf:TextFormat = new TextFormat();
                //tf.color = 0x0066aa;
                //tf.size = 16;
                //tf.bold = true;
				
				//生成名字元件
				//var goodsNameImg:Bitmap = ExBitmap.getTextBitmap(goods[i].name,tf);
				//this.curObj["wrapGoods"+(i+1)].addChild(goodsNameImg);
				
				//生成ICON元件
				var img =new Loader();
				img.load(new URLRequest(goods[i].src));
				img.y = 35;
				this.curObj["wrapGoods"+(i+1)].addChild(img)
				
				
			}
			 
		}
			
	}
}