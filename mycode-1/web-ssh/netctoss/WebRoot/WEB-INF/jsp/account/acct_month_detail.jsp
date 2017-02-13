<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-帐务管理-月查询</title>

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
		<!--logo头开始-->



		<table width='100%' height='10%' border='0' cellspacing='0'
			cellpadding='0'>
			<tr>
				
				<td align='left' valign='middle'
					background='../images/ctitle_bak_center.jpg'>&nbsp;</td>
				<td width='13' align='right' valign='middle'
					background='../images/ctitle_bak_center.jpg'><img
					src="../images/ctitle_bak_right.jpg" height="31" width="10" />
				</td>
			</tr>
		</table>
		<form action="manageAccountAction!queryDaylyAccount" name="pageForm">
			<table width='100%' border='0' cellspacing='0' cellpadding='0'>
				<tr width="100%" height="10%">
					<!-- 显示查询UI -->
					<td align="left" height='31'
						background='../images/ctitle_bak_fcenter.jpg'>实验室IP: <input
						type="text" name="detail.labIp"
						value="${requestScope.detail.labIp }" readonly="readonly"
						style="WIDTH:80px" /> 年: <input type="text" name="detail.year"
						maxlength="20" value="${requestScope.detail.year }"
						readonly="readonly" style="WIDTH: 80px" /> 月: <input type="text"
						value="${requestScope.detail.month }" maxlength="20"
						name="detail.month" readonly="readonly" style="WIDTH: 80px" />
					</td>
				</tr>
				<tr width="100%" height="300px">
					<td width="100%" valign="top">
						<!-- 显示浏览列表 -->
						<div
							style="display:block;overflow-x:hidden;overflow-y:auto;height:300px;">
							<table cellspacing='0' cellpadding='0' width="100%"  border="0">	
			<tr bgcolor="#03F" style="color:white" >
				<td>日</td>
									<td>时长</td>
								</tr></table>
							<table cellspacing='0' cellpadding='0' width="100%" border="0" class="cssraindemo1">
							
								

								<s:iterator value="details">
									<tr>
										<td><s:property value="day" />
										</td>
										<td><s:property value="duration" />
										</td>
									</tr>
								</s:iterator>
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
</body>
</html>