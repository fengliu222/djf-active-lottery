<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>水浒积分商城</title>
    <link rel="stylesheet" href="../css/base/base.css">
    <link rel="stylesheet" href="../css/base/page.css">
    <link rel="stylesheet" href="../css/vipscore.css">

    <!- -[if (gte IE 6)&(lte IE 8)]>
      <script type="text/javascript" src="lib/selectivizr/selectivizr.js"></script>
    <![endif]- ->
</head>
<body>

    <div class="stub-header"></div>
    <!-- 中心主題部份的外框 -->
    <div class="g-outter g-outter-1">
        <!-- 广告、用户中心、商城规则 -->
        <div class="g-bd g-bd-1">

            <!-- 顶部广告位 -->
            <div class="m-ad">
                <img src="${adImg?if_exists}">
            </div>

            <div class="g-clearfix">
                <!-- 用户中心 -->
                <div class="m-user">
                    <#if user??>
                    <div class="leftImg">
                        <img src="${user.photo}"/>
                        <span><#if user.status==1>VIP用户<#else>普通用户</#if></span>
                    </div>
                    <div class="info">
                        <p><label>用户名：</label><span>${user.name}</span></p>
                        <p><label>我的积分：</label><span class="score-num">${user.score}</span> 点</p>
                        <p><label>用户头衔：</label><span>${user.levelName}</span></p>
                        <p>
                            <label>升级进度：</label>
                            <div class="g-progress">
                            </div>
                        </p>
                        <p><label>下月状态：</label><span>${user.nextLevel}</span></p>
                    </div>
                    <#else>
                    <div class="leftImg">
                        <img src="image/vip/default_photo.jpg"/>
                        <span>……</span>
                    </div>
                    <div class="info un-user">
                        <form name="loginForm">
                        <p class="row-tip"><label class="label">&nbsp;</label><i class="error-tip"></i></p>
                        <p>
                            <label class="label" for="username">通行证：</label>
                            <input type="text" name="username" id="username" tabindex="1" maxlength="50" autocomplete="off" placeholder="请输入手机/邮箱/个性账号">
                            <a href="http://member.changyou.com/register/regPhoneSmAction.do?gametype=PE-DJSC" target="_blank" class="m-link1">注册账号</a>
                            <a href="javascript:void(0);" class="clear f-dn fixpng-bg" style="display: none;"></a>
                        </p>
                        <p>
                            <label class="label" for="password">密码：</label>
                            <input type="password" name="password" id="password" tabindex="2" maxlength="16" placeholder="请输入密码">
                            <a href="http://member.changyou.com/common/codeAdmin.do" target="_blank" class="m-link1">忘记密码</a>
                        </p>
                        <p>
                            <label class="label" for="vCode">验证码：</label>
                            <input type="text" name="vCode" id="vCode" tabindex="3" maxlength="6" class="v-code">
                            <img id="vCodeImg" src="http://xsh.daoju.changyou.com/captcha" width="80" height="26">
                            <a href="javascript:void(0)" class="m-link1 j-change-vCode">看不清</a>
                        </p>
                        <p class="no">
                            <label class="label" style="cursor: default;">&nbsp;</label>
                            <label style="cursor: pointer;"><input type="checkbox" name="status" id="status" class="status">保持登录状态</label>
                        </p>
                        <a href="javascript:void(0);" class="btn-red btn-login">登  录</a>
                        </form>
                    </div>
                    </#if>
                </div>

                <!-- 商城规则 -->
                <ul class="m-rule">
                    <li><i>1. </i>每个月累计充值3333元以上的玩家，更新周期每月1日0点，统计上月1日0点至月底最后一天12点的累计充值情况。</li>
                    <li><i>2. </i>积分的获得为按照充值记录进行免费获得：比例为：1畅游点=1积分</li>
                    <li><i>3. </i>积分开始计算时间：2014年1月1日开始的充值记录开算</li>
                </ul>
            </div>
            <!-- 公告 -->
            <ul class="m-notice">
            <#list noticeList as notice>
                <li><a href="${notice.url}">${notice.context}</a></li>
            </#list>
            </ul>
            <!-- 会员特价专区 -->
            <div class="m-area m-area-sale">
                <h1>天罡神将特价专区</h1>
                <ul>
                <#list recommendGoods as item>
                <li class="g-clearfix">
                    <div class="card">
                        <!-- <i class="i-tj">特</i> -->
                        <div class="leftImg"><img src="${item.img}"/></div>
                        <div class="info">
                            <h4>${item.name}</h4>
                            <p><label>活动价：</label><span>${item.activePrice}点 + ${item.score} 积分</span></p>
                            <p><label>原价：</label><span class="source-price">${item.sourcePrice}点</span></p>
                            <p>
                                <label>数量：</label>
                                <a href="javascript:void(0);" class="u-minus">-</a>
                                <input type="text" name="buyNumber" id="buyNumber" class="u-buy-number" value="${item.buyNumber}" maxlength="4" onpaste="return false;">
                                <a href="javascript:void(0);" class="u-plus">+</a>
                                <span class="tip">（库存${item.stock}件）</span>
                            </p>
                            <p class="buy-state">
                                <a class="j-buy btn-buy btn-green" href="javaScript:void(0);">立即购买</a>
                            </p>
                        </div>
                    </div>
                    <div class="timmer">
                        <h2 class="text">剩余时间：</h2>
                        <span class="j-day">01</span>
                        <span class="j-hour">23</span>
                        <span class="j-minute">15</span>
                    </div>
                </li>
                </#list>
                </ul>
            </div>

        </div>
    </div>

    <div class="g-outter g-outter-2">

        <!-- 销售排行和特权活动 -->
        <div class="g-bd g-bd-2">

            <!-- 销售排行 -->
            <div class="m-area m-area-sort">
                <h1>销量排行榜</h1>
                <ul class="m-list">
                <#list sortList as sItem>
                <li>
                    <div class="icon-num">${sItem_index+1}</div>
                    <div class="leftImg"><img src="${sItem.img}"/></div>
                    <div class="info">
                        <p>${sItem.name}</p>
                        <p>已售:<span>${sItem.num}</span>件</p>
                    </div>
                </li>
                </#list>
                </ul>
            </div>

            <!-- 会员商品专区 -->
            <div class="m-area m-area-goods">
                <h1>天罡会员商品专区</h1>
                <ul class="m-list g-clearfix">
                <#list goodList as item>
                <li class="card">
                    <div class="leftImg"><img src="${item.img}"/></div>
                    <div class="info">
                        <h4>${item.name}</h4>
                        <p><label>活动价：</label><span>${item.activePrice}点 + ${item.score} 积分</span></p>
                        <p><label>原价：</label><span class="source-price">${item.sourcePrice}点</span></p>
                        <p>
                            <label>数量：</label>
                            <a href="javascript:void(0);" class="u-minus">-</a>
                            <input type="text" name="buyNumber" id="buyNumber" class="u-buy-number" value="${item.buyNumber}" maxlength="4" onpaste="return false;">
                            <a href="javascript:void(0);" class="u-plus">+</a>
                            <span class="tip">（库存${item.stock}件）</span>
                        </p>
                        <p class="buy-state">
                            <a class="j-buy btn-red btn-buy" href="javaScript:void(0);">立即购买</a>
                        </p>
                    </div>
                </li>
                </#list>
                </ul>
            </div>
        </div>
    </div>


    <div class="g-bd g-bd-3">
        <!-- 特权活动 -->
        <div class="m-area m-area-active">
            <h1>特权活动</h1>
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