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
    <script src="${APP_PATH}/layer/layer.js"  type="text/javascript"></script>
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
                    <ul class="clearfix">
                        <li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！<c:if test="${empty user}"><a href="login.jsp" class="red"> [请登录]</c:if>
                            <c:if test="${not empty user}">${user.name}</c:if></a>  <c:if test="${empty user}"> <a href="loginIn.jsp" class="red">[免费注册]</a></li></c:if>
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
            <p class="Words"><a href="Product_Detailed.html">虾仁</a><a href="Product_Detailed.html">三文鱼</a><a href="Product_Detailed.html">菠萝</a><a href="Product_Detailed.html">西红柿</a><a href="Product_Detailed.html">橙子</a><a href="Product_Detailed.html">苹果</a></p>
        </div>

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
<!--用户中心样式-->
<div class="user_style clearfix">
    <div class="user_center">
        <!--左侧菜单栏-->
        <div class="left_style">
            <div class="menu_style">
                <div class="user_title">用户中心</div>
                <div class="user_Head">
                    <div class="user_portrait">
                        <a href="User.html" title="修改头像" class="btn_link"></a> <img src="${APP_PATH}/images/people.png">
                        <div class="background_img"></div>
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
                        <dt class="transaction_manage"><em class="icon_3"></em>修改密码</dt>

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

                    <ul class="xinxi">
                        <li></li>
                        <li></li>
                        <li><label>用户性别：</label> <span class="sex">${user.sex}</span>
                            <div class="add_sex">
                                <input type="radio" name="sex"   value="保密" >
                                保密&nbsp;&nbsp;
                                <input type="radio" name="sex"   value="男">
                                男&nbsp;&nbsp;
                                <input type="radio" name="sex" value="女">
                                女&nbsp;&nbsp;
                            </div>
                        </li>

                        <li><label>用户QQ：</label>    <span><input name=""  id="QQ" type="text" value="${user.QQ}"  class="text"  disabled="disabled"/></span></li>
                        <li><label>手机号码：</label>  <span><input name="" id="phone" type="text" value="${user.phone}"  class="text"  disabled="disabled"/></span></li>
                        <li><label>电子邮箱：</label>  <span><input name="" id="email" type="text" value="${user.email}"  class="text"  disabled="disabled"/></span></li>
                        <div class="bottom"><input name="" type="submit" value="修改信息"  class="modify"/><input name="" type="submit"  id="updateMsg" value="确认修改"  class="confirm"/></div>
                    </ul>
                    <ul class="Head_portrait">
                        <li class="User_avatar"><img src="${APP_PATH}/images/people.png" /></li>
                        <li><input name="name" type="submit" value="上传头像"  class="submit"/></li>
                    </ul>
                </div>
            </div>
        </div>
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
<script>
    $("#updateMsg").click(function () {
           var QQ=$("#QQ").val();
           var email=$("#email").val();
           var phone=$("#phone").val();
           var sex= $('input[name="sex"]:checked').val();

        $.ajax({
            type : "POST",
            url  : "${APP_PATH}/user/updateMsg",
            data : {
                "email" : email,
                "phone"  : phone,
                "QQ":  QQ,
                "sex": sex,
            },
            beforeSend : function(){
                loadingIndex = layer.msg('处理中', {icon: 16});
            },
            success : function(result) {
                layer.close(loadingIndex);
                if (result.result) {
                    window.location.href = "${APP_PATH}/user/msg";
                } else {
                    layer.msg(result.msg, {time:1000, icon:5, shift:6}, function () {

                    });
                }
            }
        });
    })
</script>
</body>
</html>

