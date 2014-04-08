<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>大转盘抽奖</title>
	<link rel="stylesheet" href="../css/base/base.css">
	<link rel="stylesheet" href="../css/base/page.css">
	<link rel="stylesheet" href="../css/lottery.css">
	<script>
		var templateData = {
				'wrap': [{
					name: '哈哈哈1',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}, {
					name: '哈哈哈2',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}, {
					name: '进入内圈',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}, {
					name: '哈哈哈4',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}, {
					name: '哈哈哈5',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}, {
					name: '哈哈哈6',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				},{
					name: '哈哈哈7',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				},{
					name: '哈哈哈8',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}],
				'inner': [{
					name: 'goods1',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}]
			};
	</script>
</head>
<body>

	<div class="stub-header"></div>
	<!-- 中心主題部份的外框 -->
	<div class="lottery-wrap">


		<!--抽奖页面主题  -->
		<div class="g-bd f-cb lot-main">

			<!-- 倒计时 -->
			<div class="countdown-wrap">
				<h1 class="first-title">第一波活动时间: 2014年5月15日--5月22日</h1>
				<h2 class="second-title">
					<span class="timer-context">距离第二波还有：</span>
					<span class="timmer timmer-days">40</span>
					<span class="timmer timmer-hours">20</span>
					<span class="timmer timmer-miutes">59</span>
				</h2>
			</div>

			<div class="contain-wrap">
				<!-- 上半部分 -->
				<div class="lot-top">

					<!-- 抽奖Flash -->
					<div class="lot-flash-wrap">

						<object id="lotteryFlash" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="538" height="534">
						  <param name="quality" value="high" />
						  <param name="wmode" value="transparent" />
						  <param name="allowScriptAccess" value="always" />
						  <param name="movie" value="../swf/lottery.swf" />

						  <embed src="../swf/lottery.swf"
						  		width="538"
						  		height="534"
						  		name="lottery"
						  		quality="high"
						  		wmode="transparent"
						  		pluginspage="http://www.macromedia.com/go/getflashplayer"
						  		type="application/x-shockwave-flash"/>
						</object>

						<div id="startAnimation">
							开始
						</div>
					</div>

					<!-- 斗气值进阶，中奖名单等 -->
					<div class="lot-box right-box">
						<div class="lot-power">
							<h2 class="box-title bg-bt">斗气值进阶</h2>
							<div class="log-power-content">
								<div class="progress-wrap">
								</div>
								<a class="btn btn-power" href="javascript:void(0)">获得更多斗气值<i class="btn-right"></i></a>
								<br class="clearfix"/>
							</div>
						</div>
						<div class="lot-luckyguys">
							<h2 class="box-title">中奖信息</h2>
							<div class="box-context">
								<ul class="lot-luckyguys-list">
									<li class="font-style-info">公告：恭喜玩家XXXX@changyou.com获得奖品XXXXX </li>
									<li class="font-style-info">公告：恭喜玩家XXX获得奖品xxx</li>
									<li class="font-style-info">公告：恭喜玩家XXX获得奖品xxx</li>
									<li class="font-style-info">公告：恭喜玩家XXX获得奖品xxx</li>
									<li class="font-style-info">公告：恭喜玩家XXX获得奖品xxx</li>
									<li class="font-style-info">公告：恭喜玩家XXX获得奖品xxx</li>
								</ul>
							</div>
						</div>
						<div class="lot-luckynow">
							<h2 class="box-title">大奖信息</h2>
							<ul class ="lot-luckynow-list">
								<li class="lot-luckynow-item">
									<img src="" /><span>服务器A</span>
								</li>
								<li class="lot-luckynow-item">
									<img src="" /><span>服务器B</span>
								</li>
								<li class="lot-luckynow-item">
									<img src="" /><span>服务器C</span>
								</li>
								<li class="lot-luckynow-item">
									<img src="" /><span>服务器D</span>
								</li>
							</ul>
							<br class="clearfix"/>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>

				<div class="separate-line"></div>

				<div class="lot-bottom">
					<div class="lot-box left-box collect-box">
						<h2 class="box-title bg-bt">退奖宝阁</h2>
						<table class="collect-table">
							<tr>
								<td></td><td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
							</tr>
							<tr>
								<td></td><td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
							</tr>
							<tr>
								<td></td><td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
							</tr>
						</table>
						<a class="btn btn-back" href="javascript:void(0)">全部退回<i class="btn-right"></i></a>
						<p class="context-info font-style-info">退回您中奖物品会按照一定比例返回点数</p>
					</div>
					<div class="lot-box right-box active-box">
						<h2 class="box-title bg-bt">活动介绍</h2>
						<ul class="box-context">
							<li><i class="list-icon">1</i>
								<p>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
							</li>
							<li><i class="list-icon">2</i>
								<p>XXXX</p>
							</li>
							<li><i class="list-icon">3</i>
								<p>XXX</p>
							</li>
							<li><i class="list-icon">4</i>
								<p>XXXXXXXXXXXXXXXXXXXXXXX</p>
							</li>
							<li><i class="list-icon">5</i>
								<p>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
							</li>
							<li><i class="list-icon">6</i>
								<p>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
							</li>
							<li><i class="list-icon">7</i>
								<p>XXX</p>
							</li>
							<li><i class="list-icon">8</i>
								<p>XXX</p>
							</li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>


				<div class="side-btn btn-down"> 活动介绍 </div>
				<div class="side-btn btn-up"> 返回顶部 </div>
			</div>


		</div>

	</div>

	<div class="stub-footer"></div>

	<script src='../lib/jquery/jquery-1.9.1.js'></script>
	<script>
		function getData(type){

			$.get("./getData",{type:type},function(data){

				lottery.ajaxComplete(data);
			})
		}

		function jslog(data){
			console.log(data);
		}


		function getTemplateData(){
			return templateData;
			// lottery.templateDataInit(defaultData.slice(0));
		}

		$("#startAnimation").bind("click",function(){
			lottery.startAnimation();
		})
	</script>
</body>

</html>