<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/comm/tablibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-帐务修改输入</title>

</head>
<body>
	<script language="javascript">
		function showIndex() {

			document.action = "${pageContext.request.contextPath}/user/userAction!toIndex";

			document.getElementByName('toIndex').submit();

		}
	</script>
	<center>

		<table width='100%' height='10%' border='0' cellspacing='0'
			cellpadding='0'>
			<tr>
				<td width='40' background='../images/index_26.jpg'>&nbsp;</td>
				<!--内容区导航开始-->
				<td align='left' valign='middle'
					background='../images/ctitle_bak_center.jpg'>
					<table border='0' cellspacing='0' cellpadding='0'>
						<tr>

							<td height='31' background='../images/ctitle_bak_fcenter.jpg'>
								<a href='../main.htm' class=channel_title>首页</a> <img
								src="../images/sy_2_18.jpg" border="0"> <a
									href='../user/acctupdate.htm' class=channel_title>帐务修改输入</a>
							</td>
						</tr>
					</table></td>
				<!--内容区导航结束-->
				<td align='left' valign='middle'
					background='../images/ctitle_bak_center.jpg'>&nbsp;</td>
				<td width='13' align='right' valign='middle'
					background='../images/ctitle_bak_center.jpg'><img
					src="../images/ctitle_bak_right.jpg" height="31" width="10">
				</td>
			</tr>
		</table>

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr width="100%" height="300px">
				<!-- 显示查询UI -->
				<td align="center" valign="top"><s:form
						action="userAction!doUpdate" namespace="/user">
						<table border="0" cellspacing='0' cellpadding='0' width="50%"
							height="80%">
							<tr>
								<td>&nbsp;</td>
								<td align="left" valign="top"><input type="hidden"
									name="user.userId" value="${updateUser.userId }" />
								</td>
							</tr>
							<tr>
								<td align="right" valign="top">用户姓名：</td>
								<td align="left" valign="top">${updateUser.realName }</td>
							</tr>
							<tr>
								<td align="right" valign="top">登录名：</td>
								<td align="left" valign="top">${updateUser.accountName}</td>
							</tr>
							<tr>
								<td align="right" valign="top">支付方式：</td>
								<td align="left" valign="top">${updateUser.paymentType}</td>
							</tr>
							<tr>
								<td align="right" valign="top">电话：</td>
								<td align="left" valign="top">${updateUser.userPhone}</td>
							</tr>
							<tr>
								<td align="right" valign="top">电子邮件：</td>
								<td align="left" valign="top">${updateUser.userEmail}</td>
							</tr>
							<tr>
								<td align="right" valign="top">性别：</td>
								<td align="left" valign="top"><s:if
										test="updateUser.gender==1">男</s:if> <s:else>女</s:else>
								</td>
							</tr>
							<tr>
								<td align="right" valign="top">民族：</td>
								<td align="left" valign="top">${updateUser.nationnality}</td>
							</tr>
							<tr>
								<td align="right" valign="top">职业：</td>
								<td align="left" valign="top">${updateUser.career}</td>
							</tr>
							<tr>
								<td align="right" valign="top">就职公司：</td>
								<td align="left" valign="top">${updateUser.company}</td>
							</tr>
							<tr>
								<td align="right" valign="top">邮政编码：</td>
								<td align="left" valign="top">${updateUser.zipCode }</td>
							</tr>
							<tr>
								<td align="center" colspan="2"><a
									href="${pageContext.request.contextPath}/user/userAction!toUpdateSelefInfo?user.userId=${loginedUser.userId}">更新</a>&nbsp;&nbsp;&nbsp;&nbsp;<input
									name="toindex" type="reset" value="重置" />
								</td>
							</tr>
						</table>
					</s:form></td>
			</tr>
		</table>
	</center>

</body>
</html>