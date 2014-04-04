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

			<!-- 上半部分 -->
			<div class="lot-top">
				<!-- <div class="countdown-wrap">
				</div> -->

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
				</div>
				<div id="startAnimation">
					开始
				</div>
				<!-- 斗气值进阶，中奖名单等 -->
				<div class="lot-box lot-right">
				</div>
			</div>
			<div class="lot-bottom"></div>









<!--
			<div class="lot-main">
				<div class="lot-left">
					<div class="lot-flash-wrap">

						<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="538" height="534">
						  <param name="quality" value="high" />
						  <param name="allowScriptAccess" value="sameDomain" />
						  <param name="movie" value="../swf/7转盘3.swf?defaultData=[{name:'goods',src:'http://tp3.sinaimg.cn/1449299350/180/5596620774/1'}]" />
						  <param name="FlashVars" value="defaultData=[{name:'goods',src:'http://tp3.sinaimg.cn/1449299350/180/5596620774/1'}]" />
						  <embed src="../swf/7转盘3.swf?defaultData=[{name:'goods1',src:'http://tp3.sinaimg.cn/1449299350/180/5596620774/1'}]"
						  		width="538"
						  		height="534"
						  		name="lottery"
						  		quality="high"
						  		allowScriptAccess="sameDomain"
						  		FlashVas="defaultData=[{name:'goods',src:'http://tp3.sinaimg.cn/1449299350/180/5596620774/1'}]"
						  		pluginspage="http://www.macromedia.com/go/getflashplayer"
						  		type="application/x-shockwave-flash"
						  		  />
						</object>

					</div>
					<div class="log-bag">
						<div class="log-bag-title">我的奖品宝阁</div>
						<div class="log-bag-list">
							<div class="log-bag-item"></div>
						</div>
					</div>
				</div>
				<div class="lot-right">
					<div class="lot-power">
						<div class="lot-power-title">
							斗气值进阶
						</div>
						<div class="log-power-content">
						</div>
					</div>
					<div class="lot-luckyguys">
						<div class="lot-luckyguys-title">中奖信息</div>
						<ul class="lot-luckyguys-list">
							<li class="lot-luckygus-item">恭喜玩家liyongqian1@changyou.com获得奖品xxx</li>
							<li class="lot-luckygus-item">恭喜玩家liyongqian1@changyou.com获得奖品xxx</li>
							<li class="lot-luckygus-item">恭喜玩家liyongqian1@changyou.com获得奖品xxx</li>
							<li class="lot-luckygus-item">恭喜玩家liyongqian1@changyou.com获得奖品xxx</li>
							<li class="lot-luckygus-item">恭喜玩家liyongqian1@changyou.com获得奖品xxx</li>
						</ul>
					</div>
					<div class="lot-luckynow">
						<div class="lot-luckynow-title">今日大奖</div>
						<ul class ="lot-luckynow-list">
							<li class="lot-luckynow-item">
								<div class="log-luckynow-icon">liyongqian2@changyou.com</div>
								<div class="log-luckynow-name"></div>
							</li>
							<li class="lot-luckynow-item"></li>
							<li class="lot-luckynow-item"></li>
						</ul>
					</div>
					<div class="lot-info">
						<div class="lot-info-title">活动说明</div>
						<ul>
							<li>1.xxxxxxxxxxxx</li>
							<li>1.xxxxxxxxxxxx</li>
							<li>1.xxxxxxxxxxxx</li>
							<li>1.xxxxxxxxxxxx</li>
						</ul>
					</div>
				</div>
			</div>
 -->

		</div>
	</div>

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