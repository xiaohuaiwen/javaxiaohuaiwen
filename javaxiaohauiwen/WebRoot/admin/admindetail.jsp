<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admindetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   	<center>
   		<table border="2px" width="800px" height="300" bordercolor="blue">
   			<tr bgcolor="yellow">
   			<th>编号</th>
   			<th>类型</th>
   			<th>小区</th>
   			<th>地址</th>
   			<th>商圈</th>
   			</tr>
   			<tr bgcolor="green">
   			<th>${houseList.id }</th>
   			<th>${houseList.type }</th>
   			<th>${houseList.homeName }</th>
   			<th>${houseList.area }</th>
   			<th>${houseList.circle }</th>
   			</tr>
   			<tr bgcolor="yellow">
   			<th>方式</th>
   			<th>卧室</th>
   			<th>客厅</th>
   			<th>卫生间</th>
   			<th>面积</th>
   			</tr >
   			<tr bgcolor="green">
   			<th>${houseList.rentType }</th>
   			<th>${houseList.room }</th>
   			<th>${houseList.lroom }</th>
   			<th>${houseList.broom }</th>
   			<th>${houseList.sqm }</th>
   			</tr>
   			<tr bgcolor="yellow">
   			<th>装修</th>
   			<th>方向</th>
   			<th>楼层</th>
   			<th>总楼层</th>
   			<th>价格</th>
   			</tr>
   			<tr bgcolor="green">
   			<th>${houseList.fixture }</th>
   			<th>${houseList.direction }</th>
   			<th>${houseList.floor }</th>
   			<th>${houseList.sfloor }</th>
   			<th>${houseList.price }</th>
   			</tr>
   			
   		</table>
   	</center>
  </body>
</html>
