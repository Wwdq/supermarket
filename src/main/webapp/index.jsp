
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
            <p><input name="" type="text"  class="text"/><input name="" type="submit" value="搜 索"  class="Search_btn"/></p>
            <p class="Words"><a href="Product_Detailed.html">虾仁</a><a href="Product_Detailed.html">三文鱼</a><a href="Product_Detailed.html">菠萝</a><a href="Product_Detailed.html">西红柿</a><a href="Product_Detailed.html">橙子</a><a href="Product_Detailed.html">苹果</a></p>
        </div>
        <!--购物车样式-->
        <div class="hd_Shopping_list" id="Shopping_list">
            <div class="s_cart"><em class="iconfont icon-cart2"></em><a href="Shop_cart.html">我的购物车</a> <i class="ci-right">&gt;</i><i class="ci-count" id="shopping-amount">1</i></div>
            <div class="dorpdown-layer">
                <div class="spacer"></div>
                <!--<div class="prompt"></div><div class="nogoods"><b></b>购物车中还没有商品，赶紧选购吧！</div>-->
                <ul class="p_s_list">
                    <li>
                        <div class="img"><img src="images/sanwenyu.jpg" alt="三文鱼"></div>
                        <div class="content"><p><a href="#">原膳智利冷冻三文鱼(轮切)350g</a></p></div>
                        <div class="Operations">
                            <p class="Price">￥49.90</p>
                            <p><a href="#">删除</a></p></div>
                    </li>
                </ul>
                <div class="Shopping_style">
                    <div class="p-total">共<b>1</b>件商品　共计<strong>￥ 49.90</strong></div>
                    <a href="Shop_cart.html" title="去购物车结算" id="btn-payforgoods" class="Shopping">去购物车结算</a>
                </div>
            </div>
        </div>
    </div>
    <!--菜单导航样式-->
    <div id="Menu" class="clearfix">
        <div class="index_style clearfix">
            <div id="allSortOuterbox" class="display">
                <div class="t_menu_img"></div>
                <div class="Category"><a href="#"><em></em>产品分类▼</a></div>
                <div class="hd_allsort_out_box_new">
                    <!--左侧栏目开始-->
                    <ul class="Menu_list">
                        <li class="name">
                            <div class="Menu_name"><a href="product_list.html" >进口水果 &gt;</a></div>
                            <div class="link_name">
                                <p><a href="Product_Detailed.html">奇异果</a>  <a href="#">车厘子</a>  <a href="#">桃</a>  <a  href="#">牛油果</a></p>
                            </div>
                        </li>
                        <li class="name">
                            <div class="Menu_name"><a href="product_list.html" >国产水果 &gt;</a></div>
                            <div class="link_name">
                                <a href="Product_Detailed.html"> 苹果</a><a href="#">梨</a><a href="#"> 柑桔橙柚</a><a href="#">猕猴桃</a>

                            </div>
                        </li>
                        <li class="name">
                            <div class="Menu_name"><a href="product_list.html" >精选肉类 &gt;</a></div>
                            <div class="link_name">
                                <a href="#">牛排 </a><a href="#">冰鲜肉</a><a href="#">羊肉</a>
                                <a href="#">进口牛肉</a>
                            </div>

                        </li>
                        <li class="name">
                            <div class="Menu_name"><a href="product_list.html" >禽类蛋品 &gt;</a></div>
                            <div class="link_name">
                                <a href="#">鸡 </a><a href="#"> 鸭 </a><a href="#"> 鹅 </a><a href="#"> 蛋</a>
                            </div>
                        </li>
                        <li class="name">
                            <div class="Menu_name"><a href="product_list.html" >海鲜水产 &gt;</a></div>
                            <div class="link_name">
                                <a href="#">银鳕鱼</a><a href="#">虾仁</a><a href="#">鱼</a>
                                <a href="#">三文鱼</a>
                            </div>
                        </li>
                        <li class="name">
                            <div class="Menu_name"><a href="product_list.html" >新鲜蔬菜 &gt;</a></div>
                            <div class="link_name">
                                <a href="#">叶菜类</a><a href="#">根茎类</a><a href="#">茄果/瓜果类</a>
                                <a href="#">菌菇</a>
                            </div>
                        </li>
                        <li class="name">
                            <div class="Menu_name"><a href="product_list.html" >粮油杂货 &gt;</a></div>
                            <div class="link_name">
                                <a href="#">米</a><a href="#">面/面制品</a><a href="#">植物油</a><a href="#">杂粮</a>
                            </div>
                        </li>
                        <li class="name">
                            <div class="Menu_name"><a href="product_list.html" >方便素食 &gt;</a></div>
                            <div class="link_name">
                                <a href="#">养生汤品</a><a href="#">冷冻主食</a><a href="#">西式甜品</a>
                            </div>

                        </li>
                    </ul>
                </div>
            </div>
            <script>$("#allSortOuterbox").slide({ titCell:".Menu_list li",mainCell:".menv_Detail",	});</script>
            <!--菜单栏-->
            <div class="Navigation" id="Navigation">
                <ul class="Navigation_name">
                    <li><a href="Home.html">首页</a></li>
                    <li><a href="product_list.html">产品列表</a></li>
                    <li><a href="Limit_buy.html">限时特卖</a><em class="hot_icon"></em></li>
                    <li><a href="Brands.html">销售品牌</a></li>
                    <li><a href="#">联系我们</a></li>
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
<!--内容样式-->
<div class="index_style">
    <!--推荐图层样式-->
    <div class="recommend">
        <div class="recommend_bg"></div>
        <div class="list">
            <div class="picScroll">
                <div class="hd">
                    <a class="prev" href="javascript:void(0)">&gt;</a>
                    <a class="next" href="javascript:void(0)">&lt;</a>
                </div>
                <div class="bd">
                    <div class="tempWrap" >
                        <ul>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="Product_Detailed.html" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>

                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info" >
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li>
                            <li class="recommend_info">
                                <div class="img_link">
                                    <a href="#" class=""><img src="products/sanwenyu.jpg" width="100%" alt="三文鱼"></a>
                                </div>
                                <div class="content">
                                    <a href="Product_Detailed.html" class="title_name">原膳智利冷冻三文鱼(轮切)350g</a>
                                    <h2><i>￥</i>49.90</h2>
                                </div>
                                <a href="Orders_confirm.html" class="buy_btn"> 立即购买</a>
                            </li></ul></div>
                </div>
            </div>
            <script>jQuery(".picScroll").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"leftLoop",autoPlay:true,vis:4});</script>
        </div>
    </div>
    <!--产品类样式-->
    <div class="product_Sort">
        <div class="title_name"><span class="floor">1F</span><span class="name">水果蔬菜</span>
            <span class="link_name"><a href="#">苹果</a> | <a href="#">香蕉</a> | <a href="#">橙子</a> | <a href="#">哈密瓜</a>| <a href="#">榴莲</a> | <a href="#">西瓜</a></span></div>
        <div class="Section_info clearfix">
            <div class="product_AD">
                <div class="pro_ad_slide">
                    <div class="hd">
                        <ul><li class="on">1</li><li class="">2</li></ul>
                    </div>
                    <div class="bd">
                        <ul>
                            <li style="display: list-item;"><a href="#"><img src="AD/orange.jpg" width="398" height="469"></a></li>
                            <li style="display: none;"><a href="#"><img src="AD/xianggua.jpg" width="398" height="469"></a></li>
                        </ul>
                    </div>
                    <a class="prev" href="javascript:void(0)"><em class="arrow"></em></a>
                    <a class="next" href="javascript:void(0)"><em class="arrow"></em></a>
                </div>
                <script type="text/javascript">
                    jQuery(".pro_ad_slide").slide({titCell:".hd ul",mainCell:".bd ul",autoPlay:true,autoPage:true,interTime:6000});
                </script>
            </div>
            <!--产品列表-->
            <div class="pro_list">
                <ul>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/p_1.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【褚橙水果旗舰店】2019实建褚柑匠心特级6斤生鲜新鲜水果礼盒</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/p_1.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【褚橙水果旗舰店】2019实建褚柑匠心特级6斤生鲜新鲜水果礼盒</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/p_1.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【褚橙水果旗舰店】2019实建褚柑匠心特级6斤生鲜新鲜水果礼盒</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/p_1.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【褚橙水果旗舰店】2019实建褚柑匠心特级6斤生鲜新鲜水果礼盒</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/p_1.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【褚橙水果旗舰店】2019实建褚柑匠心特级6斤生鲜新鲜水果礼盒</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/p_1.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【褚橙水果旗舰店】2019实建褚柑匠心特级6斤生鲜新鲜水果礼盒</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/p_1.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【褚橙水果旗舰店】2019实建褚柑匠心特级6斤生鲜新鲜水果礼盒</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/p_1.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【褚橙水果旗舰店】2019实建褚柑匠心特级6斤生鲜新鲜水果礼盒</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="product_Sort">
        <div class="title_name"><span class="floor">2F</span><span class="name">精选肉类</span>
            <span class="link_name"><a href="#">猪肉</a> | <a href="#">羊肉</a> | <a href="#">牛肉</a> | <a href="#">鸡</a>| <a href="#">鸭</a> | <a href="#">牛排</a></span></div>
        <div class="Section_info clearfix">
            <div class="product_AD">
                <div class="pro_ad_slide">
                    <div class="hd">
                        <ul><li class="on">1</li><li class="">2</li></ul>
                    </div>
                    <div class="bd">
                        <ul>
                            <li style="display: list-item;"><a href="Product_Detailed.html"><img src="AD/wuhuarou.jpg" width="398" height="469"></a></li>
                            <li style="display: none;"><a href="Product_Detailed.html"><img src="AD/niupai.jpg" width="398" height="469"></a></li>
                        </ul>
                    </div>
                    <a class="prev" href="javascript:void(0)"><em class="arrow"></em></a>
                    <a class="next" href="javascript:void(0)"><em class="arrow"></em></a>
                </div>
                <script type="text/javascript">
                    jQuery(".pro_ad_slide").slide({titCell:".hd ul",mainCell:".bd ul",autoPlay:true,autoPage:true,interTime:6000});
                </script>
            </div>
            <!--产品列表-->
            <div class="pro_list">
                <ul>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/niuleitiao.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">伊赛西门塔尔牛肋条500g肋条 牛肋条肉 生鲜牛肉</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/niuleitiao.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">伊赛西门塔尔牛肋条500g肋条 牛肋条肉 生鲜牛肉</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/niuleitiao.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">伊赛西门塔尔牛肋条500g肋条 牛肋条肉 生鲜牛肉</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/niuleitiao.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">伊赛西门塔尔牛肋条500g肋条 牛肋条肉 生鲜牛肉</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/niuleitiao.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">伊赛西门塔尔牛肋条500g肋条 牛肋条肉 生鲜牛肉</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/niuleitiao.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">伊赛西门塔尔牛肋条500g肋条 牛肋条肉 生鲜牛肉</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/niuleitiao.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">伊赛西门塔尔牛肋条500g肋条 牛肋条肉 生鲜牛肉</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/niuleitiao.jpg" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">伊赛西门塔尔牛肋条500g肋条 牛肋条肉 生鲜牛肉</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="product_Sort">
        <div class="title_name"><span class="floor">3F</span><span class="name">水果蔬菜</span>
            <span class="link_name"><a href="#">苹果</a> | <a href="#">香蕉</a> | <a href="#">橙子</a> | <a href="#">哈密瓜</a>| <a href="#">白菜</a> | <a href="#">青菜</a></span></div>
        <div class="Section_info clearfix">
            <div class="product_AD">
                <div class="pro_ad_slide">
                    <div class="hd">
                        <ul><li class="on">1</li><li class="">2</li></ul>
                    </div>
                    <div class="bd">
                        <ul>
                            <li style="display: list-item;"><a href="#"><img src="products/daxia.jpg_.webp" width="398" height="469"></a></li>
                            <li style="display: none;"><a href="#"><img src="products/shenghao.jpg_.webp" width="398" height="469"></a></li>
                        </ul>
                    </div>
                    <a class="prev" href="javascript:void(0)"><em class="arrow"></em></a>
                    <a class="next" href="javascript:void(0)"><em class="arrow"></em></a>
                </div>
                <script type="text/javascript">
                    jQuery(".pro_ad_slide").slide({titCell:".hd ul",mainCell:".bd ul",autoPlay:true,autoPage:true,interTime:6000});
                </script>
            </div>
            <!--产品列表-->
            <div class="pro_list">
                <ul>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/xianglaxie.jpg_.webp" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【买2送1】爆黄全母香辣蟹350g即食罐装麻辣小零食海鲜小螃蟹醉蟹</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/xianglaxie.jpg_.webp" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【买2送1】爆黄全母香辣蟹350g即食罐装麻辣小零食海鲜小螃蟹醉蟹</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/xianglaxie.jpg_.webp" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【买2送1】爆黄全母香辣蟹350g即食罐装麻辣小零食海鲜小螃蟹醉蟹</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/xianglaxie.jpg_.webp" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【买2送1】爆黄全母香辣蟹350g即食罐装麻辣小零食海鲜小螃蟹醉蟹</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/xianglaxie.jpg_.webp" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【买2送1】爆黄全母香辣蟹350g即食罐装麻辣小零食海鲜小螃蟹醉蟹</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/xianglaxie.jpg_.webp" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【买2送1】爆黄全母香辣蟹350g即食罐装麻辣小零食海鲜小螃蟹醉蟹</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/xianglaxie.jpg_.webp" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【买2送1】爆黄全母香辣蟹350g即食罐装麻辣小零食海鲜小螃蟹醉蟹</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                    <li>
                        <a href="Product_Detailed.html"><img src="products/xianglaxie.jpg_.webp" width="180px" height="160px"></a>
                        <a href="Product_Detailed.html" class="p_title_name">【买2送1】爆黄全母香辣蟹350g即食罐装麻辣小零食海鲜小螃蟹醉蟹</a>
                        <div class="Numeral"><span class="price"><i>￥</i>123.00</span><span class="Sales">销量<i>345</i>件</span></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

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
<!--右侧菜单栏购物车样式-->
<div class="fixedBox">
    <ul class="fixedBoxList">
        <li class="fixeBoxLi user"><a href="User.html"> <span class="fixeBoxSpan iconfont icon-yonghu"></span> <strong>用户</strong></a> </li>
        <li class="fixeBoxLi Service "> <span class="fixeBoxSpan iconfont icon-service"></span> <strong>客服</strong>
            <div class="ServiceBox">
                <div class="bjfffs"></div>
                <dl onclick="javascript:;">
                    <dt><img src="images/qqservice.jpg" width="70px" height="70px"></dt>
                    <dd><strong>QQ客服1</strong>
                        <p class="p1">9:00-22:00</p>
                        <p class="p2"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456&amp;site=DGG三端同步&amp;menu=yes">点击交谈</a></p>
                    </dd>
                </dl>
                <dl onclick="javascript:;">
                    <dt><img src="images/qqservice.jpg" width="70px" height="70px"></dt>
                    <dd> <strong>QQ客服2</strong>
                        <p class="p1">9:00-22:00</p>
                        <p class="p2"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456&amp;site=DGG三端同步&amp;menu=yes">点击交谈</a></p>
                    </dd>
                </dl>
            </div>
        </li>
        <li class="fixeBoxLi code cart_bd " style="display:block;" id="wechat">
            <span class="fixeBoxSpan iconfont icon-erweima"></span> <strong>微信</strong>
            <div class="cartBox">
                <div class="bjfff"></div>
                <div class="QR_code">
                    <p><img src="images/erweima.jpg" width="150px" height="150px" style=" margin-top:10px;" /></p>
                    <p>微信扫一扫，关注我们</p>
                </div>
            </div>
        </li>

        <li class="fixeBoxLi Home"> <a href="./"> <span class="fixeBoxSpan iconfont  icon-shoucang"></span> <strong>收藏</strong> </a> </li>
        <li class="fixeBoxLi BackToTop"> <span class="fixeBoxSpan iconfont icon-top"></span> <strong>返回顶部</strong> </li>
    </ul>
</div>

</body>
</html>

