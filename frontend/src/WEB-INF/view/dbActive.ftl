<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>水浒积分商城</title>
    <link rel="stylesheet" href="../css/base/base.css">
    <link rel="stylesheet" href="../css/base/page.css">
    <link rel="stylesheet" href="../css/vipscore.css">
</head>
<body>

    <div class="stub-header"></div>
    <!-- 中心主題部份的外框 -->

        <!-- 广告、用户中心、商城规则 -->
        <div class="g-bd g-bd-1">

            <!-- 顶部广告位 -->
            <div class="m-ad">
                <img src="${adImg?if_exists}">
            </div>

            <div class="g-clearfix">
                <!-- 用户中心 -->
                <div class="m-user">
                    <div class="leftImg"><img src="${user.photo}" style="width: 117px; height: 117px;"/></div>
                    <div class="info">
                        <p><label>用户名：</label><span>${user.name}</span></p>
                        <p><label>我的积分：</label><span class="score-num">${user.score}</span> 点</p>
                        <p><label>用户头衔：</label><span>${user.levelName}</span></p>
                        <p>
                            <label>升级进度：</label>
                            <div>进度条</div>
                        </p>
                        <p><label>下月状态：</label><span>${user.nextLevel}</span></p>
                    </div>
                </div>

                <!-- 商城规则 -->
                <div class="m-rule">
                    <h3>天罡会员商城规则</h3>
                    <ul>
                        <li><i>1</i>每个月累计充值3333元以上的玩家，更新周期每月1日0点，统计上月1日0点至月底最后一天12点的累计充值情况。</li>
                        <li><i>2</i>积分的获得为按照充值记录进行免费获得：比例为：1畅游点=1积分</li>
                        <li><i>3</i>积分开始计算时间：2014年1月1日开始的充值记录开算</li>
                    </ul>
                </div>
            </div>
            <!-- 公告 -->
            <ul class="m-notice">
            <#list noticeList as notice>
                <li><a href="${notice.url}">${notice.context}</a></li>
            </#list>
            </ul>
        </div>


        <div class="g-bd g-bd-2">
            <!-- 会员特价专区 -->
            <div class="m-area m-area-sale">
                <h3>天罡会员特价专区</h3>
                <ul>
                <#list recommendGoods as item>
                <li class="g-clearfix">
                    <div class="card">
                        <i class="i-tj">特</i>
                        <div class="leftImg"><img src="${item.img}"/></div>
                        <div class="info">
                            <h4>${item.name}</h4>
                            <p><label>活动价：</label><span>${item.activePrice}点 + ${item.score} 积分</span></p>
                            <p><label>原价：</label><span>${item.sourcePrice}点</span></p>
                            <p>
                                <label>数量：</label>
                                <a href="javascript:void(0);" class="u-minus">-</a>
                                <input type="text" name="buyNumber" id="buyNumber" class="u-buy-number" value="${item.buyNumber}" maxlength="4" onpaste="return false;">
                                <a href="javascript:void(0);" class="u-plus">+</a>
                                <span class="tip">（库存${item.stock}件）</span>
                            </p>
                            <p class="buy-state">
                                <a class="j-buy" href="javaScript:void(0);">立即购买</a>
                            </p>
                        </div>
                    </div>
                    <div class="timer">剩余时间：
                        <span class="j-day"></span>天
                        <span class="j-hour"></span>小时
                        <span class="j-minute"></span>分
                        <span class="j-second"></span>秒
                    </div>
                </li>
                </#list>
                </ul>
            </div>
        </div>

        <!-- 销售排行和特权活动 -->
        <div class="g-bd g-bd-3">

            <!-- 销售排行 -->
            <div class="m-area m-area-sort">
                <h3>销量排行榜</h3>
                <ul>
                <#list sortList as sItem>
                <li>
                    <div class="leftImg"><img src="${sItem.img}"/></div>
                    <div class="info">
                        <h4>${sItem.name}</h4>
                        <p>已售出<span>${sItem.num}</span>件</p>
                    </div>
                </li>
                </#list>
                </ul>
            </div>

            <!-- 会员商品专区 -->
            <div class="m-area m-area-goods">
                <h3>特惠活动抢购</h3>
                <ul class="m-list">
                <#list goodList as item>
                <li class="card">
                    <div class="leftImg"><img src="${item.img}"/></div>
                    <div class="info">
                        <h4>${item.name}</h4>
                        <p><label>活动价：</label><span>${item.activePrice}点 + ${item.score} 积分</span></p>
                        <p><label>原价：</label><span>${item.sourcePrice}点</span></p>
                        <p>
                            <label>数量：</label>
                            <a href="javascript:void(0);" class="u-minus">-</a>
                            <input type="text" name="buyNumber" id="buyNumber" class="u-buy-number" value="${item.buyNumber}" maxlength="4" onpaste="return false;">
                            <a href="javascript:void(0);" class="u-plus">+</a>
                            <span class="tip">（库存${item.stock}件）</span>
                        </p>
                        <p class="buy-state">
                            <a class="j-buy" href="javaScript:void(0);">立即购买</a>
                        </p>
                    </div>
                </li>
                </#list>
                </ul>
            </div>

        </div>

        <div class="g-bd g-bd-4">
        <!-- 特权活动 -->
        <div class="m-area m-area-active">
            <h2>特权活动</h2>
            <ul>
            <#list activeAd as aItem>
                <li><a href="${aItem.url}"><img src="${aItem.img}"/></a></li>
            </#list>
            </ul>
        </div>
        </div>

    <div class="stub-footer"></div>

    <script src='../lib/jquery/jquery-1.9.1.js'></script>
</body>

</html>