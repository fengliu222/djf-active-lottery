package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;    
    import flash.geom.Matrix;        
    import flash.display.*; 
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import fl.motion.MatrixTransformer;
	import flash.net.*;
	import com.greensock.TweenLite;
	import flash.external.ExternalInterface;
	import moe.classes.wrapLottery;
	import moe.classes.innerLottery;
	import moe.classes.util;
	import com.demonsters.debugger.MonsterDebugger;
	import flash.system.Security; 
	
	public class lottery extends MovieClip {
		private var lotteryType:Number = 1;				//1.外圈 2.内圈
		private var wrapCtrl:wrapLottery = null;		//外层转盘控制类
		private var curItem:String;						//中奖物品名称
		private var wrapDataObj:Object = new Object();	//外层数据映射对象
		private var innerDataObj:Object = new Object();	//内层数据映射对象
		/**
		 * 初始化
		 * @return [description]
		 */
		public function lottery() {

			//debug
			MonsterDebugger.initialize(this);
			
			//确保JS能调用到AS的方法
			flash.system.Security.allowDomain("*");
            flash.system.Security.allowInsecureDomain("*");
			 
            //绑定鼠标事件
			//lotteryFilm.stop();
			//lotteryFilm.lotteryBtn.addEventListener(MouseEvent.CLICK,btnHandle);
			ExternalInterface.addCallback("startAnimation",function():void{
				  btnHandle();
			})
			//创建转盘实例
			wrapCtrl = new wrapLottery(wrapLight.wrapLightPanel);

			//将模板变量获取并传入转盘初始化方法中
			var wrapDataTemp:Object = ExternalInterface.call("getTemplateData");
			
			//绑定数据映射对象
			dataInit(wrapDataTemp);
			
			//更新外层转盘数据
			wrapCtrl.updateAllData(wrapDataTemp.wrap);
		}

		/**
		 * 绑定数据映射对象，使元件名和元件的数据能够对应起来。
		 * @param  dataObj [description]
		 * @return         [description]
		 */
		private function dataInit(dataObj:Object):void{
			for(var i:Number = 0; i<dataObj.wrap.length; i++){
				var vbIndex = i + 1;
				wrapDataObj["wrapGoods"+vbIndex] = dataObj.wrap[i];
			}
			
			for(var k:Number = 0; k<dataObj.inner.length; k++){
				var ivbIndex = k + 1
				 innerDataObj["innerGoods"+ivbIndex] = dataObj.inner[k];
			}
		}
		
		/**
		 * 事件绑定回调
		 * @param  e [description]
		 * @return   [description]
		 */
		private function btnHandle():void{

			//从服务器端拿数据
			getPrizeData(lotteryType,function(curItem:String):void{
				
				if(lotteryType==1){
					//外圈抽奖
					var rotation:Number = calRotation(curItem);
					wrapCtrl.start(rotation);  
					
					//进入内圈逻辑
					if(curItem == "进入内圈"){
						lotteryType = 2;
						wrapCtrl.afterCallback = function():void{
							changeArrow(2);
						}
					}
				
				}else if(lotteryType==2){
					//内圈抽奖
					//playInner();
				}
			});
			
		}

		/**
		 * 向服务器端拿本次抽奖结果
		 * @param  type     确保鼠标点击时的Type值与取数据时传给JS的值一致
		 * @param  callback [description]
		 * @return          [description]
		 */
		private function getPrizeData(type:Number,callback:Function):void {
   			ExternalInterface.call("getData", type);
			ExternalInterface.addCallback("ajaxComplete", function(data:Object):void{
				curItem = data.cur;
				
				callback(curItem as String);
			});
			
		}
			
		/**
		 * 计算旋转角度。根据元件的命名规则，遍历元件存储对象的时候可以使用循环的索引拿到元件。
		 * 元件的命名规则为：goods1,goods2,goods3....
		 * @param  dataObj [description]
		 * @return         [description]
		 */
		private function calRotation(curItem:String):Number {
			var curObj:Object = lotteryType == 1 ? wrapDataObj : innerDataObj;
			var rotation:Number = 22.5;
			var objLength:Number = util.objectLength(curObj);
		 
			for(var i:Number = 0; i < objLength; i++){
			 	var key:Number = i + 1;

				if(curItem == curObj["goods"+key].name) {
					rotation = -(i * 45)-rotation;
					break;
				}
			}
			
			return rotation;
		}
		
		/**
		 * 指针缩到内圈
		 * @param  type [description]
		 * @return      [description]
		 */
		private function changeArrow(type:Number):void{
			var arrow = arrow;
			if(type == 1){
				TweenLite.to(arrow,Number(2),{scaleY :1});
			}else{
				TweenLite.to(arrow,0.2,{y:arrow.y+50,scaleY :0.3,scaleX : 0.5});
			}
		}
		
		 
	}
	
}
