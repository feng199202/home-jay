<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-帐单明细查询</title>
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
		<!--logo头开始-->



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
					background='../images/ctitle_bak_fcenter.jpg'>帐务帐号:<intput
						name="userName" value="${requestScope.userName }"
						readonly="readonly" /> 总费用:<input type="text" name="totalFee"
					value="${requestScope.totalFee }" readonly="readonly" /></td>
			</tr>
			<tr width="100%" height="300px">
				<td width="100%" valign="top">
					<!-- 显示浏览列表 -->
					<div style="overflow:auto;">
					<table cellspacing='0' cellpadding='0' width="100%"  border="0">	
			<tr bgcolor="#03F" style="color:white" >
			<td>业务帐号</td>
								<td>实验室IP</td>
								<td>登录时间</td>
								<td>时长(分钟)</td>
								<td>资费</td>
								<td>费用</td>
							</tr></table>
						<table cellspacing='0' cellpadding='0' width="100%" border="0" class="cssraindemo1">
							
								

							<s:iterator value="userDaylyDetails">
								<tr align="center">
									<td><s:property value="userName" /></td>
									<td><s:property value="labIp" /></td>
									<td>
										<s:date name="loginDate" format="yyyy-MM-dd HH:mm:ss" />
									</td>
									<td><s:property value="duration" /></td>
									<td>资费一</td>
									<td><s:property value="fee" /></td>
								</tr>
							</s:iterator>


						</table>
					</div></td>
			</tr>
			<tr width="100%" height="20px">
				<!-- 显示分页导航 -->
				<td></td>
			</tr>
		</table>

	</center>
	<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->


	<!--页面尾巴开始-->


	<!--页面尾巴结束-->
</BODY>
</html>