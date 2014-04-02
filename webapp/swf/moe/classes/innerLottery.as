package moe.classes{
	import moe.Interface.Turntable;
	public class innerLottery implements Turntable{
		public function innerLottery():void{

		}
		public function beforeAnimation():void {}

		public function rotateAnimation(deg:Number):void {}

		public function afterAnimation(){}

		public function updateData(type:Number,id:Number):void {}
		
		public function updateAllData():void {}
	}
}