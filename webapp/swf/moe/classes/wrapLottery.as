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
	public class wrapLottery implements Turntable{
		private var curGoods:String;
		private var curObj:MovieClip;
		public function wrapLottery(curObj:MovieClip):void{
			this.curObj = curObj;
		}
		public function start(curItem:String):void {
			
		}
		public function beforeAnimation():void {}

		public function rotateAnimation(deg:Number):void {

			//每次旋转都回归到初始角度
			this.curObj.rotation = 0;
			
			//开始旋转动画，使用TweenLite类
			TweenLite.to(this.curObj,Number(4),{rotation:360 * 8 + deg,onComplete:afterAnimation});

		}

		public function afterAnimation():void{}

		public function updateData(type:Number,id:Number):void {}
		
		public function updateAllData(goods:Array):void {
			var fmt:TextFormat = new TextFormat();
			fmt.align = TextFormatAlign.CENTER;
			fmt.color = 0xffcc00;
			fmt.size = 12;

			for(var i:Number=0; i < goods.length; i++){
				MonsterDebugger.trace(this,typeof this.curObj["goods"+(i+1)].goodsname);
				util.createGoodsUI(goods[i].name,goods[i].src,function(nameImg,iconImg){
					this.curObj["goods"+(i+1)].addChild(nameImg);
					this.curObj["goods"+(i+1)].addChild(iconImg);
				})
				
			}
			 
		}
			
	}
}