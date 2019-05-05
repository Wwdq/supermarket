
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/common.css" rel="stylesheet" type="text/css" />
    <link href="fonts/iconfont.css"  rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="js/common_js.js" type="text/javascript"></script>
    <script src="js/footer.js" type="text/javascript"></script>
    <title>首页</title>
</head>

<body>
<!--顶部样式-->
<div id="header_top">
    <div id="top">
        <div class="Inside_pages">
            <div class="Collection">下午好，欢迎光临生鲜网！<em></em><a href="#">收藏我们</a></div>
            <div class="hd_top_manu clearfix">
                <ul class="clearfix">
                    <li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！<c:if test="${empty user}"><a href="login.jsp" class="red"> [请登录]</c:if>
                        <c:if test="${not empty user}">${user.name}</c:if></a>  <c:if test="${empty user}"> <a href="loginIn.jsp" class="red">[免费注册]</a></li></c:if>
                    <c:if test="${not empty user}"> <a href="loginOut" class="red">[退出]</a></li></c:if>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="User_Orderform.html">我的订单</a></li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"> <a href="Shop_cart.html">购物车</a> </li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="${APP_PATH}/user/msg">我的信息</a></li>
                    <li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a href="#" class="hd_menu">客户服务</a>
                        <div class="hd_menu_list">
                            <ul>
                                <li><a href="help.html">常见问题</a></li>
                                <li><a href="#">在线退换货</a></li>
                                <li><a href="#">在线投诉</a></li>
                                <li><a href="#">配送范围</a></li>
                            </ul>
                        </div>
                    </li>
                    <!--
                           <li class="hd_menu_tit phone_c" data-addclass="hd_menu_hover"><a href="#" class="hd_menu "><em class="iconfont icon-shouji"></em>手机版</a>
                            <div class="hd_menu_list erweima">
                               <ul>
                                <img src="images/erweima.png"  width="100px" height="100"/>
                               </ul>
                            </div>
                           </li>
                    -->
                </ul>
            </div>
        </div>
    </div>
    <!--顶部样式1-->
    <div id="header"  class="header page_style">
        <div class="logo"><a href="Home.html"><img src="images/logo1.png" alt="生鲜网" /></a></div>
        <!--结束图层-->
        <div class="Search">
            <p><input id="key" name="" type="text"  class="text"/><input id="find" name="" type="submit" value="搜 索"  class="Search_btn"/></p>
            <p class="Words"><a href="Product_Detailed.html">虾仁</a><a href="Product_Detailed.html">三文鱼</a><a href="Product_Detailed.html">菠萝</a><a href="Product_Detailed.html">西红柿</a><a href="Product_Detailed.html">橙子</a><a href="Product_Detailed.html">苹果</a></p>
        </div>
        <!--购物车样式-->

    </div>
    <!--菜单导航样式-->
    <div id="Menu" class="clearfix">
        <div class="index_style clearfix">
            <div id="allSortOuterbox" class="display">
                <div class="t_menu_img"></div>
                <!--菜单-->
            <div class="Navigation" id="Navigation">
                <ul class="Navigation_name">
                    <li><a href="${APP_PATH}/index.jsp">首页</a></li>
                    <li><a href="${APP_PATH}/goods/index?type=0">全部产品</a></li>
                    <li><a href="${APP_PATH}/goods/index?type=1">进口产品</a></li>
                    <li><a href="${APP_PATH}/goods/index?type=2">水果</a></li>
                    <li><a href="${APP_PATH}/goods/index?type=3">蔬菜</a></li>
                    <li><a href="${APP_PATH}/goods/index?type=4">海鲜</a></li>
                    <li><a href="${APP_PATH}/goods/index?type=5">家禽</a></li>
                    <li><a href="${APP_PATH}/goods/index?flag=1">限时特价</a><em class="hot_icon"></em></li>
                </ul>
            </div>
            <script>$("#Navigation").slide({titCell:".Navigation_name li"});</script>
            <!-- <a href="#" class="link_bg"><img src="images/link_bg_03.png" /></a>-->
        </div>
    </div>
</div>
<!--幻灯片样式-->
<div id="slideBox" class="slideBox">
    <div class="hd">
        <ul class="smallUl"></ul>
    </div>
    <div class="bd">
        <ul>
            <li><a href="Product_Detailed.html" target="_blank"><div style="background:url(AD/ad-1.jpg) no-repeat rgb(255, 227, 130); background-position:center; width:100%; height:460px;"></div></a></li>
            <!--					<li><a href="#" target="_blank"><div style="background:url(AD/ad-2.jpg) no-repeat rgb(255, 227, 130); background-position:center ; width:100%; height:460px;"></div></a></li>-->
            <li><a href="Product_Detailed.html" target="_blank"><div style="background:url(AD/ad-3.jpg) no-repeat rgb(226, 155, 197); background-position:center; width:100%; height:460px;"></div></a></li>
            <li><a href="Product_Detailed.html" target="_blank"><div style="background:url(AD/ad-7.jpg) no-repeat #f7ddea; background-position:center; width:100%; height:460px;"></div></a></li>
            <!--                    <li><a href="#" target="_blank"><div style="background:url(AD/ad-6.jpg) no-repeat  #F60; background-position:center; width:100%; height:460px;"></div></a></li>-->
        </ul>
    </div>
    <a class="prev" href="javascript:void(0)"><em class="arrow"></em></a>
    <a class="next" href="javascript:void(0)"><em class="arrow"></em></a>

</div>
<script type="text/javascript">
    jQuery(".slideBox").slide({titCell:".hd ul",mainCell:".bd ul",autoPlay:true,autoPage:true});
</script>




</div>
<div class="slogen">
    <div class="index_style">
        <ul class="wrap">
            <li>
                <a href="#"><img src="images/slogen_34.png" data-bd-imgshare-binded="1"></a>
                <b>安全保证</b>
                <span>多重保障机制 认证商城</span>
            </li>
            <li><a href="#"><img src="images/slogen_28.png" data-bd-imgshare-binded="2"></a>
                <b>正品保证</b>
                <span>正品行货 放心选购</span>
            </li>
            <li>
                <a href="#"><img src="images/slogen_30.png" data-bd-imgshare-binded="3"></a>
                <b>七天无理由退换</b>
                <span>七天无理由保障消费权益</span>
            </li>
            <li>
                <a href="#"><img src="images/slogen_31.png" data-bd-imgshare-binded="4"></a>
                <b>天天低价</b>
                <span>价格更低，质量更可靠</span>
            </li>
        </ul>
    </div>
</div>
<!--底部图层-->
<div class="phone_style">
    <div class="index_style">
        <span class="phone_number"><em class="iconfont icon-dianhua"></em>000-0000-000</span><span class="phone_title">客服热线 7X24小时 贴心服务</span>
    </div>
</div>
<div class="footerbox clearfix">
    <div class="clearfix">
        <div class="pagefoot">
            <dl>
                <dt>新手上路</dt>
                <dd><a href="#">售后流程</a></dd>
                <dd><a href="#">购物流程</a></dd>
                <dd><a href="#">订购方式</a> </dd>
                <dd><a href="#">隐私声明 </a></dd>
            </dl>
            <dl>
                <dt>消费者保障</dt>
                <dd><a href="#">保障范围</a></dd>
                <dd><a href="#">退货退款流程</a></dd>
                <dd><a href="#">服务中心</a> </dd>
                <dd><a href="#">更多特色服务</a></dd>
            </dl>
            <dl>
                <dt>支付方式</dt>
                <dd><a href="#">微信支付</a></dd>
                <dd><a href="#">支付宝</a></dd>
                <dd><a href="#">信用卡</a> </dd>
                <dd><a href="#">快捷支付</a></dd>
            </dl>
            <dl>
                <dt>帮助中心</dt>
                <dd><a href="help.html">常见问题</a></dd>
                <dd><a href="#">专题及活动</a></dd>
                <dd><a href="#">服务中心</a> </dd>
                <dd><a href="#">网站特色</a></dd>
            </dl>
        </div>
    </div>
    <div class="text_link">
        <p align="center">
            <a href="#">关于我们</a>｜ <a href="#">公开信息披露</a>｜ <a href="#">加入我们</a>｜ <a href="#">联系我们</a>｜ <a href="#">版权声明</a>｜ <a href="#">隐私声明</a>｜ <a href="#">网站地图</a></p>
        <p align="center">Copyright ©2019 All Rights Reserved.</p>
    </div>
</div>



</div>
<script>
    $("#find").click(function () {
        var key=$("#key").val();

        window.location.href="${APP_PATH}/goods/find?key="+key;
    })
</script>
</body>
</html>

