<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-业务删除</title>
<script language=javascript
	src="${pageContext.request.contextPath}/js/my.js"></script>
</script>
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
	<center>


		<table width='100%' height='10%' border='0' cellspacing='0'
			cellpadding='0'>
			<tr>

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
			<tr width="100%" height="10%">
				<!-- 显示查询UI -->
				<td align="left" height='31'
					background='../images/ctitle_bak_fcenter.jpg'><s:form
						name="addForm" action="manageUserAction!bussForDel1"
						namespace="/manageUser">
					查询条件： 用户名称:
						<input type="text" name="userserviceBean.accountName" value="<s:property value="userserviceBean.accountName" />" "WIDTH:60px"/> 
						业务帐号:
						<input type="text" name="userserviceBean.serviceId" value="<s:property value="userserviceBean.serviceId"/>" "WIDTH:60px"/> 
						实验室IP:
						<input type="text" name="userserviceBean.labIp" value="<s:property value="userserviceBean.labIp"/>" "WIDTH:60px"/> 
						 状态:
						 <select name="userserviceBean.serviceStatus"
							style="WIDTH: 60px"><option value="3" selected>全部</option>
							<option value="1">开通</option>
							<option value="2">暂停</option>
						</select> <input type="submit" value=" 查询">
				</td>
			</tr>
			<tr width="100%" height="300px">
				<td width="100%" valign="top">
					<!-- 显示浏览列表 -->
					<div style="overflow:auto;">
						<table cellspacing='0' cellpadding='0' width="100%" border="0">
							<tr bgcolor="#03F" style="color:white">
								<td>业务ID</td>
								<td>用户名</td>
								<td>业务登录名</td>
								<td>状态</td>
								<td>实验室IP</td>
								<td>资费名称</td>
							</tr>
						</table>
						<table cellspacing='0' cellpadding='0' width="100%" border="0"
							class="cssraindemo1">
							<s:if test="userServices!=null&&userServices.size()>0">


								<s:iterator value="userServices" status="statu">

									<tr>
										<td><s:property value="serviceId" />
										</td>
										<td><s:property value="user.accountName" />
										</td>
										<td><s:property value="loginName" />
										</td>
										<td><s:if test="serviceStatus==1">开通</s:if> <s:if
												test="serviceStatus==2">暂停</s:if> <s:if
												test="serviceStatus==0">无</s:if></td>
										<td><s:property value="labIp" />
										</td>
										<td><s:property value="pricing.pricingName" />
										</td>
										<td><a onclick="return window.confirm('确认要删除吗?')"
											href="${pageContext.request.contextPath}/manageUser/manageUserAction!bussDoDel?userService.serviceId=<s:property value="serviceId" />"><img src="${pageContext.request.contextPath}/images/cross.png"/></a>
										</td>

									</tr>
								</s:iterator>
						</table>
					</div></td>
			</tr>
			<tr width="100%" height="20px">
				<td colspan="7">${page.pageInfo}</td>
			</tr>
		</table>
		</s:if>
		<s:else>
			没有数据！
			</s:else>
		</s:form>
	</center>
	<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->
</body>
</html>