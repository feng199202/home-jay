<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/comm/tablibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  <link href="../css/main1.css" rel="stylesheet" type="text/css" />
	<title>电信运营计费管理系统-资费查询</title>

<script language=javascript
	src="${pageContext.request.contextPath}/js/my.js"></script>

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

<table width='100%' height='10%' border='0' cellspacing='0' cellpadding='0'>
	<tr>
		
		<!--内容区导航开始-->
		
		
		<!--内容区导航结束-->
		<td align='left' valign='middle' background='../images/ctitle_bak_center.jpg'>&nbsp;</td>
		<td width='13' align='right' valign='middle' background='../images/ctitle_bak_center.jpg'>
		<img src="../images/ctitle_bak_right.jpg" height="31" width="10">
		</td>
	</tr>
</table>

<table width='100%' border='0' cellspacing='0' cellpadding='0'>
	<tr width="100%" height="10%">
		<!-- 显示查询UI -->
		<td align="left" height='31' background='../images/ctitle_bak_fcenter.jpg'>		 
		<s:form name="pageForm" id="pageForm" action="magePricingAction!feeBrowse0" namespace="/pricing">
			查询条件：&nbsp;&nbsp;
			资费名称:<input type="text" name="pricingBean.pricingBeanName" value="<s:property value="pricingBean.pricingBeanName"/>" style="WIDTH:60px">			
			基费范围:<input type="text" name="pricingBean.baseFeeMin" maxlength="20"value="<s:property value="pricingBean.baseFeeMin"/>" style="WIDTH: 30px">
			-<input type="text" name="pricingBean.baseFeeMax"value="<s:property value="pricingBean.baseFeeMax"/>" style="WIDTH:30px">
			月租费范围:<input type="text" name="pricingBean.rateFeeMin" maxlength="20"value="<s:property value="pricingBean.rateFeeMin"/>" style="WIDTH: 30px">
			-<input type="text" name="pricingBean.rateFeeMax" value="<s:property value="pricingBean.rateFeeMax"/>" style="WIDTH:30px">			
			<input type="submit" value="查询">
	
		</td>
	</tr>
	<tr width="100%" height="300px">
		<td width="100%" valign="top">
			<!-- 显示浏览列表 -->
			<div style="overflow:auto;">
			<table cellspacing='0' cellpadding='0' width="100%"  border="0">	
			<tr bgcolor="#03F" style="color:white" >   
					<td>资费名称</td><td>基费</td><td>月租费用</td><td>资费说明</td>
				</tr></table>
			<table cellspacing='0' cellpadding='0' width="100%"  border="0" class="cssraindemo1">
				
								
					<s:if test="pricings!=null&&pricings.size()>0">
			
				
					<s:iterator value="pricings"  status="statu">
 							
							<tr >
								<td><s:property value="pricingName" /></td>
								<td><s:property value="baseFee" /></td>
								<td><s:property value="rateFee" /></td>
								<td><s:property value="description" /></td>
								
							
						
					</tr>
					</s:iterator>
				
			</table>
			</div>
		</td>
	</tr>
	<tr width="100%" height="20px">
			<td colspan="7">
			${page.pageInfo}
			</td></tr>
			</table>
			</s:if>
			<s:else>
			没有数据！
			</s:else>	</s:form>
	</center>
<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->

</BODY>
</html>