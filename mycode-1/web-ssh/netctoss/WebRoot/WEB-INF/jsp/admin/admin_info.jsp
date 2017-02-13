<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath}/css/main1.css"
	rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-管理员个人信息修改</title>

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
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'>
					<img
					src="${pageContext.request.contextPath}/images/ctitle_bak_right.jpg"
					height="31" width="10">
				</td>
			</tr>
		</table>

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr width="100%" height="300px">
				<!-- 显示查询UI -->
				<td align="center" valign="top"><s:form name="infoForm"
						namespace="/admin" action="manageAdminAction!updateSelfInfo">
						<table border="0" cellspacing='0' cellpadding='0' width="80%"
							height="100%">
							<tr>
								<td>&nbsp;
									<input type="hidden" name="admin.adminId" value="<s:property value="session.loginedAdmin.adminId"/>"/>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>

							</tr>
							<tr>
								
								<td align="right">管理员姓名：</td>
								<td align="left"><input type="text" name="admin.realName"
									value="<s:property value="#session.loginedAdmin.realName"/>"
									style="WIDTH:170px" /></td>
							</tr>
							<tr>
								<td align="right">帐号名：</td>
								<td align="left"><input type="text"
									name="admin.accountName"
									value="<s:property value="#session.loginedAdmin.accountName"/>"
									style="WIDTH:170px" /></td>
							</tr>

							<tr>
								<td align="right">电子邮件：</td>
								<td align="left"><input type="text" name="admin.adminEmail"
									value="<s:property value="#session.loginedAdmin.adminEmail"/>"
									style="WIDTH:170px" /></td>
							</tr>
							<tr>
								<td align="right">电话：</td>
								<td align="left"><input type="text" name="admin.adminPhone"
									value="<s:property value="#session.loginedAdmin.adminPhone"/>"
									style="WIDTH:170px" />
								</td>
							</tr>
							<tr>
								<td align="center" colspan="2"><input type="submit"
									value="修改">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
										value="取消">
								</td>
							</tr>
						</table>
					</s:form> <!-- </form> -->
				</td>
			</tr>


		</table>

		</td>
		<!--内容区结束-->
		</tr>
		</table>
	</center>
	<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->


	<!--页面尾巴开始-->

	<!--页面尾巴结束-->
</body>
</html>