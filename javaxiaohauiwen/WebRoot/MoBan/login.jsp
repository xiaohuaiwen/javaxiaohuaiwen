<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>用户登录—房天下</title>
    <script type="text/javascript" src="<%=path%>/Script/xmlhttp.js"></script>
    <script src="<%=path%>/Script/BigInt.js" type="text/javascript"></script>
    <script src="<%=path%>/Script/Barrett.js" type="text/javascript"></script>
    <script src="<%=path%>/Script/RSA.min.js" type="text/javascript"></script>
    <link href="<%=path%>/style/baidu/newlogin.css" rel="stylesheet" type="text/css" />
     <link href="<%=path%>/style/baidu/newlogin.min.css" rel="stylesheet" type="text/css" />
</head>


<body style="background-color: #ffffff;">

    <div class="main">
        <div class="head">
            <div class="logo">           
                <img alt="" src="<%=path%>/Images/logo1.gif" />
            </div>
            <div class="text">
               <a href="<%=path%>/index.jsp">租房首页</a>
            </div>
        </div>
        <div class="big">
            <div class="dlbox floatl">
                <ul class="nav clearfix">
                    <li class="li-on">用户登录</li>
                </ul>
                <div class="dlcent clearfix">
                    <div id="typeInfo_1" class="">
                        <div id="_error" class="red01" style="display: none">
                        </div>

                        <form enctype="multipart/form-data" method="post" id="loginForm" action="<%=path%>/user!login.action">
                            <dl class="dl338">
                                <dd>
                                    <input type="text" class="inputstyle bj" name="user.userName" placeholder="用户名"/>
                                </dd>
                            </dl>
                            <dl class="dl338">
                                <dd>
                                    <input type="password" class="inputstyle bja" name="user.pwd" placeholder="密 码"/>
                                </dd>
                            </dl>
                            <div class="button01">
                                <input type="submit" value="登录" class="butstyle" id="login"/>
                            </div>
                            <div class="button02">
                                <span><a href="<%=path%>/MoBan/reg.jsp">免费注册</a></span>
                            </div>
                        </form>
                    </div>
                    <div id="typeInfo_2" class="hide">
                        <div id="_mobileerror" class="red01" style="display: none">
                        </div>

                        <div class="button02">
                            <span><a href="http://passport.fang.com/register.aspx?service=renthouse&amp;host=zu.fang.com&amp;backurl=http%3a%2f%2fzu.fang.com%2f">免费注册</a></span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="right">
                 <div class="top">
<img src="<%=path%>/Images/ad01_14.jpg" alt="" border="0" /></div>
<div class="bottom">
    <div class="fenlei">
        <div class="font1 bg01">
            个人发布</div>
        免费发布求购求租、出售出租及委托房源信息</div>
    <div class="fenlei">
        <div class="font1 bg02">
            专业评估</div>
        基于海量信息，即时、快捷的提供房屋最新估价信息</div>
    <div class="fenlei" style="background-image: none;">
        <div class="font1 bg03">
            海量信息</div>
        每天600万条出售房源、200万条出租房源任您挑选</div>
</div>
            </div>
        </div>
    </div>
    <div style="height:20px"></div>
    <!--公用尾文件开始-->
    <style type="text/css">
.DivCss20091020WZiColor333 a:link{color:#333;text-decoration:none;}
.DivCss20091020WZiColor333 a:visited{color:#333;text-decoration:none;}
.DivCss20091020WZiColor333 a:hover{color:#f00;text-decoration:underline;}
.DivCss20091020WZiColor333 a:active{color:#f00;}
.DivCss20091020WZiColorf00 a:link{color:#f00;text-decoration:none;}
.DivCss20091020WZiColorf00 a:visited{color:#f00;text-decoration:none;}
.DivCss20091020WZiColorf00 a:hover{color:#f00;text-decoration:underline;}
.DivCss20091020WZiColorf00 a:active{color:#f00;}
</style>
<script>
var $=function(id) {
   return document.getElementById(id);
}
function moreBoxto(numcss1020){
	for (j=0; j<10; j++){
	 if($('moreBox' + j)){
	 $('moreBox'+j).style.display='none';

	 }
	}
	$('moreBox'+numcss1020).style.display='block';
}
function hidden_moreBoxto(numcss1020) {
	timeout = setTimeout(function() {$("moreBox"+numcss1020).style.display = "none";},100);
}
function show_moreBoxto(numcss1020){
	window.clearTimeout(timeout);
	$("moreBox"+numcss1020).style.display = "";
}
</script>

<div style="width:960px;height:105px;background:#fff;font-size:12px;font-family:'宋体';clear:both;margin:0 auto;border-top:1px solid #ccc;" class="DivCss20091020WZiColor333">
	<div style="line-height:20px;text-align:center;margin-top:5px;"> 
		<a href="<%=path%>/index.jsp" >返回首页</a> <span
						style="font-family: Verdana;">‖</span> <a href="#" target="_blank">网站合作</a>
					<span style="font-family: Verdana;">‖</span> <a href="#"
						target="_blank">联系我们</a> <span style="font-family: Verdana;">‖</span>
					<a href="#" target="_blank">网络营销</a> <span
						style="font-family: Verdana;">‖</span> <a href="#" target="_blank">招聘信息</a>
					<span style="font-family: Verdana;">‖</span> <a href="javascript:;"
						onmouseout="hidden_moreBoxto(1020)" onmouseover="moreBoxto(1020)">各地二手房</a>
					<span style="font-family: Verdana;">‖</span> <a href="#"
						target="_blank">网站地图</a> <span style="font-family: Verdana;">‖</span>
					<a href="#"
						target="_blank">意见反馈</a> <span style="font-family: Verdana;">‖</span>
					<a href="#" target="_blank">手机房天下</a>‖
					<span style="font-family: Verdana;"> ‖</span> <a
						href="#" target="_blank"> 开放平台</a> <span
						style="font-family: Verdana;"> ‖</span> <a
						href="#" target="_blank">
						加盟搜房网</a>
	</div>
	<!--弹出城市 begin-->
	
	<!--弹出城市 end-->
	<div style="font-family:Verdana;line-height:20px;text-align:center;">copyright &copy; 2016 SouFun.com Limited, All Rights Reserved</div>
	<div style="line-height:23px;text-align:center;position:relative;"> 襄阳搜房科技发展有限公司 版权所有</div>
	<div style="line-height:20px;text-align:center;">举报电话：<span style="font-family:Verdana;">400-850-8888</span> 举报邮箱：<a href="mailto:jubao@fang.com" style="font-family:Verdana;">jubao@fang.com</a></div>
</div>
  <script src="<%=path%>/Script/support.dialogbox.js" type="text/javascript"></script>
    <!--共用尾文件结束-->

    <input type="hidden" id="hidValidate" value="" />
    <script src="<%=path%>/Script/refer.js" type="text/javascript"></script>

    <noscript>
        <img height="1" width="1" border="0" alt="" style="display: none" src="<%=path%>/Images/atac.gif?acc=688&cid=851&csid=2079&ver=1.0" />
    </noscript>

</body>
</html>
<script type="text/javascript" src="<%=path%>/Script/jquery-1.10.2.js" charset="utf-8"></script>
<script type="text/javascript">
    document.domain = 'fang.com';
    shortdomain = "xiangyang.fang.com";
    var furl = '';
    var isnourl = '0';


    var SFLogin = {

        Service: "esf-renthouse-web",
        NameId: "txt_username",//用户名输入框的id
        Img_vcodeid: "login_vcode",//验证码图片的id
        Area_vcode: "vcode"//验证码相关的父节点
    }
</script>
<script src="<%=path%>/Script/loginnew.js" type="text/javascript"></script>




