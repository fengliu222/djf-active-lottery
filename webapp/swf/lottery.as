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
	import com.demonsters.debugger.MonsterDebugger;
	import flash.system.Security; 

	public class lottery extends MovieClip {
		private var lotteryType:Number = 1;//1.外圈 2.内圈
		private var wrapCtrl:wrapLottery = null;
		private var curItem:String;
		private var wrapDataTemp:Object;
		/**
		 * 初始化
		 * @return [description]
		 */
		public function lottery() {

			//debug
			MonsterDebugger.initialize(this);
			Security.allowDomain("*");
			Security.allowInsecureDomain("*");
            //绑定鼠标事件
			lotteryFilm.stop();
			lotteryFilm.lotteryBtn.addEventListener(MouseEvent.CLICK,btnHandle);

			//创建转盘实例
			wrapCtrl = new wrapLottery(lotteryFilm.ltWrap);

			//将模板变量获取并传入转盘初始化方法中
			wrapDataTemp = ExternalInterface.call("getTemplateData");
			MonsterDebugger.trace(this,wrapDataTemp);
			wrapCtrl.updateAllData(wrapDataTemp.wrap);
		}
		
		 
		/**
		 * 事件绑定回调
		 * @param  e [description]
		 * @return   [description]
		 */
		private function btnHandle(e:MouseEvent):void{

			//从服务器端拿数据
			getPrizeData(lotteryType,function(curItem:String):void{
				if(lotteryType==1){
					//外圈抽奖
					wrapCtrl.start(curItem);
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
			 
			   function ajaxComplete(data:Object):void{
				   var curItem = data.cur;
				   
					if(curItem == "进入内圈"){
						trace("进入内圈");
						lotteryType = 2;
					}

					callback();
					ExternalInterface.call("jslog", data.cur);
				}
		
			ExternalInterface.addCallback("ajaxComplete", ajaxComplete);
			
		}

		/**
		 * 指针缩到内圈
		 * @param  type [description]
		 * @return      [description]
		 */
		private function changeArrow(type:Number):void{
			var arrow = lotteryFilm.ltArrow;
			if(type == 1){
				TweenLite.to(arrow,Number(2),{scaleY :1});
			}else{
				TweenLite.to(arrow,0.2,{y:arrow.y+50,scaleY :0.3,scaleX : 0.5});
			}
		}
		
		 
	}
	
}
