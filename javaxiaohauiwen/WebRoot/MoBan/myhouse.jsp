<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
<head>
    <title>
        【襄阳租房网_襄阳租房信息|房屋出租】- 搜房网
    </title>

    <meta http-equiv="Content-Type" content="text/html"; charset="utf-8" />

    <script language="javascript" src="<%=path%>/Script/ImgErrorLoad.js" type="text/javascript"></script>

    <link type="text/css" href="<%=path%>/style/baidu/rentListStyle20131115.css"
        rel="stylesheet" media="all" />
    <script src="<%=path%>/Script/NewListJS.js"
        language="javascript" type="text/javascript"></script>

    <script src="<%=path%>/Script/jquery-1.4.2.min.js" language="javascript" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
        String.prototype.trim = function String$trim() {
            if (arguments.length !== 0) { throw Error.parameterCount(); }
            return this.replace(/^\s+|\s+$/g, '');
        }
        var purpose = '住宅'; var district = ''; var moreimgsurl = '/renthouse/x21/';
        var cityname = '襄阳'; var jxurl = ''; var city = '襄阳';
        var isrealhouseurl = '';
        var room = '', k = ''; var pricemin = 0, pricemax = 0;
        var pCity = '襄阳';
        var pAgentIds = '';
        var pTalkPageName = 'zulist';
        var pTalkPageValue = '';
        function clearviewed() {
            window.location.replace("/renthouse/");
        }
    </script>
</head>
<body>
   
    <div class="wrap">
        <link type="text/css" href="<%=path%>/style/baidu/headfang.css"rel="stylesheet" media="all" />
<link type="text/css" href="<%=path%>/style/baidu/headfang20140616.css"rel="stylesheet" media="all" />
<div class="soufunsearch110615" style="margin-top: 40px; margin-bottom: 40px;">
    <div class="soufunsearch110615logo" id="dsy_B01_29">
        <a href="#" target="_blank">
            <img src="<%=path%>/Images/logoN.png" alt=""></a>
        <div class="soufunsearch110615city">
		</div>
    </div>
</div>


        <!--houseList star-->
        <div class="houseList" id="rentid_66">
            <c:forEach var="data"  items="${houseList }" >
                    <dl class="list hiddenMap rel" id='rentid_B04_01'>
                        <dt class="img rel floatl"><a href="<%=path %>/house!detail.action?house.id=${data.id}" target="_blank" title="${data.rentType }出租,${data.fixture },${data.room }室${data.lroom }厅,${data.sqm }㎡,${data.price }元/月">
                            <img height="135" width="180" usertype="1" src2="http://img8.soufunimg.com/viewimage/agents/2015_01/09/M07/03/19/wKgEQlSvktiICHQnAATfitGA2pEAAE2BwLz2DkABN-i879/180x135.jpg"
                                src="<%=path%>/Images/${data.img }" onerror="imgiserror(this,'http://img8.soufunimg.com/agents/2015_01/09/M07/03/19/wKgEQlSvktiICHQnAATfitGA2pEAAE2BwLz2DkABN-i879.jpg')" /></a>
                        </dt>
                        <dd class="info rel floatr">
                            <p class="title">
                                <a href="<%=path %>/house!detail.action?house.id=${data.id}">
                                   ${data.title }
                                </a>         
                            </p>
                            
                            <p class="gray6 mt10">
                                <a href='<%=path%>/MoBan/index.jsp-a013214/' >${data.area }</a>-
                                <a href='<%=path%>/MoBan/index.jsp-a013214-b015471/' >${data.circle }</a>-
                                <a href="<%=path%>/MoBan/index.jsp/kw%b6%fe%ca%ae%d6%d0%d1%a7%d0%a3%c5%d4%b2%bf%b6%d3%bc%d2%ca%f4%d4%ba/" target="_blank"><span>${data.homeName }</span></a>
                                <span class="iconAdress ml10" title='${data.homeName }'>
                                   ${data.homeName }
                                </span>
                            </p>
                            <p class="gray6 mt5">
                                ${data.room }室${data.lroom }厅<span class="gray9 mlr5">/</span>${data.sqm }㎡(建筑面积)<span class="gray9 mlr5">/</span>${data.fixture }<span class="gray9 mlr5">/</span>${data.floor }/${data.sfloor }层<span class="gray9 mlr5">/</span>朝${data.direction }
                            </p>

                            <div class='mt12'>
                                <div class='floatl pt4'></div>
                                <div class='floatl note-img'>
                                    
                                    <img src="<%=path%>/Images/bang.gif">
                                    
                                </div>
                                <div class='floatl note-img'>
                                </div>
                            </div>
                            <div class="moreInfo">
                                <p class="alignR">
                                    
                                </p>
                                <p class="mt5 alignR">
                                    <span class="price">
                                        ${data.price }
                                    </span>元/月
                                </p>
                                <p class="houseType alignR mt8 gray9" style="font-size:14px;">经纪人${data.userInfo.realName }</p>
                                <p class="mt10 alignR gray">          
                                    <span>
                                        ${data.curdate }
                                    </span>
                                </p>
                            </div>
                        </dd>
                    </dl>
                    </c:forEach>
                   </div>
        <!--houseList end-->
        <div class="clear">
        </div>
        
        <div class="clear">
        </div>
        <style>
            .chazhao_btn {
                margin-left: 6px;
                float: right;
            }

                .chazhao_btn a, .chazhao_btn a:hover {
                    background: url(<%=path%>/Images/btn_chazhao1.gif) no-repeat;
                    width: 72px;
                    height: 23px;
                    line-height: 23px;
                    display: inline-block;
                    text-align: center;
                    font-size: 12px;
                    font-weight: bold;
                    color: #FFF;
                    overflow: hidden;
                }

                    .chazhao_btn a:hover {
                        background: url(<%=path%>/Images/btn_chazhao2.gif) no-repeat;
                        text-decoration: none;
                    }

            .note-img img {
                position: relative;
                padding: 0 9px 0 6px;
            }

            .pt4 {
                padding-top: 4px;
            }
        </style>
        <div class="clear">
        </div>

        <script src="<%=path%>/Script/SearchListNew.js" language="javascript" type="text/javascript"></script>

    </div>
    
    <script type="text/javascript">
        var t;
        var ie6 = ! -[1, ] && !window.XMLHttpRequest;

        jQuery(window).scroll(function () {
            if (!ie6) {
                var fold = jQuery(window).height() + jQuery(window).scrollTop();
                if (fold > jQuery("#rentid_60").offset().top + 600) {
                    jQuery(".Floating").css("display", "block");
                    jQuery(".floating").css("display", "block");
                }
                else {
                    jQuery(".Floating").css("display", "none");
                    jQuery(".floating").css("display", "none");
                }


            }
        });

    </script>

    <!--sidebar star-->
    <div class="sidebar mt10 floatr">
            <div class="clear">
            </div>

        
    </div>
    <!--sidebar end-->
    <div class="clear">
    </div>
    
<style type="text/css">
    .links
    {
        border: 1px solid #dddCCC;
        font-family: "微软雅黑";
        margin: 10px auto;
        width: 1000px;
    }

    .mianze
    {
        color: #666;
        line-height: 26px;
        padding: 10px 0px 10px 15px;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
</style>


    


    

    <!-- foot start -->
    <div class="wid1000" style="margin: 30px auto" id="gerenzfxq_B06_03">
        <div id="list_101">
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

        <script type="text/javascript">
    var $ = function (id) {
        return document.getElementById(id);
    }
    function moreBoxto(numcss1020) {
        for (j = 0; j < 10; j++) {
            if ($('moreBox' + j)) {
                $('moreBox' + j).style.display = 'none';

            }
        }
        $('moreBox' + numcss1020).style.display = 'block';
    }
    function hidden_moreBoxto(numcss1020) {
        timeout = setTimeout(function () { $("moreBox" + numcss1020).style.display = "none"; }, 100);
    }
    function show_moreBoxto(numcss1020) {
        window.clearTimeout(timeout);
        $("moreBox" + numcss1020).style.display = "";
    }
    function AddFavorite() {
        var title = document.title;
        var url = document.location.href;
        if (window.sidebar) window.sidebar.addPanel(title, url, "");
        else if (window.opera && window.print) {
            var mbm = document.createElement('a');
            mbm.setAttribute('rel', 'sidebar');
            mbm.setAttribute('href', url);
            mbm.setAttribute('title', title);
            mbm.click();
        }
        else if (document.all) window.external.addFavorite(url, title);
    }
        </script>

        <!--20091020搜房网统一版尾-->
        <div class="mt10 clear">
        </div>
        <div id="http://esfbj_71" style="width: 1000px; height: 105px; background: #fff;
            font-size: 12px; font-family: '宋体'; clear: both; margin: 0 auto; border-top: 1px solid #ccc;"
            class="DivCss20091020WZiColor333">
            <div style="line-height: 20px; text-align: center; margin-top: 5px;"> 
                <a href="http://www.fang.com/aboutus/index.asp" target="_blank">关于我们</a> <span
                    style="font-family: Verdana;">‖</span> <a href="http://www.fang.com/hezuo_file/house/index.html"
                        target="_blank">网站合作</a> <span style="font-family: Verdana;">‖</span> <a href="http://esf.fang.com/aboutus/contactus.html"
                            target="_blank">联系我们</a> <span style="font-family: Verdana;">‖</span>
                <a href="http://www.fang.com/aboutus/marketing/index.html" target="_blank">网络营销</a>
                <span style="font-family: Verdana;">‖</span> <a href="http://www.fang.com/zhaopin"
                    target="_blank">招聘信息</a> <span style="font-family: Verdana;">‖</span> <a href="javascript:;"
                        onmouseout="hidden_moreBoxto(1020)" onmouseover="moreBoxto(1020)">各地二手房</a>
                <span style="font-family: Verdana;">‖</span> <a href="http://www.fang.com/sitemap/sitemap.html"
                    target="_blank">网站地图</a> <span style="font-family: Verdana;">‖</span> <a href="http://www.fang.com/service/feedback/LeaveMess.aspx/"
                        target="_blank">意见反馈</a> <span style="font-family: Verdana;">‖</span> <a href="http://wap.fang.com/xc/mobile.html"
                            target="_blank">手机房天下</a>‖  <span style="font-family: Verdana;">
                                    ‖</span> <a href="http://open.fang.com"  target="_blank">
                                        开放平台</a>
                    <span style="font-family: Verdana;">
                                    ‖</span>
                     <a href="http://www.fang.com/zt/201107/xbc.html"  target="_blank">
                                        加盟搜房网</a>
            </div>
            
            <div style="font-family: Verdana; line-height: 20px; text-align: center;">
                copyright &copy;

                <script language="javascript"> var dt = new Date(); y = dt.getFullYear(); //获取年(四位) document.write(y)</script>

                SouFun.com Limited, All Rights Reserved</div>
            <div style="line-height: 23px; text-align: center; position: relative;">
               襄阳搜房科技发展有限公司 版权所有</div>
            <div style="line-height: 20px; text-align: center;">
                举报电话：<span style="font-family: Verdana;">400-000-0000</span> 举报邮箱：<a href="mailto:jubao@fang.com"
                    style="font-family: Verdana;">jubao@fang.com</a></div>
        </div>

        <script type="text/javascript" src="<%=path%>/Script/a1.js"></script>

        <script type="text/javascript" src="<%=path%>/Script/getacc.js"></script>

    </div>
       <script src="<%=path%>/Script/support.dialogbox.js" type="text/javascript"></script>
    </div>

    <script type="text/javascript">

        document.getElementById("zuid").className = "navtdup";
        document.getElementById("shopid").className = "navtd"

        var dvbsend = document.getElementById("dvbtnsend");
        if (dvbsend != null) {
            dvbsend.onmouseover = setActive;
            dvbsend.onmouseout = delActive;
        }
        var vthouseinput = document.getElementById("lihouseinput");
        if (vthouseinput != null) {
            vthouseinput.className = "grayclass";
        }

    </script>
<script src="<%=path%>/Script/adpupshow.js"></script></body>
<script type="text/javascript">
    var _dctc = _dctc || {};
    _dctc._account = _dctc._account || ['UA-24140496-1', 'UA-24830445-1', 'UA-24830823-1'];
    _dctc.bid = 13;
    _dctc.isNorth = _dctc.isNorth || 'Y';
    (function () {
        var script = document.createElement('script'); script.type = 'text/javascript'; script.async = true;
        script.src = 'http://js.soufunimg.com/count/load.min.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(script, s);
    })();
</script>
</html>

