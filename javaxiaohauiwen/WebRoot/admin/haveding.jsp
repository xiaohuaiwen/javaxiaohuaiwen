<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path%>/css/base.css" />
	</head>

	<body leftmargin="2" topmargin="2"
		background='<%=path%>/images/allbg.gif'>

		<table width="98%" border="0" cellpadding="2" cellspacing="1"
			bgcolor="#D1DDAA" align="center" style="margin-top:8px">
			<tr bgcolor="#E7E7E7">
				<td height="14" colspan="10" background="<%=path%>/images/tbg.gif">
					&nbsp;房屋信息&nbsp;
				</td>
			</tr>
			<tr align="center" bgcolor="#FAFAF1" height="22">
				<td width="20%">
					地址
				</td>
				
				<td width="15%">
					价格
				</td>
				<td width="20%">
					面积
				</td>
				<td width="20%">
					房东
				</td>
				<td width="20%">
					预订日期
				</td>
				
					<td width="15%">
						操作
					</td>
				

			</tr>
			<c:forEach var="data" items="${dingList}">
				<tr align='center' bgcolor="#FFFFFF"
					onMouseMove="javascript:this.bgColor='red';"
					onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${data.houseInfo.area}
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						${data.houseInfo.price}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${data.houseInfo.sqm}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${data.userInfo.realName}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${data.lastdate}
					</td>
					<td bgcolor="#FFFFFF" align="center">

						
							<a href="<%=path%>/ding!del.action?ding.id=${data.id }&hid=${data.houseInfo.id}"
								class="pn-loperator">解预定</a>
					</td>
					

				</tr>
			</c:forEach>
		</table>

	</body>
</html>
