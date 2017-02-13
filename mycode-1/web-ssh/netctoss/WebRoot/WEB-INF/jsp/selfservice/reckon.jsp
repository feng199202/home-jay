<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath}/css/main1.css"
	rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-用户帐单查询浏览</title>

</head>
<body>
	<center>
		<table width='100%' height='10%' border='0' cellspacing='0'
			cellpadding='0'>
			<tr>
				

				<td align='left' valign='middle'
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'>&nbsp;</td>
				<td width='13' align='right' valign='middle'
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'><img
					src="${pageContext.request.contextPath}/images/ctitle_bak_right.jpg"
					height="31" width="10" /></td>
			</tr>
		</table>
		<s:form action="userAction!doSearch" namespace="/user" name="pageForm">
			<table width='100%' border='0' cellspacing='0' cellpadding='0'>
				<tr width="100%" height="10%">
					<!-- 显示查询UI -->
					<td align="left" height='31'
						background='${pageContext.request.contextPath}/images/ctitle_bak_fcenter.jpg'>
						<!-- 查询的年份一本年前三年内的可以查询 --> 查询条件：用户帐务帐号：<s:textfield
							name="detail.loginName" style="width:80px" />&nbsp;要查询的年月份： <s:select
							list="#{0:'所有',2011:'2011',2012:'2012',2013:'2013'}"
							name="detail.year" /> &nbsp; <s:select
							list="#{0:'所有',1:'一月',2:'二月',3:'三月',4:'四月',5:'五月',6:'六月',7:'七月',8:'八月',9:'九月',10:'十月',11:'十一月',12:'十二月'}"
							name="detail.month" /> <input type="submit" value=" 查询" /></td>
				</tr>
				<tr width="100%" height="300px">
					<td width="100%" valign="top">
						<!-- 显示浏览列表 -->
						<div style="overflow:auto;">
							<table cellspacing='0' cellpadding='0' width="100%" border="0">
								<tr class="tabhead">
									<th>年</th>
									<th>月</th>
									<th>业务登录名</th>
									<th>服务器IP</th>
									<th>费用</th>
									<th>明细</th>
								</tr>
								<tr>
									<%
										List<Object[]> detailMonths = (List<Object[]>) request
													.getAttribute("detailMonths");
									%>

									<%
										for (int i = 0; i < detailMonths.size(); i++) {
												int month = 0;
												int year = 0;
												String loginName = null;
												String labIp = null;
									%>

									<tr>

										<%
											Object[] object = detailMonths.get(i);
													for (int j = 0; j < object.length; j++) {
														if (j == 0)
															year = (Integer) object[j];
														if (j == 1)
															month = (Integer) object[j];
														if (j == 2)
															loginName = (String) object[j];
														if (j == 3)
															labIp = (String) object[j];

														out.print("<th>" + object[j] + "</th>");

													}
										%>
										<th><A
											href="${pageContext.request.contextPath}/user/userAction!listDetails?detail.month=<%=month%>&detail.year=<%= year%>&detail.loginName=<%=loginName%>&detail.labIp=<%=labIp%>"
											target="" />明细</A></th>
									</tr>
									<%
										}
									%>
								</tr>
							</table>
						</div></td>
				</tr>
				<tr width="100%" height="20px">
				
					<td>${page.pageInfo }</td>
				</tr>
			</table>
		</s:form>
	</center>
</body>
</html>