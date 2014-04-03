/**
 * Description: Turntable interface,
 * Author: Moe;
 */
package moe.Interface{
	public interface Turntable{

		/**
		 * 用户点击后进入到此方法，开始转盘旋转逻辑。
		 * @return [description]
		 */
		function start(curItem:String):void;

		/**
		 * 动画开始前逻辑
		 * @return [description]
		 */
		function beforeAnimation():void;

		/**
		 * 转盘旋转
		 * @param  deg [description]
		 * @return     [description]
		 */
		function rotateAnimation(deg:Number):void;

		/**
		 * 旋转后的回调
		 * @return [description]
		 */
		function afterAnimation():void;

		/**
		 * 更新一个物品的数据
		 * @param  type [description]
		 * @param  id   [description]
		 * @return      [description]
		 */
		function updateData(type:Number,id:Number):void;
		
		/**
		 * 更新所有物品
		 * @return [description]
		 */
		function updateAllData(goods:Array):void;
	}
}