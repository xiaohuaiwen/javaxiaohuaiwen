<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<c:if test="${userList eq null }">
	<script>
		window.location.href="<%=path%>/MoBan/login.jsp";
	</script>
</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>匿名发布出租</title>
    <link href="../style/baidu/usercenter_rent1.css" rel="stylesheet"
        type="text/css" />
    <link type="text/css" href="../style/baidu/rightbar.css" rel="stylesheet"
        media="all" />
      <link href="../style/baidu/d_newhouse.css" rel="stylesheet" type="text/css" />
    <link type="text/css" href="../style/baidu/Renthouse20130918.css"
        rel="stylesheet" media="all" />

    <script src="../Script/input.xmlnode.js" type="text/javascript"></script>

    <script type="text/javascript" src="../Script/jquery-1.4.2.min.js"></script>

    <script type="text/javascript" src="../Script/root.xml.js"></script>

    <script type="text/javascript" src="../Script/root.xmlnode.js"></script>

    <script type="text/javascript" src="../Script/keys.js"></script>

    <script type="text/javascript" src="../Script/inputs.js"></script>

    <script type="text/javascript" src="../Script/sfphotoimage.js"></script>

    <script src="../Script/RSA.js" type="text/javascript"></script>
    <script src="../Script/BigInt.js" type="text/javascript"></script>
    <script src="../Script/Barrett.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript">    
        setMaxDigits(129);
        var key = new RSAKeyPair("010001", "", "978C0A92D2173439707498F0944AA476B1B62595877DD6FA87F6E2AC6DCB3D0BF0B82857439C99B5091192BC134889DFF60C562EC54EFBA4FF2F9D55ADBCCEA4A2FBA80CB398ED501280A007C83AF30C3D1A142D6133C63012B90AB26AC60C898FB66EDC3192C3EC4FF66925A64003B72496099F4F09A9FB72A2CF9E4D770C41");
        var isNorth = 'N';
        var cityName='襄阳',city='襄阳';var domin='xiangyang.fang.com',usreyht='False',lzphone='';
        var ishavePhoneConfirm='True',username=""; var currentdomain='fang.com';
        var purpose='住宅', str='住宅',pricemin='',pricemax='',district='',comerea='',room='',k='',isEdit='False';
        var vals=[];
        var flashimg='/rent/image/rent/styles/img/btn_dz_New.gif';
        var Districts_sp=[];
        var Area_sp_new=[]; 
        

        var cityIncludeCity=[];
    </script>
	<script>
			function getCircle(){
				document.getElementById("circle").options.length=1;
				var arr={"樊城区":["沃尔玛","华丰路","万达广场","人民广场","火车站"],"襄城区":["十字街","文理学院","西门桥","胜利街","檀溪路"],"襄州区":["襄州区"],"高新区":["襄阳经济技术发展区"],"鱼梁洲":["鱼梁洲"],"东津新区":["东津新区"],"宜城":["宜城"],"枣阳":["枣阳"],"老河口":["老河口"]}
				var area=document.all.area.value;
				
				var are=arr[area];
				for(var i=0;i<are.length;i++){
					var opt=new Option(are[i],are[i]);
					document.getElementById("circle").options.add(opt)
				}
			}
		</script>
    <style>
        .rightcon {
            width: 958px;
        }

        .righttitle01, .niming_righttitle01, .righttitle02, .niming_righttitle02, .righttitle03, .righttitle04 {
            width: 922px;
        }
    </style>
</head>
<body>
    <div class="nav613">
        <div class="nav613nr">
		    	<div class="s1">
		       	  <a href="#" class="mob" target="_blank" rel="nofollow">手机房天下</a><a href="#" class=""  style="float:none;display:inline" target="_blank" rel="nofollow">经纪人登陆</a>
		        </div>
		   	  <div class="s2"><span id="loginBar" ></span> | <a href="#" target="_blank" rel="nofollow">我的房天下</a> | <a href="#" target="_blank" rel="nofollow">帮助</a> | <a href="#" id="dsy_B01_04" target="_blank" rel="nofollow" >网站地图</a></div>
		    	<div class="clear"></div>
		    </div>
    </div>
    <div class="wrap">
        <link type="text/css" href="../style/baidu/headfang.css"rel="stylesheet" media="all" />
<link type="text/css" href="../style/baidu/headfang20140616.css"rel="stylesheet" media="all" />
<div class="soufunsearch110615" style="margin-top: 40px; margin-bottom: 40px;">
    <div class="soufunsearch110615logo" id="dsy_B01_29">
        <a href="http://www.fang.com/" target="_blank">
            <img src="../Images/logoN.png" alt=""></a></div>
    <div class="clear">
    </div>
</div>

<script type="text/javascript" src="../Script/jquery-1.4.2.min.js"></script>
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

<script type="text/javascript" src="../Script/xmlhttp.js"></script>

<script type="text/javascript" language="javascript" src="../Script/%cf%e5%d1%f4citynew.js"></script>
<script type="text/javascript" language="javascript" src="../Script/%cf%e5%d1%f4_RentCityNew.js"></script>
<script language="javascript" src="../Script/SearchSuggestionNew.js" charset="gb2312" type="text/javascript"></script>


<script type="text/javascript">initLoginWindowDetail();</script>
    </div>
    <div class="clear">
    </div>
    <div class="content">
        
        <div class="searchfb" id="dvbtnsend">
            
           
            <div class="clear">
            </div>
        </div>
        <form method="post" action="<%=path %>/house!add.action?house.userInfo.id=${userList.id}" id="form2" enctype="multipart/form-data">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUINjE2NzkzMjVkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxY0BQpyZF96aGVuZ3p1BQdyZF9oZXp1BQpsZWliaWVfc3AxBQpsZWliaWVfc3AyBQpsZWliaWVfc3AzBQpsZWliaWVfc3A0BQpsZWliaWVfc3A1BQpsZWliaWVfc3A2BQpsZWliaWVfc3A3BQpsZWliaWVfc3A4BQpsZWliaWVfc3A5BRJyYWRpb3podWFuZ3hpdV9zcDEFEnJhZGlvemh1YW5neGl1X3NwMgUScmFkaW96aHVhbmd4aXVfc3AzBRJjaGVja2JveFBlaVRhb19zcDEFEmNoZWNrYm94UGVpVGFvX3NwMgUSY2hlY2tib3hQZWlUYW9fc3AzBRJjaGVja2JveFBlaVRhb19zcDQFEmNoZWNrYm94UGVpVGFvX3NwNQUSY2hlY2tib3hQZWlUYW9fc3A2BQtja19yb29tX2JlZAUOY2tfcm9vbV9vbmxpbmUFEGNrX3Jvb21fb25saW5ldHYFC2NrX3Jvb21faWNlBQxja19yb29tX3dhc2gFC2NrX3Jvb21fYWlyBQ1ja19yb29tX3dhdGVyBQ9ja19yb29tX2hlYXRpbmcFEGNibGlzdEZlYXRoZXJzJDAFEGNibGlzdEZlYXRoZXJzJDEFEGNibGlzdEZlYXRoZXJzJDIFEGNibGlzdEZlYXRoZXJzJDMFEGNibGlzdEZlYXRoZXJzJDQFEGNibGlzdEZlYXRoZXJzJDUFEGNibGlzdEZlYXRoZXJzJDYFEGNibGlzdEZlYXRoZXJzJDcFEGNibGlzdEZlYXRoZXJzJDgFEGNibGlzdEZlYXRoZXJzJDkFEWNibGlzdEZlYXRoZXJzJDEwBRFjYmxpc3RGZWF0aGVycyQxMQURY2JsaXN0RmVhdGhlcnMkMTIFEWNibGlzdEZlYXRoZXJzJDEzBRFjYmxpc3RGZWF0aGVycyQxNAURY2JsaXN0RmVhdGhlcnMkMTUFEWNibGlzdEZlYXRoZXJzJDE2BRFjYmxpc3RGZWF0aGVycyQxNwURY2JsaXN0RmVhdGhlcnMkMTgFEWNibGlzdEZlYXRoZXJzJDE5BRFjYmxpc3RGZWF0aGVycyQyMAURY2JsaXN0RmVhdGhlcnMkMjEFEWNibGlzdEZlYXRoZXJzJDIyBRFjYmxpc3RGZWF0aGVycyQyMmq9shg2HNv2C7pGJpQK9HjhhtZk" /> 
                <div class="righttitle01 font14">
                    发布类型
                </div>
                <div class="rightbox1">
                    <table cellpadding="0" cellspacing="0" border="0" class="tab01" width="100%">
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td width="120">请选择发布类型：
                            </td>
                            <td>
                                <input name="house.type" id="public1" checked="checked" type="radio" value="住宅" onclick="ChangePublic(this)" />
                                <span class="mr25">住宅</span>
                            
                                <input name="house.type" id="public2" type="radio" value="别墅"
                                    onclick="ChangePublic(this)" />
                                <span class="mr25">别墅</span>    
                                <input name="house.type" id="public4" type="radio" value="商铺" onclick="ChangePublic(this)" />
                                <span class="mr25" id="public4_c">商铺</span>
                                
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="righttitle01 font14">
                    基本信息
                </div>
                <!--住宅-->
                <div class="rightbox1" id="Publishdiv1" style="position: relative; z-index: 1">
                    <table cellpadding="0" cellspacing="0" border="0" class="tab01" width="100%">
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td width="90">小区名称：
                            </td>
                            <td>
                                <input name="house.homeName" type="text" id="input_PROJNAME" autocomplete="off" size="30" maxlength="30" class="input01 veralM" /><span id="sp_projname" class="RedWZ"></span><br />
                                <span id="sp_districtcomarea" name="sp_districtcomarea" style="line-height: 16px; float: left; margin-top: 10px; color: #999999; display: none;"></span>
                                <div class="tableBox" style="position: relative; z-index: 200">
                                    <table id="Suggestion" bgcolor="#FFFFFF" cellpadding="4" cellspacing="0" border="0"
                                        style="border: 1px solid #666666; position: absolute; z-index: 100; width: 217px; display: none;">
                                        <tbody>
                                            <tr>
                                                <td colspan="2" height="16" style="color: #999">输中文/上下键选择
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr id="trdistrict">
                            <td width="10" class="orange">*
                            </td>
                            <td>位<span class="pl27"></span>置：
                            </td>
                            <td class="select_box">
                                <div style="z-index: 199; position: relative">
                                    <div class="select_position" id="selDistrict">
                                        <select id="area" class="select_menu mr8" name="house.area" onchange="getCircle()">
                                        <option value="请选择">请选择区域</option>
				<option value="樊城区">樊城区</option>
				<option value="襄城区">襄城区</option>
				<option value="襄州区">襄州区</option>
				<option value="高新区">高新区</option>
				<option value="鱼梁洲">鱼梁洲</option>
				<option value="东津新区">东津新区</option>
				<option value="宜城">宜城</option>
				<option value="枣阳">枣阳</option>
				<option value="老河口">老河口</option>
                                        </select>
                                    </div>
                                    <div class="select_position" id="selComarea">
                                        <select name="house.circle" id="circle" class="select_menu mr8">
                                        <option value="请选择">请选择商圈</option>
									</select>
                                    </div>
                                    
                                    <span id="DistrictAndComarea" class="RedWZ"></span>
                                </div>
                            </td>
                        </tr>
                        
                        <tr id="trAddress">
                            <td width="10" class="orange">*
                            </td>
                            <td>地<span class="pl27"></span>址：
                            </td>
                            <td>
                                <input name="house.locationName" type="text" id="input_ADDRESS" size="40" maxlength="50" class="input03" /><span id="sp_address" class="RedWZ
"></span>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>租赁方式：
                            </td>
                            <td>
                                <input value="整租" name="house.rentType" type="radio" id="rd_zhengzu" checked="checked"  />
                                整租
                                <input value="合租" name="house.rentType" type="radio" id="rd_hezu"  />
                                合租
                                <input name="house.rentType" type="radio" value="短期出租" id="rd_duanzu" />
                                短期出租
                            </td>
                        </tr>
                        <tr id="ZhengzuInfo">
                            <td width="10" class="orange">*
                            </td>
                            <td>房屋状况：
                            </td>
                            <td>
                                <input name="house.room" type="text" id="sel_room" maxlength="1" class="input04 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t; JumpHouse(&#39;sel_room&#39;, &#39;sel_hall&#39;);" />
                                室
                                <input name="house.lroom" type="text" id="sel_hall" maxlength="1" class="input04 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;  JumpHouse(&#39;sel_hall&#39;, &#39;sel_wc&#39;);" />
                                厅
                                <input name="house.broom" type="text" id="sel_wc" class="input04 veralM" maxlength="1" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t; " />
                                卫 <span class="RedWZ" id="sp_roomtype"></span>
                            </td>
                        </tr>
                        <tr style="display: none;" id="tr_hezu">
                            <td width="10" class="orange">*
                            </td>
                            <td>合租方式：
                            </td>
                            <td class="select_box">
                                <div style="position: relative; z-index: 100">
                                    <div class="select_position" id="input_n_str_FORWARD">
                                        <a class="select_menu mr8" onclick="input_n_str_FORWARD_a()"><span id="input_n_str_FORWARD_d">请选择</span></a>
                                        <div class="select_con4 cengwid64" id="Div2" style="display: none;">
                                            <ul>
                                                <li>30</li>
                                                <li>20</li>
                                                <li>10</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <input name="input_n_str_FORWARD_bs" type="hidden" id="input_n_str_FORWARD_bs" />
                                    <div class="select_position" id="RoomCount">
                                        <a class="select_menu" onclick="RoomCount_a()"><span id="RoomCount_d">请选择</span></a>
                                        <div class="select_con4 cengwid64" id="Div3" style="display: none;">
                                            <ul>
                                                <li>30</li>
                                                <li>20</li>
                                                <li>10</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <input name="RoomCount_bs" type="hidden" id="RoomCount_bs" />
                                    <span style="float: left; margin-top: 8px; margin-right: 8px; margin-left: 8px;">户合租</span>
                                    <div class="select_position" id="input_n_str_FORWARD2">
                                        <a class="select_menu" onclick="input_n_str_FORWARD2_a()"><span id="input_n_str_FORWARD2_d">性别不限</span></a>
                                        <div class="select_con4 cengwid64" id="Div4" style="display: none;">
                                            <ul>
                                                <li>30</li>
                                                <li>20</li>
                                                <li>10</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <input name="input_n_str_FORWARD2_bs" type="hidden" id="input_n_str_FORWARD2_bs" />
                                    <span id="sp_hezu" class="RedWZ"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange"><br /></td>
                            <td><br /></td>
                            <td class="select_box">
                                <div style="z-index: 99; position: relative">
                                    <span class="floatl mr8">
                                        <input name="house.sqm" type="text" id="input_Area" num="价格只能是数字" size="10" maxlength="4" class="input02 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;" />
                                        平方米(建筑面积)</span>
                                    
                                    <div class="select_position floatl" id="sel_houseDecoration_id" style="display: block;"
                                        onmouseleave="sel_houseDecorationLeave()">
                                       <select name="house.fixture">
                                       		<option vulue="豪华装修">豪华装修</option>
                                       		<option vulue="精装修">精装修</option>
                                       		<option vulue="中等装修">中等装修</option>
                                       		<option vulue="简单装修">简单装修</option>
                                       		<option vulue="毛坯房">毛坯房</option>
                                       </select>
                                    </div>
                                    <input name="sel_houseDecoration_bs" type="hidden" id="sel_houseDecoration_bs" />
                                    
                                    <div class="select_position floatl" id="sel_houseforward">
                                       <select name="house.direction">
                                       		<option vulue="南北">南北</option>
                                       		<option vulue="南">南</option>
                                       		<option vulue="东南">东南</option>
                                       		<option vulue="东">东</option>
                                       		<option vulue="西南">西南</option>
                                       		<option vulue="北">北</option>
                                       		<option vulue="西">西</option>
                                       		<option vulue="东西">东西</option>
                                       </select>
                                    </div>
                                    <input name="sel_houseforward_bs" type="hidden" id="sel_houseforward_bs" /><span id="sp_forward" class="RedWZ"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>楼<span class="pl27"></span>层：
                            </td>
                            <td>第 <span id="td_FLOOR">
                                <input name="house.floor" type="text" id="input_FLOOR" maxlength="2" class="input04 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;" />
                            </span>层 共 <span id="td_TOTLEFLOOR">
                                <input name="house.sfloor" type="text" id="input_TOTLEFLOOR" class="input04 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;" /></span>
                                层<span class="RedWZ" id="sp_floor"><span style="color: Gray">(地下室请填负数)</span></span>
                            </td>
                        </tr>
                       
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>租<span class="pl27"></span>金：
                            </td>
                            <td class="select_box">
                                <div style="position: relative; z-index: 1">
                                    <span class="floatl mr8">
                                        <input name="house.price" type="text" id="input_PRICE" size="10" maxlength="6" num="价格只能是数字" class="input02 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;" />
                                        元/月 </span><span class="select_position floatl" id="zhifufangshidiv">
                                        <select name="house.moneyType">
                                       		<option vulue="押一付三">押一付三</option>
                                       		<option vulue="押一付二">押一付二</option>
                                       		<option vulue="押一付一">押一付一</option>
                                       		<option vulue="押二付一">押二付一</option>
                                       		<option vulue="半年付">半年付</option>
                                       		<option vulue="面议">面议</option>
                                       </select>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <!--商铺-->
                <div class="rightbox1" id="Publishdiv4" style="position: relative; z-index: 1">
                    <table cellpadding="0" cellspacing="0" border="0" class="tab01" width="100%">
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td width="90">类<span class="pl27"></span>别：
                            </td>
                            <td>
                                <input name="radio_leibie_sp" type="radio" value="商铺出租" checked />
                                商铺出租
                                <input name="radio_leibie_sp" type="radio" value="商铺转让" />
                                商铺转让
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>商铺名称：
                            </td>
                            <td>
                                <input name="spname" type="text" id="spname" class="input01" /><span style="margin-bottom: 10px; _padding-top: 6px; _height: 24px;"
                                    id="spnameContent" class="RedWZ"></span>
                                <div class="tableBox" style="position: relative; z-index: 200">
                                    <table id="Suggestion_sp" bgcolor="#FFFFFF" cellpadding="4" cellspacing="0" border="0"
                                        style="border: 1px solid #666666; position: absolute; z-index: 100; width: 217px; display: none;">
                                        <tbody>
                                            <tr>
                                                <td colspan="2" height="16" style="color: #999">输中文/上下键选择
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>位<span class="pl27"></span>置：
                            </td>
                            <td class="select_box">
                                <div style="z-index: 99; position: relative">
                                    <div class="select_position" id="selDistrict_sp">
                                        <a class="select_menu mr8" id="selDistrict_sp_a" onclick="createDistricts_sp()" onmouseover="createDistricts_sp()">
                                            <span id="District_sp_Text">请选择区域</span></a>
                                    </div>
                                    <div class="select_position" id="selComarea_sp">
                                        <a onclick="createComarea_sp()" id="selComarea_sp_a" class="select_menu mr8"><span
                                            id='Comarea_sp_Text'>请选择商圈</span></a>
                                    </div>
                                     <div class="select_position" id="selOtherComarea_sp" style="display:none">
                                        <a onclick="createOtherComarea_sp()" id="selOtherComarea_sp_a" class="select_menu mr8"><span
                                            id='OtherComarea_sp_Text'>请选择商圈</span></a>
                                    </div>
                                    <span class="RedWZ" id="DistrictAndComarea_sp"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>商铺地址：
                            </td>
                            <td>
                                <input name="adress_sp" type="text" class="input03" id="adress_sp" />&nbsp;&nbsp;<span
                                    class="RedWZ" id="adress_spContent"></span>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>商铺类型：
                            </td>
                            <td class="select_box">
                                <div style="z-index: 1; position: relative">
                                    <div class="select_position" id="shangpuType">
                                        <a class="select_menu" onclick="shangpuType_a()"><span id="shangpuType_d">请选择商铺类型</span></a>
                                        
                                    </div>
                                    &nbsp;&nbsp; <span id="shangpuTypecontent" class="RedWZ"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td width="90">当前状态：
                            </td>
                            <td>
                                <input name="radio_dangqian_sp" type="radio" value="营业中" checked="checked" />
                                营业中
                                <input name="radio_dangqian_sp" type="radio" value="闲置中" />
                                闲置中
                                <input name="radio_dangqian_sp" type="radio" value="新铺" />
                                新铺
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>可经营类别：
                            </td>
                            <td class="peitao">
                                <p id="SP_JYLBp">
                                    <input name="leibie_sp1" type="checkbox" id="leibie_sp1" value="餐饮美食" />
                                    餐饮美食
                                    <input name="leibie_sp2" type="checkbox" id="leibie_sp2" value="服饰鞋包" />
                                    服饰鞋包
                                    <input name="leibie_sp3" type="checkbox" id="leibie_sp3" value="休闲娱乐" />
                                    休闲娱乐
                                    <input name="leibie_sp4" type="checkbox" id="leibie_sp4" value="美容美发" />
                                    美容美发
                                    <input name="leibie_sp5" type="checkbox" id="leibie_sp5" value="生活服务" />
                                    生活服务
                                    <input name="leibie_sp6" type="checkbox" id="leibie_sp6" value="百货超市" />
                                    百货超市
                                    <input name="leibie_sp7" type="checkbox" id="leibie_sp7" value="酒店宾馆" />
                                    酒店宾馆
                                </p>
                                <p id="SP_JYLB2">
                                    <input name="leibie_sp8" type="checkbox" id="leibie_sp8" value="家居建材" />
                                    家居建材
                                    <input name="leibie_sp9" type="checkbox" id="leibie_sp9" value="其他" />其他<span
                                        id="SP_JYLB" class="RedWZ"></span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>建筑面积：
                            </td>
                            <td>
                                <input name="Area_sp" type="text" id="Area_sp" class="input02 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;" />
                                平方米 &nbsp;&nbsp;<span class="RedWZ" id="AreaContent_sp"></span>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>租<span class="pl27"></span>金：
                            </td>
                            <td>
                                <input name="Price_sp" type="text" id="Price_sp" num="价格只能是数字" size="10" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;" class="input02 veralM" />
                                <input type="radio" value="元/平米·天" id="radio6" name="radio_zujinlb_sp" class="veralM" />
                                <label for="radio">
                                </label>
                                元/平米·天&nbsp;
                                <input type="radio" id="radio7" name="radio_zujinlb_sp" value="元/平米·月" class="veralM" />
                                元/平米·月&nbsp;
                                <input type="radio" id="radio8" name="radio_zujinlb_sp" value="元/月" class="veralM" />
                                <label for="radio2">
                                </label>
                                元/月 <span id="PriceContent_sp" class="RedWZ"></span>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>支付方式：
                            </td>
                            <td class="select_box">
                                <div style="z-index: 1; position: relative">
                                    <div class="select_position" id="zhifufangshi_sp">
                                        <a class="select_menu" onclick="zhifufangshi_sp_a()"><span id="zhifufangshi_sp_d">支付方式</span></a>
                                        <div class="select_con4" id="Div10" style="display: none;">
                                            <ul>
                                                <li>押一付三</li>
                                                <li>押一付二</li>
                                                <li>半年付</li>
                                            </ul>
                                        </div>
                                    </div>
                                    &nbsp;&nbsp;<span id="zhifufangshiContent_sp" class="RedWZ"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange"></td>
                            <td>是否可分割：
                            </td>
                            <td>
                                <input name="radio_fenge_sp" type="radio" value="可分割" /><span style="padding: 0 5px">可分割</span><input
                                    name="radio_fenge_sp" type="radio" value="不可分割" /><span style="padding: 0 5px">不可分割</span>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange"></td>
                            <td>装修程度：
                            </td>
                            <td>
                                <input value="精装修" name="radiozhuangxiu_sp" type="radio" id="radiozhuangxiu_sp1" /><span style="padding: 0 5px">精装修</span><input value="简装修" name="radiozhuangxiu_sp" type="radio" id="radiozhuangxiu_sp2" /><span style="padding: 0 5px">简装修</span><input value="毛坯" name="radiozhuangxiu_sp" type="radio" id="radiozhuangxiu_sp3" /><span
                                                style="padding: 0 5px">毛坯</span>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange"></td>
                            <td>房屋配套：
                            </td>
                            <td>
                                <input name="checkboxPeiTao_sp1" type="checkbox" id="checkboxPeiTao_sp1" value="客梯" /><span style="padding: 0 5px">客梯</span><input name="checkboxPeiTao_sp2" type="checkbox" id="checkboxPeiTao_sp2" value="货梯" /><span style="padding: 0 5px">货梯</span><input name="checkboxPeiTao_sp3" type="checkbox" id="checkboxPeiTao_sp3" value="停车位" /><span style="padding: 0 5px">停车位</span><input name="checkboxPeiTao_sp4" type="checkbox" id="checkboxPeiTao_sp4" value="暖气" /><span style="padding: 0 5px">暖气</span><input name="checkboxPeiTao_sp5" type="checkbox" id="checkboxPeiTao_sp5" value="空调" /><span style="padding: 0 5px">空调</span><input name="checkboxPeiTao_sp6" type="checkbox" id="checkboxPeiTao_sp6" value="网络" /><span style="padding: 0 5px">网络</span>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange"></td>
                            <td>有 效 期：
                            </td>
                            <td class="select_box">
                                <div style="z-index: 1; position: relative">
                                    <div class="select_position" id="youxiaoqi_sp">
                                        <a class="select_menu" onclick="youxiaoqi_sp_a()"><span id="youxiaoqi_sp_d">有效期</span></a>
                                        <div class="elect_con4_90" id="Div11" style="display: none;">
                                            <ul>
                                                <li>30</li>
                                                <li>20</li>
                                                <li>10</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <span style="padding: 0 8px; line-height: 30px;">天</span> <span id="youxiaoqiContent_sp"
                                        class="RedWZ"></span>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <!--自己直接发布详情-->
            <div class="rightcon mt10" style="position: relative; z-index: 0">
                <script src="../Script/swfobject.js" type="text/javascript"></script> <script src="../Script/jquery.uploadify.v2.1.0.js" type="text/javascript"></script> <script src="../Script/bulkupimg.js" type="text/javascript"></script>
                <div class="righttitle01 font14">
                    房源详情
                </div>
                <div class="rightbox1">
                    <table cellpadding="0" cellspacing="0" border="0" class="tab01" width="100%">
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td width="90">房源标题：
                            </td>
                            <td>
                                <div style="position: relative; z-index: 0">
                                    <input name="house.title" type="text" id="input_TITLE" class="input05 gray9" size="60" maxlength="60" onblur="if(this.value==&#39;&#39;) this.value=&#39;吸引人的标题可以更快的促进交易哦！&#39;;" onfocus="if(this.value==&#39;吸引人的标题可以更快的促进交易哦！&#39;) this.value=&#39;&#39;;" />
                                    <span id="sp_title" style="color: Red"></span>
                                       <br />
                                    <span style="display:none" id="tilefilter">标题禁止含有分/分钟词语，请修改</span>
                                </div>
                            </td>
                        </tr>
                        <tr id="DESCRIPTION_rent">
                            <td width="10" class="orange" valign="top">*
                            </td>
                            <td valign="top" id="td_DESCRIPTION">房源描述：
                            </td>
                            <td>
                                <textarea name="house.description" id="input_DESCRIPTION" class="textsize gray9">可输入房间描述、小区环境、周边配套、对合租者的要求等信息</textarea>
                            </td>
                        </tr>
                        <tr id="DESCRIPTION_rent_c">
                            <td width="10"><br /></td>
                            <td><br /></td>
                            <td>
                                <span id="sp_desc" style="color: Red"></span><br/>
                                <span>如果输入内容出现新广告法中禁止的违规词，系统将自动隐藏。</span>
                            </td>
                        </tr>
                        <tr id="PeiTaoSheShi">
                            <td width="10" class="orange"><br /></td>
                            <td valign="top">配套设施：
                            </td>
                            <td class="peitao">
                                <p>
                                    <span id="sbzz">
                                        <label class="mr10">

                                            <input name="house.facility" type="checkbox" id="ck_room_bed" value="床" />床</label><label
                                                class="mr10"><input name="house.facility" type="checkbox" id="ck_room_online" value="宽带" />宽带</label><label
                                                    class="mr10"><input name="house.facility" type="checkbox" id="ck_room_onlinetv" value="电视" />电视</label><label
                                                        class="mr10"><input name="house.facility" type="checkbox" id="ck_room_ice" value="冰箱" />冰箱</label><label
                                                            class="mr10"><input name="house.facility" type="checkbox" id="ck_room_wash" value="洗衣机" />洗衣机</label><label
                                                                class="mr10"><input name="house.facility" type="checkbox" id="ck_room_air" value="空调" />空调</label><label
                                                                    class="mr10"><input name="house.facility" type="checkbox" id="ck_room_water" value="热水器" />热水器</label><label
                                                                        class="mr10"><input name="house.facility" type="checkbox" id="ck_room_heating" value="暖气" />暖气</label>&nbsp;</span>
                            </td>
                        </tr>
                        <tr id="housefeather">
                            <td width="10" class="orange"><br /></td>
                            <td valign="top">房源特色：
                            </td>
                            <td class="peitao">
                                <span id="cblistFeathers"><input id="cblistFeathers_0" type="checkbox" name="house.special" value="南北通透" /><label for="cblistFeathers_0">南北通透</label><input id="cblistFeathers_1" type="checkbox" name="house.special" value="精装修" /><label for="cblistFeathers_1">精装修</label><input id="cblistFeathers_2" type="checkbox" name="house.special" value="婚房" /><label for="cblistFeathers_2">婚房</label><input id="cblistFeathers_3" type="checkbox" name="house.special" value="电梯房" /><label for="cblistFeathers_3">电梯房</label><input id="cblistFeathers_4" type="checkbox" name="house.special" value="可注册" /><label for="cblistFeathers_4">可注册</label><input id="cblistFeathers_5" type="checkbox" name="house.special" value="采光好" /><label for="cblistFeathers_5">采光好</label><br /><input id="cblistFeathers_6" type="checkbox" name="house.special" value="家电齐全" /><label for="cblistFeathers_6">家电齐全</label><input id="cblistFeathers_7" type="checkbox" name="house.special" value="学校周边" /><label for="cblistFeathers_7">学校周边</label><input id="cblistFeathers_8" type="checkbox" name="house.special" value="独栋" /><label for="cblistFeathers_8">独栋</label><input id="cblistFeathers_9" type="checkbox" name="house.special" value="带花园" /><label for="cblistFeathers_9">带花园</label><input id="cblistFeathers_10" type="checkbox" name="house.special" value="景观房" /><label for="cblistFeathers_10">景观房</label><input id="cblistFeathers_11" type="checkbox" name="house.special" value="随时看房" /><label for="cblistFeathers_11">随时看房</label><br /><input id="cblistFeathers_12" type="checkbox" name="house.special" value="严格安保" /><label for="cblistFeathers_12">严格安保</label><input id="cblistFeathers_13" type="checkbox" name="house.special" value="优质物管" /><label for="cblistFeathers_13">优质物管</label><input id="cblistFeathers_14" type="checkbox" name="house.special" value="随时入住" /><label for="cblistFeathers_14">随时入住</label><input id="cblistFeathers_15" type="checkbox" name="house.special" value="拎包入住" /><label for="cblistFeathers_15">拎包入住</label><input id="cblistFeathers_16" type="checkbox" name="house.special" value="商住两用" /><label for="cblistFeathers_16">商住两用</label><input id="cblistFeathers_17" type="checkbox" name="house.special" value="周边配套齐全" /><label for="cblistFeathers_17">周边配套齐全</label><br /><input id="cblistFeathers_18" type="checkbox" name="house.special" value="交通便利" /><label for="cblistFeathers_18">交通便利</label><input id="cblistFeathers_19" type="checkbox" name="house.special" value="低租金" /><label for="cblistFeathers_19">低租金</label><input id="cblistFeathers_20" type="checkbox" name="house.special" value="新房首租" /><label for="cblistFeathers_20">新房首租</label><input id="cblistFeathers_21" type="checkbox" name="house.special" value="押一付一" /><label for="cblistFeathers_21">押一付一</label><input id="cblistFeathers_22" type="checkbox" name="house.special" value="朝南带阳台" /><label for="cblistFeathers_22">朝南带阳台</label><br /></span>
                            </td>
                        </tr>
                        <tr id="Image_Rent">
                            <td width="10" class="orange"><br /></td>
                            <td valign="top">上传照片：
                            </td>
                            <td>
                               <input type="file" name="houseImg"/>
                            </td>
                        </tr>
                    </table>
                </div>
               
                <div class="btudiv white">
                    <span id="btn_Save">
                        <input type="submit" id="Button1" class="btnBlue01 mr25 font14" style="padding: 0px 25px 0 25px; diplay: block; color: #fff" value="确认发布">
                    </span>
                </div>
           </form>    
        

    <popup element="divup_box" fade="false" modal="true"></popup>
	
    <script type="text/javascript">
        function ShowExample_Pic() {
            document.getElementById("shili_Pic").style.display = "block";
        };
        function DisplayExample_Pic() {

            document.getElementById("shili_Pic").style.display = "none";
        }      
        function isNumber(oNum) {
            if (!oNum) return false;
            var strP = /^\d+(\.\d+)?$/;
            if (!strP.test(oNum)) return false;
            try {
                if (parseFloat(oNum) != oNum) return false;
            }
            catch (ex) {
                return false;
            }
            return true;
        }

        function JumpHouse(rec, next) {
            var recent = document.getElementById(rec);
            if (isNumber(recent.value)) {
                document.getElementById(next).focus();
            } else {
                recent.focus();
                return false;
            }
        }

        
    </script>

    <!--bottom begin-->
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
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
</head>
<!--20091020搜房网统一版尾-->
<body style="padding:0;margin:0;"> 
<div style="width:960px;height:210px;background:#fff;font-size:12px;font-family:'宋体';clear:both;margin:0 auto;border-top:1px solid #ccc;" class="DivCss20091020WZiColor333">
	<div style="line-height:20px;text-align:center;margin-top:5px;">
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
	<!--弹出城市 begin-->
	<div style="position:relative;width:1px;height:1px;">
		<div onMouseOut="hidden_moreBoxto(1020)" onMouseOver="show_moreBoxto(1020);" id="moreBox1020" style="display:none;position:absolute;top:-15px;right:10px!important;left:450px;width:480px;height:153px;background:#f0f0f0;border:1px solid #999;padding:10px 10px 0 10px;line-height:21px;font-size:12px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="DivCss20091020WZiColor333">
			  <tr>
				<td width="3%"><strong style="color:#f00;">B</strong></td>
				<td width="18%"><a href="http://zu.fang.com/" target="_blank">北京租房</a></td>
				<td width="3%"><strong style="color:#f00;">D</strong></td>
				<td width="18%"><a href="http://zu.dg.fang.com/" target="_blank">东莞租房</a></td>
				<td width="3%">&nbsp;</td>
				<td width="17%"><a href="http://zu.hn.fang.com/" target="_blank">海南租房</a></td>
				<td width="3%">&nbsp;</td>
				<td width="19%"><a href="http://zu.nn.fang.com/" target="_blank">南宁租房</a></td>
				<td width="3%">&nbsp;</td>
				<td width="13%"><a href="http://zu.sy.fang.com/" target="_blank">沈阳租房</a></td>
			  </tr>
			  <tr>
				<td><strong style="color:#f00;">C</strong></td>
				<td><a href="http://zu.cd.fang.com/" target="_blank">成都租房</a></td>
				<td>&nbsp;</td>
				<td><a href="http://zu.dl.fang.com/" target="_blank">大连租房</a></td>
				<td>&nbsp;</td>
				<td><a href="http://zu.hf.fang.com/" target="_blank">合肥租房</a></td>
				<td><strong style="color:#f00;">Q</strong></td>
				<td><a href="http://zu.qd.fang.com/" target="_blank">青岛租房</a></td>
				<td><strong style="color:#f00;">T</strong></td>
				<td><a href="http://zu.tj.fang.com/" target="_blank">天津租房</a></td>
			  </tr>
			  <tr>
				<td>&nbsp;</td>
				<td><a href="http://zu.cq.fang.com/" target="_blank">重庆租房</a></td>
				<td><strong style="color:#f00;">F</strong></td>
				<td><a href="http://zu.fz.fang.com/" target="_blank">福州租房</a></td>
				<td><strong style="color:#f00;">J</strong></td>
				<td><a href="http://zu.jn.fang.com/" target="_blank">济南租房</a></td>
				<td><strong style="color:#f00;">S</strong></td>
				<td><a href="http://zu.sh.fang.com/" target="_blank">上海租房</a></td>
				<td><strong style="color:#f00;">W</strong></td>
				<td><a href="http://zu.wuhan.fang.com/" target="_blank">武汉租房</a></td>
			  </tr>
			  <tr>
				<td>&nbsp;</td>
				<td><a href="http://zu.cs.fang.com/" target="_blank">长沙租房</a></td>
				<td><strong style="color:#f00;">G</strong></td>
				<td><a href="http://zu.gz.fang.com/" target="_blank">广州租房</a></td>
				<td><strong style="color:#f00;">N</strong></td>
				<td><a href="http://zu.nanjing.fang.com/" target="_blank">南京租房</a></td>
				<td>&nbsp;</td>
				<td><a href="http://zu.sz.fang.com/" target="_blank">深圳租房</a></td>
				<td>&nbsp;</td>
				<td><a href="http://zu.wuxi.fang.com/" target="_blank">无锡租房</a></td>
			  </tr>
			  <tr>
				<td>&nbsp;</td>
				<td><a href="http://zu.changchun.fang.com/" target="_blank">长春租房</a></td>
				<td>&nbsp;</td>
				<td><a href="http://zu.gy.fang.com/" target="_blank">贵阳租房</a></td>
				<td>&nbsp;</td>
				<td><a href="http://zu.nc.fang.com/" target="_blank">南昌租房</a></td>
				<td>&nbsp;</td>
				<td><a href="http://zu.suzhou.fang.com/" target="_blank">苏州租房</a></td>
				<td><strong style="color:#f00;">X</strong></td>
				<td><a href="http://zu.xian.fang.com/" target="_blank">西安租房</a></td>
			  </tr>
			  <tr>
				<td>&nbsp;</td>
				<td><a href="http://zu.cz.fang.com/" target="_blank">常州租房</a></td>
				<td><strong style="color:#f00;">H</strong></td>
				<td><a href="http://zu.hz.fang.com/" target="_blank">杭州租房</a></td>
				<td>&nbsp;</td>
				<td><a href="http://zu.nb.fang.com/" target="_blank">宁波租房</a></td>
				<td>&nbsp;</td>
				<td><a href="http://zu.sjz.fang.com/" target="_blank">石家庄租房</a></td>
				<td><strong style="color:#f00;">Z</strong></td>
				<td><a href="http://zu.zz.fang.com/" target="_blank">郑州租房</a></td>
			  </tr>
			</table>
			<div style="text-align:right;" class="DivCss20091020WZiColorf00"><a href="http://zu.fang.com/cities.aspx" target="_blank">进入房天下租房&gt;&gt;</a></div>
		</div>
	</div>
	<!--弹出城市 end-->
	<div style="font-family:Verdana;line-height:20px;text-align:center;">copyright &copy; 2016 SouFun.com Limited, All Rights Reserved</div>
	<div style="line-height:23px;text-align:center;"> ********科技发展有限公司 版权所有</div>
	<div style="line-height:20px;text-align:center;"><a href="http://www.fang.com/icp.htm" target="_blank">京<span style="font-family:Verdana;">ICP</span>证<span style="font-family:Verdana;">060732</span>号</a> <a href="http://www.fang.com/shiting.htm" target="_blank">信息网络传播视听节目许可证<span style="font-family:Verdana;">0108274</span>号</a> <a href="http://www.fang.com/jiemu.htm" target="_blank">广播电视节目制作经营许可证（京）字第<span style="font-family:Verdana;">647</span>号</a></div>
	<div style="line-height:20px;text-align:center;">文明办网文明上网 举报电话：<span style="font-family:Verdana;">400-850-8888</span> 举报邮箱：<a href="mailto:jubao@fang.com" style="font-family:Verdana;">jubao@fang.com</a></div>
	<div style="margin-top:5px;text-align:center;"><a href="http://www.hd315.gov.cn/beian/view.asp?bianhao=0102000110800002" target="_blank"><img src="../Images/beian.gif" style="border:0;" /></a> <a href="http://www.bj.cyberpolice.cn/index.htm" target="_blank"><img src="../Images/baojing.gif" style="border:0;" /></a></div>
</div>
      <script src="../Script/support.dialogbox.js" type="text/javascript"></script>

</body>
</html>

    <!--bottom end-->
      <script type="text/javascript" src="../Script/kindeditor.js" charset="utf-8"></script>  <script type="text/javascript" src="../Script/zh_CN.js"  charset="utf-8"></script>


    <script src="../Script/ProjnameCheck.js" type="text/javascript"></script>

    <script src="../Script/frm_info_input_New1.js"
        type="text/javascript"></script>

    <script src="../Script/AnonymousInputCheck.js" type="text/javascript"></script>


    <script src="../Script/rent_input.aspx1_New.js"
        type="text/javascript"></script>

  
    <script src="../Script/SuggestionNew_SP.js" type="text/javascript"></script>


    <script type="text/javascript">initLoginWindowDetailA();</script>

    <div id="sel_housetype">
    </div>

    <script type="text/javascript">    
        function ChangePublic(item) {
            if (item.checked) {
                switch (item.value) {
                    case "住宅":
                        PublicHide();
                        jQuery("#100GeRen").show();
                        jQuery("#sel_housetype_New").val("住宅");
                        jQuery("#sel_housetype").html("住宅");
                        jQuery("#ra400YesS").show();
                        jQuery("#btn_Save_w_s").show();
                        jQuery("#Publishdiv1").show();
                        jQuery("#PeiTaoSheShi").show();
                        jQuery("#spanUpload").show();
                      
                        break;
                    case "别墅":
                        PublicHide();
                        jQuery("#ra400YesS").show();
                        jQuery("#sel_housetype_New").val("别墅");
                        jQuery("#sel_housetype").html("别墅");
                        jQuery("#btn_Save_w_s").show();
                        jQuery("#Publishdiv1").show();
                        jQuery("#PeiTaoSheShi").show();
                        jQuery("#spanUpload").show();
                        break;
                    case "写字楼":
                        PublicHide();
                       
                        jQuery("#100GeRen").hide();
                        jQuery("#ra400YesS").hide();
                        jQuery("#sel_housetype_New").val("写字楼")
                        jQuery("#sel_housetype").html("写字楼")
                        jQuery("#Publishdiv3").show();
                        jQuery("#btn_Save_w_s").hide();
                        jQuery("#PeiTaoSheShi").hide();
                        jQuery("#span_xz").show();
                        break;
                    case "商铺":
                        PublicHide();
                        jQuery("#ra400YesS").hide();
                        jQuery("#100GeRen").hide();
                        jQuery("#sel_housetype").html("商铺");
                        jQuery("#sel_housetype_New").val("商铺")
                        jQuery("#btn_Save_w_s").hide();
                        jQuery("#Publishdiv4").show();
                        jQuery("#PeiTaoSheShi").hide();
                        jQuery("#spanUpload1").show(); 
                        jQuery("#housefeather").hide();
                        break;
                }

            }
        }
        function PublicHide() {
            jQuery("#Publishdiv1").hide();
            jQuery("#Publishdiv2").hide();
            jQuery("#Publishdiv3").hide();
            jQuery("#Publishdiv4").hide();
            jQuery("#spanUpload").hide();
            jQuery("#span_xz").hide();
            jQuery("#spanUpload1").hide();
        }
      
    </script>

    <script type="text/javascript" language="javascript">
        function insertcomplaint() {


            var mobile = jQuery("#input_MOBILECODE").val();

            var htmlobj = jQuery.ajax({ url: "/rent/usercentermysoufun/userajax.aspx?action=delegateMobileRebuke&tel=&mobile=" + mobile, async: false });
            if (htmlobj.responseText == "1") {
                alert("申诉成功");
            } else {
                if (htmlobj.responseText == "0") {
                    alert("已申诉，请勿重复申诉");
                } else {
                    alert("申诉失败请重试");
                }

            }
        }

    </script>

</body>
</html>

<script type="text/javascript" language="javascript">
    function DisPicDiv() {
        jQuery("#plpicupload").hide();
        jQuery("#singlepic").show();
    }  
    var dvbsend=document.getElementById("dvbtnsend");
    if(dvbsend!=null)
    {
        dvbsend.onmouseover=setActive;
        dvbsend.onmouseout=delActive;
    }
    setActive();
</script>


