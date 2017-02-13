<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath}/css/main1.css"
	rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-管理员查询浏览</title>

<script language=javascript
	src="${pageContext.request.contextPath}/js/my.js"></script>

<SCRIPT LANGUAGE="JavaScript">
	$(document).ready(function() {
		//demo1:
		//-隔行,滑动,点击 变色
		$('.cssraindemo1 tbody tr:even').addClass('odd');
		$('.cssraindemo1 tbody tr').hover(function() {
			$(this).addClass('highlight');
		}, function() {
			$(this).removeClass('highlight');
		});
		$('.cssraindemo1 tbody tr').click(function() {
			$(this).toggleClass('selected');
		});

	});
</SCRIPT>
<style type="text/css">
h1 {
	font: bold 20px/26px Arial;
}

table {
	border: 0;
	border-collapse: collapse;
}

td {
	font: normal Arial;
	padding: 2px;
	width: 100px;
}

th {
	font: bold Arial;
	text-align: left;
	padding: 4px;
	border-bottom: 1px solid #333;
}

tr.odd {
	background: #F7B9ED;
}

tr.highlight {
	background: #6F4DFF;
}

tr.selected {
	background: #ffffff;
	color: #F88;
}
</style>
</head>

<body>
	<script language="javascript"
		src="${pageContext.request.contextPath}/js/calendar.js"></script>
	<center>
		<table width='100%' height='10%' border='0' cellspacing='0'
			cellpadding='0'>
			<tr>

				<!--内容区导航结束-->
				<td align='left' valign='middle'
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'>&nbsp;</td>
				<td width='13' align='right' valign='middle'
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'><img
					src="${pageContext.request.contextPath}/images/ctitle_bak_right.jpg"
					height="31" width="10" /></td>
			</tr>
		</table>
		<s:form name="pageForm" method="post" namespace="/admin"
			action="manageAdminAction!qureryAdmins">
			<table width='100%' border='0' cellspacing='0' cellpadding='0'>
				<tr width="100%" height="10%">
					<!-- 显示查询UI -->
					<td align="left" height='31'
						background='${pageContext.request.contextPath}/images/ctitle_bak_fcenter.jpg'>

						查询条件：&nbsp;&nbsp; 姓名:<s:textfield type="text"
							name="admin.realName" style="WIDTH:60px" /> 登录名:<s:textfield
							type="text" name="admin.accountName" maxlength="20"
							style="WIDTH: 80px" /> 授权日期:<s:textfield type="text"
							style="width:70px" onfocus="HS_setDate(this)"
							name="beginDateString" />--<s:textfield type="text"
							style="width:70px" onfocus="HS_setDate(this)"
							name="endDateString" /><input type="submit" value=" 查询" /></td>
				</tr>
				<tr width="100%">
					<td width="100%" valign="top">
						<!-- 显示浏览列表 -->
						<table cellspacing='0' cellpadding='0' width="100%" border="0">
							<tr bgcolor="#03F" style="color:white">
								<td>管理员ID</td>
								<td>姓名</td>
								<td>登录名</td>
								<td>电话</td>
								<td>电子邮件</td>
								<td>授权日期</td>
								<td>属于的角色</td>

							</tr>
						</table>
						<table cellspacing='0' cellpadding='0' width="100%" border='0'
							class="cssraindemo1">

							<s:iterator value="admins" var="existAdmin">
								<s:if test="role.roleId !=1">
									<tr>
										<td><s:property value="adminId" /></td>
										<td><s:property value="realName" /></td>
										<td><s:property value="accountName" /></td>
										<td><s:property value="adminPhone" /></td>
										<td><s:property value="adminEmail" /></td>
										<td><s:date name="enrollDate" format="yyyy-MM-dd" />
										</td>
										<td><s:property value="role.roleName" />
										</td>

									</tr>
								</s:if>
							</s:iterator>
						</table>
						<tr>
							<td colspan="6">${ page.pageInfo}</td>
						</tr>
					</td>
				</tr>

			</table>
		</s:form>

	</center>

</body>
</html>