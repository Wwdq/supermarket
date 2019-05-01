<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/5/1
  Time: 16:26
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
    <script src="${APP_PATH}/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="${APP_PATH}/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="${APP_PATH}/js/common_js.js" type="text/javascript"></script>
    <script src="${APP_PATH}/js/footer.js" type="text/javascript"></script>
    <title>个人信息</title>
</head>

<body>
<!--顶部样式-->
<div id="header_top">
    <div id="top">
        <div class="Inside_pages">
            <div class="Collection">下午好，欢迎光临生鲜网！<em></em><a href="#">收藏我们</a></div>
            <div class="hd_top_manu clearfix">
                <ul class="clearfix">
                    <li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！<a href="Login.html" class="red">[请登录]</a> 新用户<a href="Registered.html" class="red">[免费注册]</a></li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="User_Orderform.html">我的订单</a></li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"> <a href="Shop_cart.html">购物车</a> </li>
                    <li class="hd_menu_tit" data-addclass="hd_menu_hover"><a href="#">联系我们</a></li>
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
<!--用户中心样式-->
<div class="user_style clearfix">
    <div class="user_center">
        <!--左侧菜单栏-->
        <div class="left_style">
            <div class="menu_style">
                <div class="user_title">用户中心</div>
                <div class="user_Head">
                    <div class="user_portrait">
                        <a href="User.html" title="修改头像" class="btn_link"></a> <img src="images/people.png">
                        <div class="background_img"></div>
                    </div>
                    <div class="user_name">
                        <p><span class="name">XXX</span><a href="User_changePassword.html">[修改密码]</a></p>
                        <p>访问时间：2019-3-29 10:23</p>
                    </div>
                </div>
                <div class="sideMen">
                    <!--菜单列表图层-->
                    <dl class="accountSideOption1">
                        <dt class="transaction_manage"><em class="icon_1"></em>收货地址</dt>
                        
                    </dl>
                    <dl class="accountSideOption1">
                        <dt class="transaction_manage"><em class="icon_2"></em>会员中心</dt>
                        <dd>
                            <ul>
                                <li> <a href="user.php?act=profile"> 用户信息</a></li>
                                <li> <a href="User_Collect.html"> 我的收藏</a></li>
                                <li> <a href="user.php?act=message_list"> 我的留言</a></li>
                                <li> <a href="user.php?act=tag_list">我的标签</a></li>
                                <li> <a href="user.php?act=affiliate"> 我的推荐</a></li>
                                <li><a href="user.php?act=comment_list"> 我的评论</a></li>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="accountSideOption1">
                        <dt class="transaction_manage"><em class="icon_3"></em>账户中心</dt>
                        <dd>
                            <ul>
                                <li> <a href="user.php?act=track_packages"> 跟踪包裹</a></li>
                                <li> <a href="user.php?act=account_log"> 资金管理</a></li>
                            </ul>
                        </dd>
                    </dl>
                </div>
                <script>jQuery(".sideMen").slide({titCell:"dt", targetCell:"dd",trigger:"click",defaultIndex:0,effect:"slideDown",delayTime:300,returnDefault:true});</script>
            </div>
        </div>
        <!--右侧样式-->
        <div class="right_style">
            <div class="info_content">
                <!--个人信息-->
                <div class="Personal_info" id="Personal">
                    <div class="title_Section"><span>个人信息</span></div>
                    <ul class="xinxi">
                        <li><label>用户性别：</label> <span class="sex">${user.sex}</span>
                            <div class="add_sex">
                                <input type="radio" name="sex" value="0" checked="checked">
                                保密&nbsp;&nbsp;
                                <input type="radio" name="sex" value="1">
                                男&nbsp;&nbsp;
                                <input type="radio" name="sex" value="2">
                                女&nbsp;&nbsp;</div></li>
                        <li><label>电子邮箱：</label>  <span><input name="" type="text" value="${user.email}"  class="text"  disabled="disabled"/></span></li>
                        <li><label>用户QQ：</label>  <span><input name="" type="text" value="${user.QQ}"  class="text"  disabled="disabled"/></span></li>
                        <li><label>移动电话：</label>  <span><input name="" type="text" value="${user.phone}"  class="text"  disabled="disabled"/></span></li>
                        <div class="bottom"><input name="" type="submit" value="修改信息"  class="modify"/><input name="" type="submit" value="确认修改"  class="confirm"/></div>
                    </ul>
                    <ul class="Head_portrait">
                        <li class="User_avatar"><img src="images/people.png" /></li>
                        <li><input name="name" type="submit" value="上传头像"  class="submit"/></li>
                    </ul>
                </div>
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
        <span class="phone_number"><em class="iconfont icon-dianhua"></em>400-4565-345</span><span class="phone_title">客服热线 7X24小时 贴心服务</span>
    </div>
</div>
<div class="footerbox clearfix">
    <div class="clearfix">
        <div class="">
            <dl>
                <dt>新手上路</dt>
                <dd><a href="#">售后流程</a></dd>
                <dd><a href="#">购物流程</a></dd>
                <dd><a href="#">订购方式</a> </dd>
                <dd><a href="#">隐私声明 </a></dd>
                <dd><a href="#">推荐分享说明 </a></dd>
            </dl>
            <dl>
                <dt>配送与支付</dt>
                <dd><a href="#">保险需求测试</a></dd>
                <dd><a href="#">专题及活动</a></dd>
                <dd><a href="#">挑选保险产品</a> </dd>
                <dd><a href="#">常见问题 </a></dd>
            </dl>
            <dl>
                <dt>售后保障</dt>
                <dd><a href="#">保险需求测试</a></dd>
                <dd><a href="#">专题及活动</a></dd>
                <dd><a href="#">挑选保险产品</a> </dd>
                <dd><a href="#">常见问题 </a></dd>
            </dl>
            <dl>
                <dt>支付方式</dt>
                <dd><a href="#">保险需求测试</a></dd>
                <dd><a href="#">专题及活动</a></dd>
                <dd><a href="#">挑选保险产品</a> </dd>
                <dd><a href="#">常见问题 </a></dd>
            </dl>
            <dl>
                <dt>帮助中心</dt>
                <dd><a href="#">保险需求测试</a></dd>
                <dd><a href="#">专题及活动</a></dd>
                <dd><a href="#">挑选保险产品</a> </dd>
                <dd><a href="#">常见问题 </a></dd>
            </dl>
        </div>
    </div>
    <div class="text_link">
        <p>
            <a href="#">关于我们</a>｜ <a href="#">公开信息披露</a>｜ <a href="#">加入我们</a>｜ <a href="#">联系我们</a>｜ <a href="#">版权声明</a>｜ <a href="#">隐私声明</a>｜ <a href="#">网站地图</a></p>
        <p>蜀ICP备11017033号 Copyright ©2011 成都福际生物技术有限公司 All Rights Reserved. Technical support:CDDGG Group</p>
    </div>
</div>
</body>
</html>

