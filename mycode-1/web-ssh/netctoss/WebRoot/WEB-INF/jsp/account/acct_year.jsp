<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-帐务管理-年查询</title>

<script language=javascript src="${pageContext.request.contextPath}/js/my.js"></script>
<SCRIPT LANGUAGE="javascript">
	$(document).ready(function() {
		
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
				
				<td align='left' valign='middle'
					background='../images/ctitle_bak_center.jpg'>&nbsp;</td>
				<td width='13' align='right' valign='middle'
					background='../images/ctitle_bak_center.jpg'><img
					src="../images/ctitle_bak_right.jpg" height="31" width="10" /></td>
			</tr>
		</table>

		<form name="pageForm" method="post"
			action="manageAccountAction!queryAccountYearly">
			<table width='100%' border='0' cellspacing='0' cellpadding='0'>
				<tr width="100%" height="10%">
					<!-- 显示查询UI -->
					<td align="left" height='31'
						background='../images/ctitle_bak_fcenter.jpg'>

						查询条件：&nbsp;&nbsp; 年份:<select name="detail.year"
						style="WIDTH: 80px"><option value="0" selected>无</option>
							<option value="2011">2011年</option>
							<option value="2012">2012年</option>
							<option value="2013">2013年</option>
							<option value="2014">2014年</option>
					</select> <input type="submit" value=" 查询" /></td>
				</tr>
				<tr width="100%" height="300px">
					<td width="100%" valign="top">
						<!-- 显示浏览列表 -->

					<table cellspacing='0' cellpadding='0' width="100%"  border="0">	
			<tr bgcolor="#03F" style="color:white" >
			<td>实验室ip</td>
									<td>年</td>
									<td>总计（单位：小时）</td>
									<td>查看明细</td>

								</tr></table>
						<div
							style="display:block;overflow-x:hidden;overflow-y:auto;height:300px;">
							<table cellspacing='0' cellpadding='0' width="100%" border="0" class="cssraindemo1">
																	
								<%
									List<Object[]> detailsYearly = (List<Object[]>) request
											.getAttribute("accountsYearly");
									if (detailsYearly != null && detailsYearly.size() > 0) {
										String labIp = "";
										int year = 0;
										for (int i = 0; i < detailsYearly.size(); i++) {
											Object[] objects = detailsYearly.get(i);
								%>
								<tr>
									<%
										for (int j = 0; j < objects.length; j++) {
													if (j == 0)
														labIp = (String) objects[j];
													if (j == 1)
														year = (Integer) objects[j];
									%>

									<td><%=objects[j]%></td>

									<%
										}
									%>
									<td><a href="${pageContext.request.contextPath}/admin/manageAccountAction!listAccountYearlyMonth?detail.year=<%=year%>&detail.labIp=<%=labIp%>">详细清单</a>
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
				<tr>

					<td>${page.pageInfo }</td>
				</tr>
			</table>

		</form>


	</center>
	<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->


	<!--页面尾巴开始-->



	<!--页面尾巴结束-->
</BODY>
</html>