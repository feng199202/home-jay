<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-帐务查询</title>
<script language=javascript
	src="${pageContext.request.contextPath}/js/my.js"></script>
<SCRIPT LANGUAGE="javascript">
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
//-->
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
	<center>
		<table width='100%' height='10%' border='0' cellspacing='0'
			cellpadding='0'>
			<tr>

				<!--内容区导航结束-->
				<td align='left' valign='middle'
					background='../images/ctitle_bak_center.jpg'>&nbsp;</td>
				<td width='13' align='right' valign='middle'
					background='../images/ctitle_bak_center.jpg'><img
					src="../images/ctitle_bak_right.jpg" height="31" width="10" /></td>
			</tr>
		</table>
		<form name="pageForm" method="post"
			action="${pageContext.request.contextPath}/manageUser/manageUserAction!qureryUsers0">
			<table width='100%' border='0' cellspacing='0' cellpadding='0'>
				<tr width="100%" height="10%">
					<!-- 显示查询UI -->
					<td align="left" height='31'
						background='../images/ctitle_bak_fcenter.jpg'>

						查询条件：&nbsp;&nbsp; 用户姓名:<input type="text" name="user1.realName"
						value="<s:property value="user1.realName"/>"  style="WIDTH:80px" /> 登录名:<input type="text"
						name="user1.accountName" maxlength="20" value="<s:property value="user1.accountName"/>"
						style="WIDTH: 80px" /> 状态:<select name="user1.accountStatus"
						style="WIDTH: 80px"><option value="3" selected="selected">全部</option>
							<option value="1">开通</option>
							<option value="2">暂停</option>
					</select> <input type="submit" value=" 查询" /></td>
				</tr>
				<tr width="100%" height="300px">
					<td width="100%" valign="top">
						<!-- 显示浏览列表 -->
						<div style="overflow:auto;">
							<table cellspacing='0' cellpadding='0' width="100%" border="0">
								<tr bgcolor="#03F" style="color:white">
									<td>用户名</td>
									<td>登录名</td>
									<td>状态</td>
									<td>支付方式</td>
									<td>电话</td>
									<td>电子邮件</td>
									<td>性别</td>
								</tr>
							</table>
							<table cellspacing='0' cellpadding='0' width="100%" border="0"
								class="cssraindemo1">
								<s:if test="users!=null&&users.size()>0">
									<s:iterator value="users" status="statu">
										<tr>
											<td><s:property value="realName" />
											</td>
											<td><s:property value="accountName" />
											</td>
											<td><s:if test="accountStatus==1">开通</s:if> <s:if
													test="accountStatus==2">暂停</s:if> <s:if
													test="accountStatus==0">无</s:if></td>
											<td><s:property value="paymentType" /></td>
											<td><s:property value="userPhone" />
											</td>
											<td><s:property value="userEmail" />
											</td>
											<td><s:if test="gender==0">女</s:if> <s:if
													test="gender==1">男</s:if></td>
										</tr>
									</s:iterator>
								</s:if>
							</table>
						</div></td>
				</tr>
				<tr width="100%" height="20px">
					<td colspan="7">${page.pageInfo}</td>
				</tr>
			</table>

			<s:else>
			没有数据！
			</s:else>
		</form>
	</center>

</body>
</html>