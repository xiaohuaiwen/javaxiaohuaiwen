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
    <meta name="keywords" content="襄阳租房，襄阳租房网，襄阳租房，租房信息" />
    <meta name="description" content="搜房网襄阳租房网提供襄阳海量出租房源，实时更新，审核，租房信息真实有效。襄阳租房子、找合租、个人房屋出租，就到搜房网。" />
    
    <meta name="mobile-agent" content="format=html5;url=http://m.fang.com/zf/xiangyang/?adap=auto" />
    

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
    <div class="nav613">
        <div class="nav613nr">
		    	<div class="s1">
		       	  <a href="http://client.3g.fang.com/http/wap/index.html" class="mob" target="_blank" rel="nofollow">手机房天下</a><a href="http://agent.fang.com" class=""  style="float:none;display:inline" target="_blank" rel="nofollow">经纪人登陆</a>
		        </div>
		   	  <div class="s2"><span id="loginBar" ></span> | <a href="http://my.fang.com/?city=xiangyang" target="_blank" rel="nofollow">我的房天下</a> | <a href="http://help.fang.com/" target="_blank" rel="nofollow">帮助</a> | <a href="http://fang.com/sitemap/sitemap.html" id="dsy_B01_04" target="_blank" rel="nofollow" >网站地图</a></div>
		    	<div class="clear"></div>
		    </div>
    </div>
    <div class="wrap">
        <link type="text/css" href="<%=path%>/style/baidu/headfang.css"rel="stylesheet" media="all" />
<link type="text/css" href="<%=path%>/style/baidu/headfang20140616.css"rel="stylesheet" media="all" />
<div class="soufunsearch110615" style="margin-top: 40px; margin-bottom: 40px;">
    <div class="soufunsearch110615logo" id="dsy_B01_29">
        <a href="http://www.fang.com/" target="_blank">
            <img src="<%=path%>/Images/logoN.png" alt=""></a>
        <div class="soufunsearch110615city">
		<strong>武汉</strong>
				<span class="zilink">[<a href="<%=path %>/index.jsp"  rel="nofollow">切换</a>]</span>		
		</div>
    </div>
</div>

<script type="text/javascript" src="<%=path%>/Script/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
    var keywordSearch = document.getElementById('input_keyw1');
    var city = "襄阳";
    var purpose = "";
    var district = "";
    var room = "";
    var pricemin = "";
    var pricemax = "";
    var k = "";
    var oldpurpose = "";
    function moreBoxto(numcss1112) {
        document.getElementById('moreBox' + numcss1112).style.display = 'block';
    }
    function hidden_moreBoxto(numcss1112) {
        timeoutmoreBoxto = setTimeout(function () { document.getElementById("moreBox" + numcss1112).style.display = "none"; }, 100);
    }
    function show_moreBoxto(numcss1112) {
        window.clearTimeout(timeoutmoreBoxto);
        document.getElementById("moreBox" + numcss1112).style.display = "";
    }

    function setActive() {
        document.getElementById("dvbtnsend").className = "searchfb active";
    }
    function delActive() {
        document.getElementById("dvbtnsend").className = "searchfb";
    }

    jQuery("#ushowinput li a").hover(
      function () {
          jQuery('#ushowinput').children().removeClass("grayclass");
          jQuery(this).addClass("grayclass");
      },
      function () {
          jQuery(this).removeClass("grayclass");
      }
    );
</script>

<script type="text/javascript" src="<%=path%>/Script/xmlhttp.js"></script>

<script type="text/javascript" language="javascript" src="<%=path%>/Script/%cf%e5%d1%f4citynew.js"></script>
<script type="text/javascript" language="javascript" src="<%=path%>/Script/%cf%e5%d1%f4_RentCityNew.js"></script>
<script language="javascript" src="<%=path%>/Script/SearchSuggestionNew.js" charset="gb2312" type="text/javascript"></script>


<script type="text/javascript">initLoginWindowDetail();</script>
        <!-- 租房列表页通栏 -->
        
        <!-- 租房列表页通栏/End -->
        <div class="citynaw">
    <div class="citynawtitle">
        <div class="s2">
            <a href="<%=path %>/index.jsp" rel="nofollow">首页</a><span>|</span></div>
        <div class="searchfb" id="dvbtnsend">
            <a href="<%=path %>/MoBan/addHouse.jsp" rel="nofollow">免费发布信息</a>
            <div class="searchfbx">
                <ul id="ushowinput">
                    <li id="lihouseinput"><a href="<%=path %>/MoBan/addHouse.jsp" id="dailidsy_B02_15" rel="nofollow">
                        租房发布</a></li>
                </ul>
            </div>
        </div>
        
        <div class="clear">
        </div>
    </div>
</div>

    </div>
    <div class="wid1000">
        <!--guide star-->
        <div class="guide" id="rentid_83">
            <a href="http://www.fang.com/" target="_blank" rel="nofollow" >搜房网</a> > <a href="http://zu.xiangyang.fang.com/" target="_blank" >武汉租房</a>
        </div>
        <!--guide end-->
        <!-- searchlink start -->
        <div class="search mt10">
            <div class="con">
                <div class="mt20 ml25" id="rentid_60">
                    <input type="text" name="txt" value="输入你想要查找的房源关键字" class="input gray9" id="mykeyword"
                        onfocus="javascript:if(this.value.trim()=='输入你想要查找的房源关键字'){this.value='';this.style.color = 'black';}"
                        onblur="javascript:if(this.value.trim()==''){this.value='输入你想要查找的房源关键字';this.style.color = 'gray';}"
                        onkeypress="if(event.keyCode==13){return setsearchword1('/renthouse/kwnothing/','输入你想要查找的房源关键字');}" />
                    <a href="<%=path%>/MoBan/index.jsp/#" class="btnSearch" onclick="setsearchword1('/renthouse/kwnothing/','输入你想要查找的房源关键字')">搜 索</a>
                    <div class="clear">
                    </div>
                </div>
             <form action="<%=path %>/house!select.action" method="post">   
       <div class="quxian mt15 ml25" id="rentid_47">
                    <span class="type">区域：</span>
                    <p class="qxName">
        <input type="radio" value="武昌区" class="org bold" name="house.area"/>武昌区
        <input type="radio" value="洪山区" class="org bold" name="house.area"/>洪山区
        <input type="radio" value="江岸区" class="org bold" name="house.area"/>江岸区
        <input type="radio" value="江汉区" class="org bold" name="house.area"/>江汉区
        <input type="radio" value="硚口区" class="org bold" name="house.area"/>硚口区
        <input type="radio" value="汉阳区" class="org bold" name="house.area"/>汉阳区
        <input type="radio" value="东西湖区" class="org bold" name="house.area"/>东西湖区
        <input type="radio" value="沌口" class="org bold" name="house.area"/>沌口
        <input type="radio" value="青山区" class="org bold" name="house.area"/>青山区
        <input type="radio" value="江夏区" class="org bold" name="house.area"/>江夏区
        <input type="radio" value="蔡甸区" class="org bold" name="house.area"/>蔡甸区
        <input type="radio" value="阳逻" class="org bold" name="house.area"/>阳逻
        <input type="radio" value="汉南区" class="org bold" name="house.area"/>汉南区
        <input type="radio" value="新洲区" class="org bold" name="house.area"/>新洲区
        <input type="radio" value="武汉周边" class="org bold" name="house.area"/>武汉周边
                    <div class="clear">
                    </div>              
                </di>
                <ul class="info ml25">
                    <li id="Li1">租金：
                        
<script language="javascript" type="text/javascript">
    var priceurl='/renthouse/c2100-d2100-l300/'
</script> 
<input type="radio" value="1" class="org bold" name="house.priceFlag"/>500元以下
<input type="radio" value="2" class="org bold" name="house.priceFlag"/>500-1000元
<input type="radio" value="3" class="org bold" name="house.priceFlag"/>1000-1500元
<input type="radio" value="4" class="org bold" name="house.priceFlag"/>1500-2000元
<input type="radio" value="5" class="org bold" name="house.priceFlag"/>2000-3000元
<input type="radio" value="6" class="org bold" name="house.priceFlag"/>3000-5000元
<input type="radio" value="8" class="org bold" name="house.priceFlag"/>5000元以上
                    </li>
                    <li id="Li2">户型：
                    <input type="radio" value="1" class="org bold" name="house.room"/>一居
                    <input type="radio" value="2" class="org bold" name="house.room"/>二居
                    <input type="radio" value="3" class="org bold" name="house.room"/>三居
                    <input type="radio" value="4" class="org bold" name="house.room"/>四居                  
                    <input type="radio" value="6" class="org bold" name="house.room"/>四居以上
                    </li>
                    <li id="rentid_B02_07">方式：
                       <input type="radio" value="整租" class="org bold" name="house.rentType"/>整租
                       <input type="radio" value="合租单间" class="org bold" name="house.rentType"/>合租
                       <input type="radio" value="合租床位" class="org bold" name="house.rentType"/>日租周租
                    </li>
                    <li id="rentid_B02_07">特色：
                       <input type="radio" value="地铁房" class="org bold" name="house.rentType"/>地铁房
                       <input type="radio" value="无中介费" class="org bold" name="house.rentType"/>无中介费
                       <input type="radio" value="家电齐全" class="org bold" name="house.rentType"/>家电齐全
                       <input type="radio" value="独厨独卫" class="org bold" name="house.rentType"/>独厨独卫
                       <input type="radio" value="精装修" class="org bold" name="house.rentType"/>精装修
                       <input type="radio" value="新房首租" class="org bold" name="house.rentType"/>新房首租
                       <input type="radio" value="电梯房" class="org bold" name="house.rentType"/>电梯房
                       <input type="radio" value="低租金" class="org bold" name="house.rentType"/>低租金
                       <input type="radio" value="阳光房" class="org bold" name="house.rentType"/>阳光房
                       <input type="radio" value="学校周边" class="org bold" name="house.rentType"/>学校周边                   
                    </li>
                </ul>
                <br>
                <input type="submit" value="确定"/>
                </form>
<style>
.dvSel .select_box{width:83px;height:25px;}
.dvSel div.tag_select,.dvSel div.tag_select_hover,.dvSel div.tag_select_open{display:block;width:60px;height:25px;line-height:25px;font-size:12px;background:url(<%=path%>/Images/searchbj.gif) no-repeat 0 -102px;padding:0 20px 0 3px;}
.dvSel div.tag_select_hover,.dvSel div.tag_select_open{background-position:0 -128px;}
.dvSel ul.tag_options{ margin-top:-1px; mlist-style:none;border:1px solid #bdbdbd; border-top:none;width:81px;background:#fff;}
.dvSel ul.tag_options li{display:block;width:70px;padding:0 8px;height:22px;text-decoration:none;line-height:22px;}
.dvSel ul.tag_options li.open_hover{ background:#E6F1FA;}
.dvSel ul.tag_options li.open_selected{ background:#E6F1FA;}
</style>

            <script type="text/javascript">
                function dvmouseout(obj, ulid) {
                    document.getElementById(ulid).style.display = 'none';
                    obj.className = "tag_select";
                }
                function LocationHrefReplace(url) {
                    if (navigator.userAgent.indexOf("MSIE") > 0) {
                        var referLink = document.createElement('a');
                        referLink.href = url;
                        document.body.appendChild(referLink);
                        referLink.click();
                    } else {
                        window.location.replace(url);
                    }
                }
                function dvmouseover(obj, ulid) {
                    document.getElementById(ulid).style.display = '';
                    obj.className = "tag_select_hover";
                }
                function limouseover(obj) {
                    if (obj.className != "open_selected") {
                        obj.className = 'open_hover';
                    }
                }
                function limouseout(obj) {
                    if (obj.attributes["selected"] == "true") {
                        obj.className = 'open_selected';
                    }
                    else {
                        if (obj.className != "open_selected") {
                            obj.className = 'open';
                        }
                    }
                }
                var timeout;
                function hiddenPt(dl) {
                    var citychange = document.getElementById(dl.id);
                    citychange.style.display = "none";
                    timeout = setTimeout("hiddenPt", 100)
                }
                function showPt(dl) {
                    var citychange = document.getElementById(dl.id);
                    window.clearTimeout(timeout);
                    citychange.style.display = "block";
                }
                function hsetclick() {
                    var cb = document.getElementsByName("cbHSet");
                    var cbvalue = '';
                    for (var i = 0; i < cb.length; i++) {
                        if (cb[i].checked) {
                            cbvalue += cb[i].value + ',';
                        }
                    }
                    if (cbvalue != '') {
                        cbvalue = cbvalue.substring(0, cbvalue.length - 1);
                    }
                    var hset = '';
                    var href = window.location.href;
                    if (href.indexOf('u2') > 0) {
                        if (cbvalue != '') {
                            href = href.substr(0, href.indexOf('u2'));
                            href = href + 'u2' + cbvalue + '/';
                        }
                        LocationHrefReplace(href);
                    } else {
                        if (cbvalue != '') {
                            if (href.indexOf('/renthouse') > 0) {
                                href = href.replace('/renthouse', '/renthouse-u2' + cbvalue);
                            } else if (href.indexOf('/rentvilla') > 0) {
                                href = href.replace('/rentvilla', '/rentvilla-u2' + cbvalue);
                            } else {
                                href = window.location.href + 'renthouse-u2' + cbvalue + "/";
                            }
                            LocationHrefReplace(href);
                        }
                    }
                }

                function checkHset() {
                    var hsets = '';
                if (hsets != "") {
                    var arrHsets = new Array();
                    if (hsets.indexOf(",") > 0) {
                        arrHsets = hsets.split(',');
                    }
                    else {
                        arrHsets[0] = hsets;
                    }
                    var cb = document.getElementsByName("cbHSet");
                    for (var i = 0; i < cb.length; i++) {
                        for (var j = 0; j < arrHsets.length; j++) {
                            if (arrHsets[j] == cb[i].value) {
                                cb[i].checked = true;
                            }
                        }
                    }
                }
            }
            checkHset();
        </script>
                
            </div>
        </div>
        <!-- searchlink end -->


        <script language="javascript" src="<%=path%>/Script/ImgErrorLoad.js"
            type="text/javascript"></script>

        <style type="text/css">
            .floating {
                width: 48px;
                border: 1px solid #e0e0e0;
                border-bottom: none;
                position: fixed;
                left: 50%;
                bottom: 160px;
                margin-left: 505px;
                _position: absolute;
                _position: absolute;
                _top: expression(documentElement.scrollTop+documentElement.clientHeight - this.offsetHeight-160);
            }

                .floating a {
                    display: block;
                    width: 48px;
                    height: 48px;
                    border-bottom: 1px solid #e0e0e0;
                    background: url(<%=path%>/Images/tools.gif) no-repeat;
                    overflow: hidden;
                    transition: all 0.2s ease-in-out;
                }

                .floating .imgFB {
                    background-position: 0 0;
                }

                .floating a.imgFB:hover {
                    background-position: -48px 0;
                }

                .floating .imgSC {
                    background-position: 0 -48px;
                }

                .floating a.imgSC:hover {
                    background-position: -48px -48px;
                }

                .floating .imgJB {
                    background-position: 0 -96px;
                }

                .floating a.imgJB:hover {
                    background-position: -48px -96px;
                }

                .floating .imgUP {
                    background-position: 0 -144px;
                }

                .floating a.imgUP:hover {
                    background-position: -48px -144px;
                }

            .icoDing {
                width: 34px;
                height: 29px;
                right: 13px;
                top: -4px;
                background: url(<%=path%>/Images/iconDing.gif) no-repeat;
                position: absolute;
                z-index: 2;
            }
        </style>



        <div class="floating" style="display: none">
            <a href="<%=path%>/index.jsp" title="返回顶部" class="imgUP"></a>
        </div>
        <div class="listBox mt10 floatl">
            <!--menu star-->
            <ul class="menu black">
                <li class="liOn" id="rentid_B03_10" ><a href="<%=path%>/MoBan/index.jsp/" rel='nofollow'>全部房源</a></li><li  id="rentid_B03_11"><a href="<%=path%>/MoBan/index.jsp/a23/" rel="nofollow">方天下精选</a></li><li  id="rentid_58"><a href="<%=path%>/MoBan/index.jsp/a21/" rel='nofollow'>个人房源</a></li>
                <li class="other" id="rentid_65"><span class="floatl">找到<span class="org bold">${total }</span>条房源
                    ${curpage }
                    /${maxpage }</span><a class="btnLeftNone mt8 ml10 floatl" href="<%=path%>/MoBan/index.jsp/#"></a><a class="btnRight mt8 ml10 floatl" href="<%=path%>/MoBan/index.jsp/i32/"></a></li>
            </ul>
            <!--menu end-->
            <!--paixu star-->
            <div class="updown black" id="rentid_63">
                <div class="floatl" id="selectpx">
                    <div style="cursor: pointer;" onmouseout="dvmouseout(this,'options_orderbys')" onmousemove="dvmouseover(this,'options_orderbys')"
                        class="tag_select" id="list_51">
                        默认排序
                    </div>
                    <ul style="position: absolute; z-index: 999; display: none;" onmouseover="showPt(this)"
                        onmouseout="hiddenPt(this)" class="tag_options" id="options_orderbys">
                        <li><a href="<%=path%>/MoBan/index.jsp/h316/" rel="nofollow">按发布时间排序</a></li><li><a href="<%=path%>/MoBan/index.jsp/h31/" rel="nofollow">按更新时间排序</a></li><li><a href="<%=path%>/MoBan/index.jsp/h34/" rel="nofollow">按租金从低到高</a></li><li><a href="<%=path%>/MoBan/index.jsp/h33/" rel="nofollow">按租金从高到低</a></li><li><a href="<%=path%>/MoBan/index.jsp/h38/" rel="nofollow">按面积从小到大</a></li><li><a href="<%=path%>/MoBan/index.jsp/h37/" rel="nofollow">按面积从大到小</a></li><li><a href="<%=path%>/MoBan/index.jsp/" rel="nofollow">默认排序</a></li>
                    </ul>
                </div>
                <a href="<%=path%>/MoBan/index.jsp/h34/"  rel='nofollow'><span id="zuprice"   title='点击价格从低到高排序'>价格</span></a>
                <a href="<%=path%>/MoBan/index.jsp/h38/"  rel='nofollow'><span id="zusort" title='点击面积从小到大排序'  >面积</span></a>
                <div class="floatr">
                    <label style="cursor: pointer;" class="green box ml10" id="lstHouse_ss">
                        <input name="inputImgs" type="checkbox" id="inputImgs" onclick="selectMultiImgs(this, moreimgsurl);" />有图房源
                    </label>
                </div>
            </div>
            
        <!--paixu end-->
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
                                    <a href="<%=path%>/house!ding.action?house.id=${data.id}">
                                    <img src="<%=path%>/Images/ding.gif">
                                    </a>
                                    
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
                                <p class="houseType alignR mt8 gray9" style="font-size:14px;">经纪人${data.userInfo.userName }</p>
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
        <!--fenye star-->
        <div class="fanye gray6" id="rentid_67">
            <a href="<%=path%>/house!load.action?pageNo=1">首页</a>
            <a href="<%=path%>/house!load.action?pageNo=${curpage-1}">上一页</a>
            <a href="<%=path%>/house!load.action?pageNo=${curpage+1}">下一页</a>
            <a href="<%=path%>/house!load.action?pageNo=${maxpage}">末页</a>
            <span class="txt">共${maxpage }页</span>
        </div>
        <!--fenye end-->
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
        

            <div id="dvhistory" class="sidebarBox">
                <p class="title">
                    <span class="floatl">浏览房源历史</span>
                </p>
                <ul class="info mt5">
                    
                </ul>
                <div class="clear">
                </div>
            </div>
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

