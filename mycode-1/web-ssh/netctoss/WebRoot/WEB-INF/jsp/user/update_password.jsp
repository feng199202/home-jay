<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath}/css/main1.css"
	rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-管理员增加</title>
<script language="javascript">
	function checkPassword() {
		var oldpwd = document.getElementById("oldpassword").value;
		var oldpwdInput = document.getElementById("inputOld").value;
		var pass1 = document.getElementById("password1").value;
		var pass2 = document.getElementById("password2").value;
		if (oldpwd != oldpwdInput) {
			alert("输入的旧密码不正确");
			return;
		}
		if (pass1 != pass2) {
			alert("两次输入的密码不一致");
			return;
		}
		document.updatePwd.submit();
	}
</script>
</head>
<body>
	<center>
		<!--logo头开始-->
		<table width='100%' height='10%' border='0' cellspacing='0'
			cellpadding='0'>
			<tr>

				<!--内容区导航结束-->
				<td align='left' valign='middle'
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'>&nbsp;</td>
				<td width='13' align='right' valign='middle'
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'><img
					src="${pageContext.request.contextPath}/images/ctitle_bak_right.jpg"
					height="31" width="10">
				</td>
			</tr>
		</table>

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr width="100%" height="300px">
				<!-- 显示查询UI -->
				<td align="center" valign="top"><s:form name="updatePwd"
						namespace="/user" action="userAction!doUpdatePassword">
						<table border="0" cellspacing='0' cellpadding='0' width="80%"
							height="100%">
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp; <input type="hidden" name="user.userId"
									value="<s:property value="#session.loginedUser.userId"/>" /></td>
								<td><input type="hidden" id="oldpassword"
									value="<s:property value="#session.loginedUser.password"/>" />
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right">当前密码：</td>
								<td align="left"><s:password id="inputOld"></s:password>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right">新密码：</td>
								<td align="left"><s:password name="user.password"
										id="password1"></s:password>
								</td>
							</tr>

							<tr>
								<td align="right">确认新密码：</td>
								<td align="left"><input type="password" id="password2" />
								</td>
							</tr>
							<tr>
								<td></td>
								<td><input type="button" onclick="checkPassword();"
									value="确认更新密码" /> <input type="reset" value="重置" />
								</td>
							</tr>
						</table>
					</s:form></td>
			</tr>
		</table>


	</center>

</body>
</html>