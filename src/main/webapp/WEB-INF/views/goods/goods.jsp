<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/5/3
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="${APP_PATH}/css/common.css" rel="stylesheet" type="text/css" />
    <link href="${APP_PATH}/fonts/iconfont.css"  rel="stylesheet" type="text/css" />
    <link href="${APP_PATH}/css/style.css" rel="stylesheet" type="text/css" />
    <link href="${APP_PATH}/css/Orders.css" rel="stylesheet" type="text/css" />
    <link href="${APP_PATH}/css/purebox-metro.css" rel="stylesheet" id="skin">
    <script src="${APP_PATH}/js/jquery.min.1.8.2.js" type="text/javascript"></script>
    <script src="${APP_PATH}/js/jquery.reveal.js" type="text/javascript"></script>
    <script src="${APP_PATH}/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="${APP_PATH}/js/common_js.js" type="text/javascript"></script>
    <script src="${APP_PATH}/js/footer.js" type="text/javascript"></script>
    <script src="${APP_PATH}/js/lrtk.js" type="text/javascript"></script>
    <script src="${APP_PATH}/layer/layer.js"  type="text/javascript"></script>
    <title>产品列表</title>
</head>
<script type="text/javascript" charset="UTF-8">
    <!--
    //点击效果start
    function infonav_more_down(index)
    {
        var inHeight = ($("div[class='p_f_name infonav_hidden']").eq(index).find('p').length)*30;//先设置了P的高度，然后计算所有P的高度
        if(inHeight > 60){
            $("div[class='p_f_name infonav_hidden']").eq(index).animate({height:inHeight});
            $(".infonav_more").eq(index).replaceWith('<p class="infonav_more"><a class="more"  onclick="infonav_more_up('+index+');return false;" href="javascript:">收起<em class="pulldown"></em></a></p>');
        }else{
            return false;
        }
    }
    function infonav_more_up(index)
    {
        var infonav_height = 85;
        $("div[class='p_f_name infonav_hidden']").eq(index).animate({height:infonav_height});
        $(".infonav_more").eq(index).replaceWith('<p class="infonav_more"> <a class="more" onclick="infonav_more_down('+index+');return false;" href="javascript:">更多<em class="pullup"></em></a></p>');
    }

    function onclick(event) {
        info_more_down();
        return false;
    }
    //点击效果end
    //-->
</script>
<body>
<!--顶部样式-->
<div id="header_top">
    <div id="top">
        <div class="Inside_pages">
            <div class="Collection">下午好，欢迎光临生鲜网！<em></em><a href="#">收藏我们</a></div>
            <div class="hd_top_manu clearfix">
                <ul class="clearfix">
                    <ul class="clearfix">
                        <li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！<c:if test="${empty user}"><a href="${APP_PATH}/login.jsp" class="red"> [请登录]</c:if>
                            <c:if test="${not empty user}">${user.name}</c:if></a>  <c:if test="${empty user}"> <a href="${APP_PATH}/loginIn.jsp" class="red">[免费注册]</a></li></c:if>
                        <c:if test="${not empty user}"> <a href="${APP_PATH}/loginOut" class="red">[退出]</a></li></c:if>
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
        <div class="logo"><a href="Home.html"><img src="${APP_PATH}/images/logo1.png" alt="生鲜网" /></a></div>
        <!--结束图层-->
        <div class="Search">
            <p><input name="" type="text"  class="text"/><input name="" type="submit" value="搜 索"  class="Search_btn"/></p>
            <p class="Words"><a href="#">虾仁</a><a href="#">三文鱼</a><a href="#">菠萝</a><a href="#">西红柿</a><a href="#">橙子</a><a href="#">苹果</a></p>
        </div>
        <!--购物车样式-->

    </div>
    <!--菜单导航样式-->
    <div id="Menu" class="clearfix">
        <div class="index_style clearfix">
            <div id="allSortOuterbox" class="display">
                <div class="t_menu_img"></div>

            </div>
            <script>$("#allSortOuterbox").slide({ titCell:".Menu_list li",mainCell:".menv_Detail",	});</script>
            <!--菜单导航样式-->
            <div id="Menu" class="clearfix">
                <div class="index_style clearfix">
                    <div id="allSortOuterbox" class="display">
                        <div class="${APP_PATH}/t_menu_img"></div>
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
<!--产品列表样式-->
<div class="Inside_pages clearfix">





    <!--样式-->
    <div  class="scrollsidebar side_green clearfix" id="scrollsidebar">
        <div class="show_btn" id="rightArrow"><span></span></div>
        <!--左侧样式-->
        <div class="page_left_style side_content"  >


            <div class=" side_list">

                <!--销售排行-->
                <div class="pro_ranking">
                    <div class="title_name"><em></em>销量排行</div>
                    <div class="ranking_list">
                        <ul id="tabRank">
                            <li class="t_p on">
                                <em class="icon_ranking">1</em>
                                <dt><h3><a href="#">【现摘现发】江西赣南脐橙 新鲜当季水果甜橙子带箱10斤批发包邮</a></h3></dt>
                                <dd class="clearfix">
                                    <a href="#"><img src="${APP_PATH}/products/p_29.jpg" width="90" height="90" /></a>
                                    <span class="Price">￥23.00</span>
                                </dd>
                            </li>
                            <li class="t_p">
                                <em class="icon_ranking">2</em>
                                <dt><h3><a href="#">【现摘现发】江西赣南脐橙 新鲜当季水果甜橙子带箱10斤批发包邮</a></h3></dt>
                                <dd class="clearfix">
                                    <a href="#"><img src="${APP_PATH}/products/p_29.jpg" width="90" height="90" /></a>
                                    <span class="Price">￥23.00</span>
                                </dd>
                            </li>
                            <li class="t_p">
                                <em class="icon_ranking">3</em>
                                <dt><h3><a href="#">【现摘现发】江西赣南脐橙 新鲜当季水果甜橙子带箱10斤批发包邮</a></h3></dt>
                                <dd class="clearfix">
                                    <a href="#"><img src="products/p_29.jpg" width="90" height="90" /></a>
                                    <span class="Price">￥23.00</span>
                                </dd>
                            </li>
                            <li class="t_p">
                                <em class="icon_ranking">4</em>
                                <dt><h3><a href="#">【现摘现发】江西赣南脐橙 新鲜当季水果甜橙子带箱10斤批发包邮</a></h3></dt>
                                <dd class="clearfix">
                                    <a href="#"><img src="products/p_29.jpg" width="90" height="90" /></a>
                                    <span class="Price">￥23.00</span>
                                </dd>
                            </li>
                            <li class="t_p">
                                <em class="icon_ranking">5</em>
                                <dt><h3><a href="#">【现摘现发】江西赣南脐橙 新鲜当季水果甜橙子带箱10斤批发包邮</a></h3></dt>
                                <dd class="clearfix">
                                    <a href="#"><img src="products/p_29.jpg" width="90" height="90" /></a>
                                    <span class="Price">￥23.00</span>
                                </dd>
                            </li>
                            <li class="t_p">
                                <em class="icon_ranking">6</em>
                                <dt><h3><a href="#">【现摘现发】江西赣南脐橙 新鲜当季水果甜橙子带箱10斤批发包邮</a></h3></dt>
                                <dd class="clearfix">
                                    <a href="#"><img src="products/p_29.jpg" width="90" height="90" /></a>
                                    <span class="Price">￥23.00</span>
                                </dd>
                            </li>
                            <li class="t_p">
                                <em class="icon_ranking">7</em>
                                <dt><h3><a href="#">【现摘现发】江西赣南脐橙 新鲜当季水果甜橙子带箱10斤批发包邮</a></h3></dt>
                                <dd class="clearfix">
                                    <a href="#"><img src="products/p_29.jpg" width="90" height="90" /></a>
                                    <span class="Price">￥23.00</span>
                                </dd>
                            </li>
                            <li class="t_p">
                                <em class="icon_ranking">8</em>
                                <dt><h3><a href="#">【现摘现发】江西赣南脐橙 新鲜当季水果甜橙子带箱10斤批发包邮</a></h3></dt>
                                <dd class="clearfix">
                                    <a href="#"><img src="products/p_29.jpg" width="90" height="90" /></a>
                                    <span class="Price">￥23.00</span>
                                </dd>
                            </li>
                            <li class="t_p">
                                <em class="icon_ranking">9</em>
                                <dt><h3><a href="#">【现摘现发】江西赣南脐橙 新鲜当季水果甜橙子带箱10斤批发包邮</a></h3></dt>
                                <dd class="clearfix">
                                    <a href="#"><img src="products/p_29.jpg" width="90" height="90" /></a>
                                    <span class="Price">￥23.00</span>
                                </dd>
                            </li>
                            <li class="t_p">
                                <em class="icon_ranking">10</em>
                                <dt><h3><a href="#">【现摘现发】江西赣南脐橙 新鲜当季水果甜橙子带箱10斤批发包邮</a></h3></dt>
                                <dd class="clearfix">
                                    <a href="#"><img src="products/p_29.jpg" width="90" height="90" /></a>
                                    <span class="Price">￥23.00</span>
                                </dd>
                            </li>
                        </ul>
                    </div>
                </div>
                <script type="text/javascript">
                    jQuery("#tabRank li").hover(function(){ jQuery(this).addClass("on").siblings().removeClass("on")},function(){ });
                    jQuery("#tabRank").slide({ titCell:"dt h3",autoPlay:false,effect:"left",delayTime:300 });
                </script>
            </div>
        </div>
        <script type="text/javascript">
            $(function() {
                $("#scrollsidebar").fix({
                    float : 'left',
                    //minStatue : true,
                    skin : 'green',
                    durationTime : 600
                });
            });
        </script>
        <!--列表样式属性-->
        <div class="page_right_style">
            <div id="Sorted" >
                <div class="Sorted">

                    <!--产品搜索-->
                    <div class="products_search">
                        <input name="" type="text" class="search_text" value="请输入你要搜索的产品" onfocus="this.value=''" onblur="if(!value){value=defaultValue;}"><input name="" type="submit" value="" class="search_btn">
                    </div>
                    <!--页数-->

                </div>
            </div>
            <!--产品列表样式-->
            <div class="p_list  clearfix">
                <ul>
                    <c:forEach items="${goods}"  var="now" >
                        <li class="gl-item">
                            <em class="icon_special tejia"></em>
                            <div class="Borders">
                                <div class="img"><a href="Product_Detailed.html"><img src="${APP_PATH}/products/p_1.jpg" style="width:220px;height:220px"></a></div>
                                <div class="Price"><b>¥89</b></div>
                                <div class="name"><a href="Product_Detailed.html">${now.name}</a></div>
                                <div class="p-operate">
                                    <a href="#" class="p-o-btn shop_cart"><em></em>加入购物车</a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>

                </ul>
                <div class="Paging">
                    <div class="Pagination">
                        <c:if test="${page.pageNo>1}">
                            <a href="${APP_PATH}/goods/index?pageNo=${page.pageNo-1}&type=${page.type}<c:if test="${page.flag==1}">&flag=1</c:if>" class="pn-prev disabled">&lt;上一页</a>
                        </c:if>
                         <c:forEach begin="1" end="${page.count}" varStatus="s">
                             <c:if test="${page.pageNo!=s.count}">
                                 <a href="${APP_PATH}/goods/index?pageNo=${s.count}&type=${page.type}<c:if test="${page.flag==1}">&flag=1</c:if>">${s.count}</a>
                             </c:if>
                             <c:if test="${page.pageNo==s.count}">
                                 <a href="#" class="on">${s.count}</a>
                             </c:if>
                         </c:forEach>
                        <c:if test="${page.pageNo!=page.count}">

                            <a href="${APP_PATH}/goods/index?pageNo=${page.pageNo+1}&type=${page.type}<c:if test="${page.flag==1}">&flag=1</c:if>">下一页&gt;</a>
                        </c:if>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="slogen">
    <div class="index_style">
        <ul class="wrap">
            <li>
                <a href="#"><img src="${APP_PATH}/images/slogen_34.png" data-bd-imgshare-binded="1"></a>
                <b>安全保证</b>
                <span>多重保障机制 认证商城</span>
            </li>
            <li><a href="#"><img src="${APP_PATH}/images/slogen_28.png" data-bd-imgshare-binded="2"></a>
                <b>正品保证</b>
                <span>正品行货 放心选购</span>
            </li>
            <li>
                <a href="#"><img src="${APP_PATH}/images/slogen_30.png" data-bd-imgshare-binded="3"></a>
                <b>七天无理由退换</b>
                <span>七天无理由保障消费权益</span>
            </li>
            <li>
                <a href="#"><img src="${APP_PATH}/images/slogen_31.png" data-bd-imgshare-binded="4"></a>
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
                <dd><a href="#">常见问题</a></dd>
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


</body>
</html>
