<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/comm/tablibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-用户帐单明细</title>

</head>
<body>
	<center>
		<s:form name="pageForm" action="userAction!listDetails"
			namespace="/user">
			<table width='100%' height='10%' border='0' cellspacing='0'
				cellpadding='0'>
				<tr>
					
					<!--内容区导航结束-->
					<td align='left' valign='middle'
						background='../images/ctitle_bak_center.jpg'>&nbsp;</td>
					<td width='13' align='right' valign='middle'
						background='../images/ctitle_bak_center.jpg'><img
						src="../images/ctitle_bak_right.jpg" height="31" width="10" />
					</td>
				</tr>
			</table>
			<table width='100%' border='0' cellspacing='0' cellpadding='0'>
				<tr width="100%" height="10%">
					<!-- 显示查询UI -->
					<td align="left" height='31'
						background='../images/ctitle_bak_fcenter.jpg'>年月： <input
						name="detail.year" value="${detail.year}" readonly="readonly"
						size="4" />年<input name="detail.month" readonly="readonly"
						value="${detail.month}" size="2" />月&nbsp;&nbsp;&nbsp;&nbsp;账务帐号：<input
						name="detail.loginName" value="${detail.loginName}"
						readonly="readonly" size="8" /> &nbsp;&nbsp;&nbsp;&nbsp;实验室IP：<input
						name="detail.labIp" value="${detail.labIp}" readonly="readonly"
						size="10" /></td>
				</tr>
				<tr width="100%" height="300px">
					<td width="100%" valign="top">
						<!-- 显示浏览列表 -->
						<div style="overflow:auto;">
							<table cellspacing='0' cellpadding='0' width="100%" border="0"
								bordercolor="#0080FF">
								<tr class="tabhead">
									<th>日</th>
									<th>登入时间</th>
									<th>登出时间</th>
									<th>时长（分）</th>
								</tr>
								<s:iterator value="monthDetails" status="statu">
									<tr>
										<th><s:property value="day" />
										</th>
										<th><s:date name="loginDate" format="yyyy-MM-dd HH:mm:ss" />
										</th>
										<th><s:date name="logoutDate"
												format="yyyy-MM-dd HH:mm:ss" />
										</th>
										<th><s:property value="duration" />
										</th>
									</tr>
								</s:iterator>

							</table>
						</div>
					</td>
				</tr>
				<tr width="100%" height="20px">
					<!-- 显示分页导航 -->
					<td>${page.pageInfo }</td>
				</tr>
			</table>
		</s:form>
	</center>
</body>
</html>