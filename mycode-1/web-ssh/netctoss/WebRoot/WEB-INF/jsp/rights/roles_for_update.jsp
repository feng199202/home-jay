<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/comm/tablibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-角色查询</title>
<script language=javascript src="${pageContext.request.contextPath}/js/my.js"></script>
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
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'>&nbsp;</td>
				<td width='13' align='right' valign='middle'
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'>
					<img
					src="${pageContext.request.contextPath}/images/ctitle_bak_right.jpg"
					height="31" width="10" /></td>
			</tr>
		</table>

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr width="100%" height="10%">
				<!-- 显示查询UI -->
				<td align="left" height='31'
					background='${pageContext.request.contextPath}/images/ctitle_bak_fcenter.jpg'>
					<s:form name="pageForm" method="post"
						action="manageRoleRightAction!queryRoles" namespace="/admin">
						查询条件：&nbsp;&nbsp; 角色名称:<s:textfield type="text"
							name="role.roleName" style="WIDTH:100px" />
						<input type="submit" value=" 查询" />
					</s:form></td>
			</tr>
			<tr width="100%" height="300px">
				<td width="100%" valign="top">
					<!-- 显示浏览列表 -->
					<div style="overflow:auto;">
						<table cellspacing='0' cellpadding='0' width="100%" border="0">
							<tr bgcolor="#03F" style="color:white">
								<td>序号</td>
								<td>角色ID</td>
								<td>角色名称</td>
								<td>角色拥有的权限[权限名 | 权限URL| 模块名 ]</td>&nbsp;&nbsp;<td>

								<td>修改</td>

							</tr>
						</table>
						<table cellspacing='0' cellpadding='0' width="100%" border="0"
							class="cssraindemo1">

							<s:iterator value="roles" status="status">
								<tr>
									<td><s:property value="#status.count" /></td>
									<td><s:property value="roleId" /></td>
									<td>
										<!-- 超级管理员 --> <s:property value="roleName" /></td>
									<td><select style="width:300px;">
											<s:iterator value="rights">
												<option value="rightId">
													<!-- 资费删除 | deleteFee | 资费管理 -->
													<s:property value="rightName" />
													|
													<s:property value="url" />
													|
													<s:property value="systemModule.systemModuleName" />
												</option>
											</s:iterator>
									</select></td>
									<td><a
										href="${pageContext.request.contextPath}/admin/manageRoleRightAction!toupdateRole?role.roleId=<s:property value="roleId"/>"><img src="../images/pencil.png" alt="Edit"/></a>
									</td>
								</tr>
							</s:iterator>

						</table>
					</div></td>
			</tr>
			<tr width="100%" height="20px">
				<!-- 显示分页导航 -->
				<td>${page.pageInfo}</td>
			</tr>
		</table>


	</center>

</body>
</html>