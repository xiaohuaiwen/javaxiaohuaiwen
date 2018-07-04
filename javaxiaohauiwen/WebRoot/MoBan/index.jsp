<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<html>
<head>
<title>搜房网</title>

<meta http-equiv="Content-Type" content="text/html" ; charset="utf-8" />

<script language="javascript" src="<%=path%>/Script/ImgErrorLoad.js"
	type="text/javascript"></script>

<link type="text/css"
	href="<%=path%>/style/baidu/rentListStyle20131115.css" rel="stylesheet"
	media="all" />
<script src="<%=path%>/Script/NewListJS.js" language="javascript"
	type="text/javascript"></script>

<script src="<%=path%>/Script/jquery-1.4.2.min.js" language="javascript"
	type="text/javascript"></script>

<script type="text/javascript" language="javascript">
	String.prototype.trim = function String$trim() {
		if (arguments.length !== 0) {
			throw Error.parameterCount();
		}
		return this.replace(/^\s+|\s+$/g, '');
	}
	var purpose = '住宅';
	var district = '';
	var moreimgsurl = '/renthouse/x21/';
	var cityname = '襄阳';
	var jxurl = '';
	var city = '襄阳';
	var isrealhouseurl = '';
	var room = '', k = '';
	var pricemin = 0, pricemax = 0;
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
				<a href="<%=path%>/admin/login.jsp"
					style="float:none;display:inline" rel="nofollow">管理员登陆</a> <a
					href="<%=path%>/MoBan/login.jsp" rel="nofollow">用户登陆</a> <a
					href="<%=path%>/MoBan/reg.jsp" rel="nofollow">用户注册</a>
			</div>
			<div class="s2">
				<span id="loginBar"></span> | <a
					href="<%=path%>/house!myhouse.action" rel="nofollow">我的房天下</a> | <a
					href="<%=path%>/ding!myding.action" rel="nofollow">我的预订</a> | <a
					href="#" id="dsy_B01_04"  rel="nofollow">网站地图</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="wrap">
		<link type="text/css" href="<%=path%>/style/baidu/headfang.css"
			rel="stylesheet" media="all" />
		<link type="text/css"
			href="<%=path%>/style/baidu/headfang20140616.css" rel="stylesheet"
			media="all" />
		<div class="soufunsearch110615"
			style="margin-top: 40px; margin-bottom: 40px;">
			<div class="soufunsearch110615logo" id="dsy_B01_29">
				<a href="#" target="_blank"> <img
					src="<%=path%>/Images/logoN.png" alt="">
				</a>
				<div class="soufunsearch110615city">
					<strong>襄阳</strong> <span class="zilink">[<a
						href="<%=path%>/MoBan/wuhan.jsp" rel="nofollow">切换</a>]</span>
				</div>
			</div>
		</div>

		<script type="text/javascript"
			src="<%=path%>/Script/jquery-1.4.2.min.js"></script>
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
				timeoutmoreBoxto = setTimeout(
						function() {
							document.getElementById("moreBox" + numcss1112).style.display = "none";
						}, 100);
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

			jQuery("#ushowinput li a").hover(function() {
				jQuery('#ushowinput').children().removeClass("grayclass");
				jQuery(this).addClass("grayclass");
			}, function() {
				jQuery(this).removeClass("grayclass");
			});
		</script>

		<script type="text/javascript" src="<%=path%>/Script/xmlhttp.js"></script>

		<script type="text/javascript" language="javascript"
			src="<%=path%>/Script/%cf%e5%d1%f4citynew.js"></script>
		<script type="text/javascript" language="javascript"
			src="<%=path%>/Script/%cf%e5%d1%f4_RentCityNew.js"></script>
		<script language="javascript"
			src="<%=path%>/Script/SearchSuggestionNew.js" charset="gb2312"
			type="text/javascript"></script>


		<script type="text/javascript">
			initLoginWindowDetail();
		</script>
		<!-- 租房列表页通栏 -->

		<!-- 租房列表页通栏/End -->
		<div class="citynaw">
			<div class="citynawtitle">
				<div class="s2">
					<a href="<%=path%>/index.jsp" rel="nofollow">首页</a><span>|</span>
				</div>
				<div class="searchfb" id="dvbtnsend">
					<a href="<%=path%>/MoBan/addHouse.jsp" rel="nofollow">免费发布信息</a>
					<div class="searchfbx">
						<ul id="ushowinput">
							<li id="lihouseinput"><a
								href="<%=path%>/MoBan/addHouse.jsp" id="dailidsy_B02_15"
								rel="nofollow"> 租房发布</a>
							</li>
						</ul>
					</div>
				</div>

				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="wid1000">
		<!--guide star-->

		<!--guide end-->
		<!-- searchlink start -->
		<div class="search mt10">
			<form action="<%=path%>/house!BlurredSelect.action" method="post">
				<div class="con">
					<div class="mt20 ml25" id="rentid_60">
						<input type="text" name="house.title" class="input gray9"
							id="mykeyword" /> <input type="image" value="搜索"
							src="<%=path%>/Images/sbutton.gif">

						<div class="clear"></div>
					</div>
			</form>
			<br> <br>
			<form action="<%=path%>/house!select.action" method="post">
				<div>
					<ul class="info ml25">
						<li id="Li1">区域： <input type="radio" value="襄城区"
							class="org bold" name="house.area" />襄城区 <input type="radio"
							value="樊城区" class="org bold" name="house.area" />樊城区 <input
							type="radio" value="襄州区" class="org bold" name="house.area" />襄州区
							<input type="radio" value="高薪区" class="org bold"
							name="house.area" />高薪区 <input type="radio" value="鱼粱洲"
							class="org bold" name="house.area" />鱼粱洲 <input type="radio"
							value="东津新区" class="org bold" name="house.area" />东津新区 <input
							type="radio" value="宜城" class="org bold" name="house.area" />宜城 <input
							type="radio" value="枣阳" class="org bold" name="house.area" />枣阳 <input
							type="radio" value="老河口" class="org bold" name="house.area" />老河口
							<input type="radio" value="谷城" class="org bold" name="house.area" />谷城
						</li>
				</div>
				<ul class="info ml25">
					<li id="Li1">租金： <input type="radio" value="1"
						class="org bold" name="house.priceFlag" />500元以下 <input
						type="radio" value="2" class="org bold" name="house.priceFlag" />500-800元
						<input type="radio" value="3" class="org bold"
						name="house.priceFlag" />800-1200元 <input type="radio" value="4"
						class="org bold" name="house.priceFlag" />1200-1800元 <input
						type="radio" value="5" class="org bold" name="house.priceFlag" />1800-2500元
						<input type="radio" value="6" class="org bold"
						name="house.priceFlag" />2500-3500元 <input type="radio" value="7"
						class="org bold" name="house.priceFlag" />3500-5000元 <input
						type="radio" value="8" class="org bold" name="house.priceFlag" />5000元以上
					</li>
					<li id="Li2">户型： <input type="radio" value="1"
						class="org bold" name="house.room" />一居 <input type="radio"
						value="2" class="org bold" name="house.room" />二居 <input
						type="radio" value="3" class="org bold" name="house.room" />三居 <input
						type="radio" value="4" class="org bold" name="house.room" />四居 <input
						type="radio" value="5" class="org bold" name="house.room" />五居 <input
						type="radio" value="6" class="org bold" name="house.room" />五居以上</li>
					<li id="rentid_B02_07">租住类型： <input type="radio" value="整租"
						class="org bold" name="house.rentType" />整租 <input type="radio"
						value="合租单间" class="org bold" name="house.rentType" />合租单间 <input
						type="radio" value="合租床位" class="org bold" name="house.rentType" />合租床位
					</li>
				</ul>
				<br>
				<div style="margin-left: 25px">
					<input type="submit" value="确定" />
				</div>
			</form>
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
					} else {
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
					for ( var i = 0; i < cb.length; i++) {
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
								href = href.replace('/renthouse',
										'/renthouse-u2' + cbvalue);
							} else if (href.indexOf('/rentvilla') > 0) {
								href = href.replace('/rentvilla',
										'/rentvilla-u2' + cbvalue);
							} else {
								href = window.location.href + 'renthouse-u2'
										+ cbvalue + "/";
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
						} else {
							arrHsets[0] = hsets;
						}
						var cb = document.getElementsByName("cbHSet");
						for ( var i = 0; i < cb.length; i++) {
							for ( var j = 0; j < arrHsets.length; j++) {
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
	_top: expression(documentElement.scrollTop + documentElement.clientHeight -  
		this.offsetHeight-160);
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
			<li class="liOn" id="rentid_B03_10"><a
				href="<%=path%>/MoBan/index.jsp/" rel='nofollow'>出租房源</a>
			</li>
			<li class="other" id="rentid_65"><span class="floatl">找到<span
					class="org bold">${total }</span>条房源 ${curpage } /${maxpage }</span><a
				class="btnLeftNone mt8 ml10 floatl"
				href="<%=path%>/MoBan/index.jsp/#"></a><a
				class="btnRight mt8 ml10 floatl"
				href="<%=path%>/MoBan/index.jsp/i32/"></a>
			</li>
		</ul>
		<!--menu end-->
		<!--paixu star-->


		<!--paixu end-->
		<!--houseList star-->
		<div class="houseList" id="rentid_66">
			<c:forEach var="data" items="${houseList }">
				<dl class="list hiddenMap rel" id='rentid_B04_01'>
					<dt class="img rel floatl">
						<a href="<%=path %>/house!detail.action?house.id=${data.id}"
							target="_blank"
							title="${data.rentType }出租,${data.fixture },${data.room }室${data.lroom }厅,${data.sqm }㎡,${data.price }元/月">
							<img height="135" width="180" usertype="1"
							src2=""
							src="<%=path%>/Images/${data.img }"
							onerror="" />
						</a>
					</dt>
					<dd class="info rel floatr">
						<p class="title">
							<a href="<%=path %>/house!detail.action?house.id=${data.id}">
								${data.title } </a>
						</p>

						<p class="gray6 mt10">
							<a href='<%=path%>/MoBan/index.jsp-a013214/'>${data.area }</a>-
							<a href='<%=path%>/MoBan/index.jsp-a013214-b015471/'>${data.circle
								}</a>- <a
								href="<%=path%>/MoBan/index.jsp/kw%b6%fe%ca%ae%d6%d0%d1%a7%d0%a3%c5%d4%b2%bf%b6%d3%bc%d2%ca%f4%d4%ba/"
								target="_blank"><span>${data.homeName }</span>
							</a> <span class="iconAdress ml10" title='${data.homeName }'>
								${data.homeName } </span>
						</p>
						<p class="gray6 mt5">
							${data.room }室${data.lroom }厅<span class="gray9 mlr5">/</span>${data.sqm
							}㎡(建筑面积)<span class="gray9 mlr5">/</span>${data.fixture }<span
								class="gray9 mlr5">/</span>${data.floor }/${data.sfloor }层<span
								class="gray9 mlr5">/</span>朝${data.direction }
						</p>

						<div class='mt12'>
							<div class='floatl pt4'></div>
							<div class='floatl note-img'>

								<img src="<%=path%>/Images/bang.gif">

							</div>
							<div class='floatl note-img'>
								<a
									href="<%=path%>/ding!ding.action?ding.houseInfo.id=${data.id}&ding.userInfo.id=${userList.id}">
									<img src="<%=path%>/Images/ding.gif"> </a>
							</div>
						</div>
						<div class="moreInfo">
							<p class="alignR"></p>
							<p class="mt5 alignR">
								<span class="price"> ${data.price } </span>元/月
							</p>
							<p class="houseType alignR mt8 gray9" style="font-size:14px;">经纪人${data.userInfo.realName
								}</p>
							<p class="mt10 alignR gray">
								<span> ${data.curdate } </span>
							</p>
						</div>
					</dd>
				</dl>
			</c:forEach>
		</div>
		<!--houseList end-->
		<div class="clear"></div>
		<!--fenye star-->
		<div class="fanye gray6" id="rentid_67">
			<a href="<%=path%>/house!load.action?pageNo=1">首页</a> <a
				href="<%=path%>/house!load.action?pageNo=${curpage-1}">上一页</a> <a
				href="<%=path%>/house!load.action?pageNo=${curpage+1}">下一页</a> <a
				href="<%=path%>/house!load.action?pageNo=${maxpage}">末页</a> <span
				class="txt">共${maxpage }页</span>
		</div>
		<!--fenye end-->
		<div class="clear"></div>
		<style>
.chazhao_btn {
	margin-left: 6px;
	float: right;
}

.chazhao_btn a,.chazhao_btn a:hover {
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
		<div class="clear"></div>

		<script src="<%=path%>/Script/SearchListNew.js" language="javascript"
			type="text/javascript"></script>

	</div>

	<script type="text/javascript">
		var t;
		var ie6 = !-[ 1, ] && !window.XMLHttpRequest;

		jQuery(window).scroll(
				function() {
					if (!ie6) {
						var fold = jQuery(window).height()
								+ jQuery(window).scrollTop();
						if (fold > jQuery("#rentid_60").offset().top + 600) {
							jQuery(".Floating").css("display", "block");
							jQuery(".floating").css("display", "block");
						} else {
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
				<c:forEach var="his" items="${ historyList}">
					<li><a
						href="<%=path %>/house!detail.action?house.id=${his.id }">${his.title
							}</a>
					</li>
				</c:forEach>
			</ul>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>


	</div>
	<!--sidebar end-->
	<div class="clear"></div>

	<style type="text/css">
.links {
	border: 1px solid #dddCCC;
	font-family: "微软雅黑";
	margin: 10px auto;
	width: 1000px;
}

.mianze {
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
.DivCss20091020WZiColor333 a:link {
	color: #333;
	text-decoration: none;
}

.DivCss20091020WZiColor333 a:visited {
	color: #333;
	text-decoration: none;
}

.DivCss20091020WZiColor333 a:hover {
	color: #f00;
	text-decoration: underline;
}

.DivCss20091020WZiColor333 a:active {
	color: #f00;
}

.DivCss20091020WZiColorf00 a:link {
	color: #f00;
	text-decoration: none;
}

.DivCss20091020WZiColorf00 a:visited {
	color: #f00;
	text-decoration: none;
}

.DivCss20091020WZiColorf00 a:hover {
	color: #f00;
	text-decoration: underline;
}

.DivCss20091020WZiColorf00 a:active {
	color: #f00;
}
</style>

			<script type="text/javascript">
				var $ = function(id) {
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
					timeout = setTimeout(function() {
						$("moreBox" + numcss1020).style.display = "none";
					}, 100);
				}
				function show_moreBoxto(numcss1020) {
					window.clearTimeout(timeout);
					$("moreBox" + numcss1020).style.display = "";
				}
				function AddFavorite() {
					var title = document.title;
					var url = document.location.href;
					if (window.sidebar)
						window.sidebar.addPanel(title, url, "");
					else if (window.opera && window.print) {
						var mbm = document.createElement('a');
						mbm.setAttribute('rel', 'sidebar');
						mbm.setAttribute('href', url);
						mbm.setAttribute('title', title);
						mbm.click();
					} else if (document.all)
						window.external.addFavorite(url, title);
				}
			</script>

			<!--20091020搜房网统一版尾-->
			<div class="mt10 clear"></div>
			<div id="http://esfbj_71"
				style="width: 1000px; height: 105px; background: #fff;
            font-size: 12px; font-family: '宋体'; clear: both; margin: 0 auto; border-top: 1px solid #ccc;"
				class="DivCss20091020WZiColor333">
				<div style="line-height: 20px; text-align: center; margin-top: 5px;">
					<a href="<%=path%>/index.jsp" target="_blank">返回首页</a> <span
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

				<div
					style="font-family: Verdana; line-height: 20px; text-align: center;">
					copyright &copy;

					<script language="javascript">
						var dt = new Date();
						y = dt.getFullYear(); //获取年(四位) document.write(y)
					</script>

					SouFun.com Limited, All Rights Reserved
				</div>
				<div
					style="line-height: 23px; text-align: center; position: relative;">
					搜房科技发展有限公司 版权所有</div>
				<div style="line-height: 20px; text-align: center;">
					举报电话：<span style="font-family: Verdana;">400-000-0000</span> 举报邮箱：<a
						href="mailto:jubao@fang.com" style="font-family: Verdana;">jubao@fang.com</a>
				</div>
			</div>

			<script type="text/javascript" src="<%=path%>/Script/a1.js"></script>

			<script type="text/javascript" src="<%=path%>/Script/getacc.js"></script>

		</div>
		<script src="<%=path%>/Script/support.dialogbox.js"
			type="text/javascript"></script>
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
	<script src="<%=path%>/Script/adpupshow.js"></script>
</body>
<script type="text/javascript">
	var _dctc = _dctc || {};
	_dctc._account = _dctc._account
			|| [ 'UA-24140496-1', 'UA-24830445-1', 'UA-24830823-1' ];
	_dctc.bid = 13;
	_dctc.isNorth = _dctc.isNorth || 'Y';
	(function() {
		var script = document.createElement('script');
		script.type = 'text/javascript';
		script.async = true;
		script.src = 'http://js.soufunimg.com/count/load.min.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(script, s);
	})();
</script>
</html>

