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
					类型
				</td>
				<td width="15%">
					价格
				</td>
				<td width="15%">
					面积
				</td>
				<td width="20%">
					房东
				</td>
				
					<td width="25%">
						操作
					</td>
				

			</tr>
			<c:forEach var="data" items="${houseList}">
				<tr align='center' bgcolor="#FFFFFF"
					onMouseMove="javascript:this.bgColor='red';"
					onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${data.area}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${data.type}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${data.price}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${data.sqm}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${data.userInfo.realName}
					</td>
				
					<td bgcolor="#FFFFFF" align="center">

						
							<a href="<%=path%>/house!admindetail.action?house.id=${data.id }"
								class="pn-loperator">详情</a>
								<a href="<%=path%>/house!del.action?house.id=${data.id }"
								class="pn-loperator">删除</a>
								<a href="<%=path%>/house!modify.action?house.id=${data.id }"
								class="pn-loperator">修改</a>
					</td>
					

				</tr>
			</c:forEach>
		</table>

	</body>
</html>
