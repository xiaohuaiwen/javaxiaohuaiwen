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
   
    <div class="wrap">
        <link type="text/css" href="../style/baidu/headfang.css"rel="stylesheet" media="all" />
<link type="text/css" href="../style/baidu/headfang20140616.css"rel="stylesheet" media="all" />



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



<script type="text/javascript">initLoginWindowDetail();</script>
    </div>
    <div class="clear">
    </div>
    <div class="content">
        
        <div class="searchfb" id="dvbtnsend">
            
           
            <div class="clear">
            </div>
        </div>
        <form method="post" action="<%=path %>/house!update.action?house.id=${houseList.id}" id="form2" enctype="multipart/form-data">
<br /> 
                <div class="righttitle01 font14">
                    
                </div>
                <div class="rightbox1">
                    <table cellpadding="0" cellspacing="0" border="0" class="tab01" width="100%">
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td width="120">发布类型：
                            </td>
                            <td>
                               <input name="house.type" type="text" id="input_ADDRESS" size="40" maxlength="50" class="input03"  value="${houseList.type }"/><span id="sp_address" class="RedWZ
"></span>
                                
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="righttitle01 font14">
                    
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
                                <input name="house.homeName" value="${houseList.homeName }" type="text" id="input_PROJNAME" autocomplete="off" size="30" maxlength="30" class="input01 veralM" /><span id="sp_projname" class="RedWZ"></span><br />
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
                                <input name="house.area" value="${houseList.area }" type="text" id="input_ADDRESS" size="10" maxlength="10" class="input03" /><span id="sp_address" class="RedWZ
"></span>
                                    <input name="house.circle" value="${houseList.circle }" type="text" id="input_ADDRESS" size="40" maxlength="50" class="input03" /><span id="sp_address" class="RedWZ
"></span>
                                    
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
                                <input name="house.locationName" value="${houseList.locationName }" type="text" id="input_ADDRESS" size="40" maxlength="50" class="input03" /><span id="sp_address" class="RedWZ
"></span>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>租赁方式：
                            </td>
                            <td>
                                <input name="house.rentType" value="${houseList.rentType }" type="text" id="input_ADDRESS" size="40" maxlength="50" class="input03" /><span id="sp_address" class="RedWZ
"></span>
                            </td>
                        </tr>
                        <tr id="ZhengzuInfo">
                            <td width="10" class="orange">*
                            </td>
                            <td>房屋状况：
                            </td>
                            <td>
                                <input name="house.room" value="${houseList.room }" type="text" id="sel_room" maxlength="1" class="input04 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t; JumpHouse(&#39;sel_room&#39;, &#39;sel_hall&#39;);" />
                                室
                                <input name="house.lroom" value="${houseList.lroom }" type="text" id="sel_hall" maxlength="1" class="input04 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;  JumpHouse(&#39;sel_hall&#39;, &#39;sel_wc&#39;);" />
                                厅
                                <input name="house.broom" value="${houseList.broom }" type="text" id="sel_wc" class="input04 veralM" maxlength="1" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t; " />
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
                                        <input name="house.sqm" value="${houseList.sqm }" type="text" id="input_Area" num="价格只能是数字" size="10" maxlength="4" class="input02 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;" />
                                        平方米(建筑面积)</span>
                                    
                                    <input name="house.fixture" value="${houseList.fixture }" type="text" id="input_ADDRESS" size="40" maxlength="50" class="input03" /><span id="sp_address" class="RedWZ
">装修</span>
                                   <input name="house.direction" value="${houseList.direction }" type="text" id="input_ADDRESS" size="40" maxlength="50" class="input03" /><span id="sp_address" class="RedWZ
">方向</span> <span id="sp_forward" class="RedWZ"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="10" class="orange">*
                            </td>
                            <td>楼<span class="pl27"></span>层：
                            </td>
                            <td>第 <span id="td_FLOOR">
                                <input name="house.floor" value="${houseList.floor }" type="text" id="input_FLOOR" maxlength="2" class="input04 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;" />
                            </span>层 共 <span id="td_TOTLEFLOOR">
                                <input name="house.sfloor" value="${houseList.sfloor }" type="text" id="input_TOTLEFLOOR" class="input04 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;" /></span>
                                层<span class="RedWZ" id="sp_floor"><span style="color: Gray"></span></span>
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
                                        <input name="house.price" value="${houseList.price }" type="text" id="input_PRICE" size="10" maxlength="6" num="价格只能是数字" class="input02 veralM" onkeyup="javascript:var t = &#39;&#39;; with(this.value) { for (var i = 0; i &lt; length; i++) t += (65296 &lt;= charCodeAt(i) &amp;&amp; charCodeAt(i) &lt;= 65305) ? String.fromCharCode(charCodeAt(i) - 65248) : charAt(i); } this.value = t;" />
                                        元/月 </span><span class="select_position floatl" id="zhifufangshidiv">
                                        <input name="house.moneyType" value="${houseList.moneyType }" type="text" id="input_ADDRESS" size="40" maxlength="50" class="input03" /><span id="sp_address" class="RedWZ
">付款方式</span>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                
            <!--自己直接发布详情-->
            <div class="rightcon mt10" style="position: relative; z-index: 0">
                <script src="../Script/swfobject.js" type="text/javascript"></script> <script src="../Script/jquery.uploadify.v2.1.0.js" type="text/javascript"></script> <script src="../Script/bulkupimg.js" type="text/javascript"></script>
                <div class="righttitle01 font14">
            
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
                                    <input name="house.title" value="${houseList.title }" type="text" id="input_TITLE" class="input05 gray9" size="60" maxlength="60" onblur="if(this.value==&#39;&#39;) this.value=&#39;吸引人的标题可以更快的促进交易哦！&#39;;" onfocus="if(this.value==&#39;吸引人的标题可以更快的促进交易哦！&#39;) this.value=&#39;&#39;;" />
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
                                <textarea name="house.description" id="input_DESCRIPTION" class="textsize gray9" value="${houseList.description }">${houseList.description }</textarea>
                            </td>
                        </tr>
                        
                        <tr id="PeiTaoSheShi">
                            <td width="10" class="orange"><br /></td>
                            <td valign="top">配套设施：
                            </td>
                            <td class="peitao">
                                <input name="house.facility" value="${houseList.facility }" type="text" id="input_ADDRESS" size="40" maxlength="50" class="input03" /><span id="sp_address" class="RedWZ
"></span>
                            </td>
                        </tr>
                        <tr id="housefeather">
                            <td width="10" class="orange"><br /></td>
                            <td valign="top">房源特色：
                            </td>
                            <td class="peitao">
<input name="house.special" value="${houseList.special }" type="text" id="input_ADDRESS" size="40" maxlength="50" class="input03" /><span id="sp_address" class="RedWZ
"></span>                            </td>
                        </tr>
                    </table>
                </div>

		<td><span class="pl27"></span>
            </td>
                 <td class="select_box">
                    <input name="house.userInfo.id" value="${houseList.userInfo.id }" type="hidden" id="input_ADDRESS" size="10" maxlength="10" class="input03" />
                    <span id="sp_address" class="RedWZ"></span>
			</td>
		<td><span class="pl27"></span>
            </td>
                 <td class="select_box">
                    <input name="house.userInfo.realName" value="${houseList.userInfo.realName }" type="hidden" id="input_ADDRESS" size="10" maxlength="10" class="input03" />
                    <span id="sp_address" class="RedWZ"></span>
			</td>
			<td><span class="pl27"></span>
            </td>
                 <td class="select_box">
                    <input name="house.floorFlag" value="${houseList.floorFlag }" type="hidden" id="input_ADDRESS" size="10" maxlength="10" class="input03" />
                    <span id="sp_address" class="RedWZ"></span>
			</td>
			<td><span class="pl27"></span>
            </td>
                 <td class="select_box">
                    <input name="house.priceFlag" value="${houseList.priceFlag }" type="hidden" id="input_ADDRESS" size="10" maxlength="10" class="input03" />
                    <span id="sp_address" class="RedWZ"></span>
			</td>
			<td><span class="pl27"></span>
            </td>
                 <td class="select_box">
                    <input name="house.img" value="${houseList.img }" type="hidden" id="input_ADDRESS" size="10" maxlength="10" class="input03" />
                    <span id="sp_address" class="RedWZ"></span>
			</td>
			<td><span class="pl27"></span>
            </td>
                 <td class="select_box">
                    <input name="house.curdate" value="${houseList.curdate }" type="hidden" id="input_ADDRESS" size="10" maxlength="10" class="input03" />
                    <span id="sp_address" class="RedWZ"></span>
			</td>
			<td><span class="pl27"></span>
            </td>
                 <td class="select_box">
                    <input name="house.status" value="${houseList.status }" type="hidden" id="input_ADDRESS" size="10" maxlength="10" class="input03" />
                    <span id="sp_address" class="RedWZ"></span>
			</td>
			
                <div class="btudiv white">
                    <span id="btn_Save">
                        <input type="submit" id="Button1" class="btnBlue01 mr25 font14" style="padding: 0px 25px 0 25px; diplay: block; color: #fff" value="确认修改">
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
		<a href="http://www.fang.com/aboutus/index.asp" target="_blank">关于我们</a> <span style="font-family: Verdana;">‖</span>
		<a href="http://www.fang.com/hezuo_file/house/index.html" target="_blank">网站合作</a> <span style="font-family: Verdana;">‖</span> 
		<a href="http://esf.fang.com/aboutus/contactus.html" target="_blank">联系我们</a> <span style="font-family: Verdana;">‖</span>
		<a href="http://www.fang.com/aboutus/marketing/index.html" target="_blank">网络营销</a> <span style="font-family: Verdana;">‖</span>
		<a href="http://www.fang.com/zhaopin" target="_blank">招聘信息</a> <span style="font-family: Verdana;">‖</span>
		<a href="javascript:;" onmouseout="hidden_moreBoxto(1020)" onmouseover="moreBoxto(1020)">各地租房</a> <span style="font-family: Verdana;">‖</span>
		<a href="http://www.fang.com/sitemap/sitemap.html" target="_blank">网站地图</a> <span style="font-family: Verdana;">‖</span>
		<a href="http://www.fang.com/service/feedback/LeaveMess.aspx" target="_blank">意见反馈</a> <span style="font-family: Verdana;">‖</span>
		<a href="http://wap.fang.com/xc/mobile.html" target="_blank">手机房天下</a>
         <span style="font-family: Verdana;">
                                    ‖</span> <a href="http://open.fang.com"  target="_blank">
                                        开放平台</a>
                    <span style="font-family: Verdana;">
                                    ‖</span>
                     <a href="http://www.fang.com/zt/201107/xbc.html"  target="_blank">
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
	<div style="line-height:23px;text-align:center;"> 襄阳搜房科技发展有限公司 版权所有</div>
	<div style="line-height:20px;text-align:center;"><a href="http://www.fang.com/icp.htm" target="_blank">京<span style="font-family:Verdana;">ICP</span>证<span style="font-family:Verdana;">060732</span>号</a> <a href="http://www.fang.com/shiting.htm" target="_blank">信息网络传播视听节目许可证<span style="font-family:Verdana;">0108274</span>号</a> <a href="http://www.fang.com/jiemu.htm" target="_blank">广播电视节目制作经营许可证（京）字第<span style="font-family:Verdana;">647</span>号</a></div>
	<div style="line-height:20px;text-align:center;">文明办网文明上网 举报电话：<span style="font-family:Verdana;">400-850-8888</span> 举报邮箱：<a href="mailto:jubao@fang.com" style="font-family:Verdana;">jubao@fang.com</a></div>
	<div style="margin-top:5px;text-align:center;">&nbsp;<a href="http://www.bj.cyberpolice.cn/index.htm" target="_blank"><br /></a></div>
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


