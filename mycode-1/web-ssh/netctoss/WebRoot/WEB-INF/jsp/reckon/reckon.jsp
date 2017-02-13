<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-帐单查询</title>
<script language=javascript src="http://www.codefans.net/ajaxjs/jquery-1.4.2.min.js"></script>
<SCRIPT LANGUAGE="JavaScript">

$(document).ready(function(){
//demo1:
   //-隔行,滑动,点击 变色
 $('.cssraindemo1 tbody tr:even').addClass('odd');
 $('.cssraindemo1 tbody tr').hover(
  function() {$(this).addClass('highlight');},
  function() {$(this).removeClass('highlight');}
 );
 $('.cssraindemo1 tbody tr').click(
  function() {$(this).toggleClass('selected');}
 );

});
 
//-->
</SCRIPT>
<style type="text/css">
h1   { font:bold 20px/26px Arial;}
table  { border:0;border-collapse:collapse;}
td { font:normal  Arial;padding:2px;width:100px;}
th   { font:bold  Arial;text-align:left;padding:4px;border-bottom:1px solid #333;}
tr.odd  { background:#F7B9ED;}
tr.highlight { background:#6F4DFF;}
tr.selected  { background:#ffffff;color:#F88;}
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
			action="${pageContext.request.contextPath}/admin/manageReckonAction!queryMonthDetails">
			<table width='100%' border='0' cellspacing='0' cellpadding='0'>
				<tr width="100%" height="10%">
					<!-- 显示查询UI -->
					<td align="left" height='31'
						background='../images/ctitle_bak_fcenter.jpg'>

						查询条件：&nbsp;&nbsp; 用户名:<s:textfield type="text"
							name="user.accountName" style="WIDTH:80px" /> 年:<select
						name="detail.year" style="WIDTH: 80px">
							<option value="0" selected>无</option>
							<option value="2012">2012年</option>
							<option value="2013">2013年</option>
							<option value="2014">2014年</option>
					</select> 月:<select name="detail.month" style="WIDTH: 80px">
							<option value="0" selected>无</option>
							<option value="1">1月</option>
							<option value="2">2月</option>
							<option value="3">3月</option>
							<option value="4">4月</option>
							<option value="5">5月</option>
							<option value="6">6月</option>
							<option value="7">7月</option>
							<option value="8">8月</option>
							<option value="9">9月</option>
							<option value="10">10月</option>
							<option value="11">11月</option>
							<option value="12">12月</option>
					</select> <input type="submit" value=" 查询" />
					</td>
				</tr>
				<tr width="100%" height="300px">
					<td width="100%" valign="top">
						<!-- 显示浏览列表 -->
						<div style="overflow:auto;">
						<table cellspacing='0' cellpadding='0' width="100%"  border="0">	
			<tr bgcolor="#03F" style="color:white" >
			<td>用户名</td>
									<td>帐务帐号</td>
									<td>费用（元）</td>
									<td>年</td>
									<td>月</td>
									<td>查看明细</td>
								</tr></table>
							<table cellspacing='0' cellpadding='0' width="100%" border="0" class="cssraindemo1">
								
									
								<%
									String userName = "";
									String loginName = "";
									int year = 0;
									int month = 0;
									double totalFee = 0.0;

									List<Object[]> details = (List<Object[]>) request
											.getAttribute("userMonthDetails");
									if (details != null && details.size() > 0) {

										for (int i = 0; i < details.size(); i++) {

											Object[] objects = details.get(i);
								%><tr>
									<%
										for (int j = 0; j < objects.length; j++) {
													if (j == 0)
														userName = (String) objects[j];
													if (j == 1)
														loginName = (String) objects[j];
													if (j == 2)
														totalFee = (Double) objects[j];
													if (j == 3)
														year = (Integer) objects[j];
													if (j == 4)
														month = (Integer) objects[j];
									%>

									<td><%=objects[j]%></td>
									<%
										}
									%>
									<td><a
										href="${pageContext.request.contextPath}/admin/manageReckonAction!queryDayDetails?detail.userName=<%=userName%>&detail.loginName=<%=loginName%>&detail.year=<%=year%>&detail.month=<%=month%>&totalFee=<%=totalFee%>">查看明细</a>
									</td>
								</tr>
								<%
									}
									}
								%>
							</table>
						</div>
					</td>
				</tr>
				<tr width="100%" height="20px">
					<!-- 显示分页导航 -->
					<td>${page.pageInfo }</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>