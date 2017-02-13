<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>top</title>
<script src="../js/tool.js"></script>
<link href="${pageContext.request.contextPath}/css/frame.css"
	rel="stylesheet" type="text/css">
<script language="JavaScript">
	function toTop(url) {
		if (window != top)
			top.location.href = url;
	}

	function toMain(url) {
		if (window != top)
			parent.mainFrame.location.href = url;
	}
</script>
</head>
<body>
	<table width="100%" height="64" border="0" align="center"
		cellpadding="0" cellspacing="0"
		background="${pageContext.request.contextPath}/images/bg01.gif">
		<tbody>
			<tr>
				<td
					style="font-family: 黑体; font-size: 25px; font-weight: bold; color: #FFFFFF; width: 350px;">
					电信运营计费管理平台</td>
			</tr>
		</tbody>
	</table>
	<table width="100%" height="27" border="0" align="center"
		cellpadding="0" cellspacing="0">
		<tbody>
			<tr>
				<td background="${pageContext.request.contextPath}/images/bg02.gif">欢迎您:
					<font color="#F10E0E">${sessionScope.loginedAdmin.accountName
						}</font>
				</td>
				<td width="43" align="left"
					background="${pageContext.request.contextPath}/images/bg03.gif"><img
					src="${pageContext.request.contextPath}/images/top01.gif"
					width="41" height="27">
				</td>
				<td width="220"
					background="${pageContext.request.contextPath}/images/bg03.gif"><font
					color="#FFFFFF"> <a
						href="${pageContext.request.contextPath}/admin/manageAdminAction!toUpdatePWD"
						target=mainFrame>密码修改</a> <A
						href="${pageContext.request.contextPath}/admin/manageAdminAction!showSelfInfo"
						target=mainFrame>个人信息修改</A> |<a href="./help.htm" target=mainFrame>帮助
					</a>|<a
						href="${pageContext.request.contextPath}/admin/adminLogoutAction" target="_top" onclick="return window.confirm('确认要退出系统吗?')">退出</a>
				</font>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
