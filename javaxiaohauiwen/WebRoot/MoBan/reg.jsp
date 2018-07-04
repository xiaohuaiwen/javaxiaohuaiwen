<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <meta name="viewport" content="width=device-width" charset=utf-8 />
    <link rel="dns-prefetch" href="//static.soufunimg.com">
    <link rel="dns-prefetch" href="//captcha.fang.com">
    <link rel="dns-prefetch" href="//countpvn.3g.fang.com">
    <title>搜房网-注册</title>
    
    <link rel="stylesheet" type="text/css" href="https://static.soufunimg.com/passport/pccss/common.css?66" />
    <link rel="stylesheet" type="text/css" href="https://static.soufunimg.com/passport/pccss/css1.css?66" />
    <link rel="stylesheet" type="text/css" href="https://static.soufunimg.com/passport/pccss/css.css?66"/>
    <link rel="stylesheet" type="text/css" href="https://static.soufunimg.com/passport/pccss/CSS_F3.css?66" />
    <link rel="stylesheet" type="text/css" href="https://static.soufunimg.com/passport/pccss/css400.css?66" />


</head>
<body>

    <form method="post" action="<%=path%>/user!reg.action">

        <div class="logoBox" style="min-width: 1200px;">
            <input type="hidden" name="backurl" id="backurl" value="https://passport.fang.com" />
            <input type="hidden" name="service"  id="service" value="soufun-passport-web" />
            <input type="hidden" name="host" id="host" value="" />
            <div class="logo">
                <a href="#">
                    <img src="<%=path%>/Images/logoN.png" width="161" height="49" /></a>
            </div>
            <span class="word">注册通行证</span>

        </div>

        <div class="main" style="height: 612px;">
            <div class="leftList">
                <ul class="formList">
                    <li id="usernameregion" style="position: relative; z-index: 2;">
                        <label><em class="red">*</em> 用户名：</label><input type="text" id="user.userName" name="user.userName" class="inputStyle" />
                        <div class="dropdown" id="userDiv" style="display: none;"></div>
                        <div class="" id="div_strUsername" style="position: absolute; top: 0; left: 62%;"></div>
                    </li>
                    <li style="position: relative;">
                        <label><em class="red">*</em> 请设置密码：</label><input type="password" class="inputStyle" id="user.pwd" name="user.pwd" />
                        <div class="" id="div_strPassword" style="position: absolute; top: 0; left: 62%;"></div>
                    </li>
                    <li id="usernameregion" style="position: relative; z-index: 2;">
                        <label><em class="red">*</em> 真实姓名：</label><input type="text" id="user.realName" name="user.realName" class="inputStyle" />
                        <div class="dropdown" id="userDiv" style="display: none;"></div>
                        <div class="" id="div_strUsername" style="position: absolute; top: 0; left: 62%;"></div>
                    </li>

                    <li style="position: relative;">
                        <label><em class="red">*</em> 手机号码：</label>
                        <input type="text" class="inputStyle" id="user.tel" name="user.tel" maxlength="11" />
                        <div class="" id="div_strMobile" style="position: absolute; top: 0; left: 62%;"></div>
                    </li>
                        <div class="" id="div_event_city_input" style="position: absolute; top: 0; left: 62%;"></div>
                    </li>

                    <li>
                        <label></label>
                        <input type="submit" value="立即开通" class="btnStyle" id="img_submit" />
                    </li>
                </ul>
            </div>
			</form>
            
            <div class="rightLogin">
    <ul class="rightList">
        <li>已有通行证账号，请直接登录</li>
        <li class="btnBox">
            <input type="button" value="登 录" class="btnStyle" onclick="window.open('<%=path%>/MoBan/login.jsp')" /></li>
</div>

            <div class="clear"></div>
        </div>
        <div class="footer">
            
            <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="dns-prefetch" href="//static.soufunimg.com">
    <link rel="dns-prefetch" href="//captcha.fang.com">
    <link rel="dns-prefetch" href="//countpvn.3g.fang.com">
    <title>标准尾部</title>
    <style type="text/css">
div,form,img,ul,ol,li,dl,dt,dd,p{margin:0;padding:0px;border:0;}
.sfunfooter20120411{width:1200px;background:#fff;color:#333;font-size:12px;font-family:'宋体';text-align:center;clear:both;margin:0 auto;}
.sfunfooter20120411 a:link{font-size:12px;color:#333;text-decoration:none;}
.sfunfooter20120411 a:visited{font-size:12px;color:#333;text-decoration:none;}
.sfunfooter20120411 a:hover{font-size:12px;color:#c00;text-decoration:underline;}
.sfunfooter20120411 .song{line-height:20px;}
.sfunfooter20120411 .verdana{line-height:20px;font-family: Verdana;}
.sfunfooter20120411 .verdana a{color:#333;font-family:'宋体';padding:2px 7px;text-decoration:none;}
.sfunfooter20120411 .verdana a:hover{color:#c00;text-decoration:underline;}
.sfunfooter20120411 .verdana a:hover{color:#c00;text-decoration:underline;}
.sfunfooter20120411 .verdana a.iconip{ background:url(https://static.soufunimg.com/passport/pcimages/mob.png) no-repeat;padding-left:20px}
.sfunfooter20120411 .verdana a.iconan{ background:url(https://static.soufunimg.com/passport/pcimages/mob.png) no-repeat 0 -45px;padding-left:20px}
.sfunfooter20120411 em{ font-style:normal;font-family: Verdana;}
.sfunfooter20120411 .spacing{line-height:23px;letter-spacing:3px;font-family:Verdana;margin-top:5px;}
.sfunfooter20120411 td a{display:block}
.sfunfooter20120411 td a:hover{color:#c00;text-decoration:none;}
.footershaixa{position:relative; z-index:2}
.footershaixa a{color:#333;text-decoration:none;}
.footershaixb{display:none;width:500px;height:175px;position:absolute;left:-230px;top:16px;cursor:auto;background:#fff;border:1px solid #c00;text-align:left;}
.footershaixa.activexiala div{display:block;padding:5px 10px;}
.footershaixa.activexiala div td{line-height:22px;}
</style>
</head>

<body>
    <!--20120411搜房网统一版尾begin-->

    <div class="sfunfooter20120411">
        <div class="verdana">
            <a href="http://www.fang.com/aboutus/index.asp" target="_blank">关于我们</a>‖
		<a href="http://www.fang.com/hezuo_file/house/index.html" target="_blank">网站合作</a>‖
       <a href="http://www.fang.com/aboutus/contactus.html" target="_blank">联系我们</a>‖
        <a href="http://www.fang.com/aboutus/marketing/index.html" target="_blank">网络营销</a>‖
        <a href="http://www.fang.com/zhaopin" target="_blank">招聘信息</a>‖
      
            <a href="http://www.fang.com/sitemap/sitemap.html" target="_blank">网站地图</a>‖
        <a href="http://www.fang.com/service/feedback/LeaveMess.aspx/" target="_blank">意见反馈</a>‖
         <a href="http://client.3g.fang.com/http/wap/index.html" target="_blank">手机房天下</a>‖
         <a href="http://open.fang.com" target="_blank">开放平台</a>‖
      <a href="http://www.fang.com/aboutus/copyright.html" target="_blank">服务声明</a>‖
      <a href="http://www.fang.com/zt/201107/xbc.html" target="_blank">加盟搜房网</a>
        </div>

        <div class="verdana">
            Copyright &copy;
            <script language="javascript">
                var dt = new Date();
                y = dt.getFullYear(); //获取年(四位)
                document.write(y)</script>
            Soufun Holdings Limited, All Rights Reserved
        </div>
        <div class="song" style="line-height: 23px; position: relative; z-index: 1">XXXXXXXXXX公司 版权所有<a target="_blank" href="http://www.hd315.gov.cn/beian/view.asp?bianhao=0102000110800002"><img style="border:0pt none;position:absolute;right:249px;top:-18px;" src="https://static.soufunimg.com/passport/pcimages/beian_min.gif"/>
        </a></div>
        <div class="song">客服电话：<em>0000000000</em> 违法信息举报邮箱：<a href="mailto:jubao@soufun.com"><em>jubao@soufun.com</em></a></div>

    </div>

    <!--20120411搜房网统一版尾end-->
</body>
</html>

            
        </div>
    
</body>
</html>

<script type="text/javascript">
    var _dctc = _dctc || {};
    _dctc._account = _dctc._account || ['UA-24140496-1', 'UA-24830455-1'];
    _dctc.isNorth = _dctc.isNorth || 'Y';
    _dctc.bid = '1';
    (function () {
        var script = document.createElement('script'); script.type = 'text/javascript'; script.async = true;
        script.src = 'https://static.soufunimg.com/count/load.min.js?20160330';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(script, s);
    })();
</script>