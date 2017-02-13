<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />  <link href="../css/main1.css" rel="stylesheet" type="text/css" />
	<title>电信运营计费管理系统-角色删除</title>	
<script language=javascript src="${pageContext.request.contextPath}/js/my.js"></script>
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
<table width='100%' height='10%' border='0' cellspacing='0' cellpadding='0'>
	<tr>
		
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
		<form name="rolecond" method="post" action="rolebrfordel.htm">
			查询条件：&nbsp;&nbsp;
			角色名称:<input type="text" name="rolename" value="" style="WIDTH:100px">
			<input type="submit" value=" 查询">
		</form>	
		</td>
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
			<table cellspacing='0' cellpadding='0' width="100%"  border="0" class="cssraindemo1">
					
								
					<tr>
						<td>
							1
						</td>
						<td>
							超级管理员
						</td>
						<td>
							<select  style="width:300px;">
							
								<option value="">
									资费删除 | deleteFee | 资费管理  | 资费删除
								</option>								
							
								<option value="">
									帐务帐号查询 | browseAcc | 用户管理  | 帐务帐号查询
								</option>								
							
								<option value="">
									权限删除 | deleteRight | 权限管理  | 权限删除
								</option>								
							
								<option value="">
									权限修改 | updateRight | 权限管理  | 权限修改
								</option>								
							
								<option value="">
									资费浏览 | browseFee | 资费管理  | 资费浏览
								</option>								
							
								<option value="">
									角色删除 | deleteRole | 权限管理  | 角色删除
								</option>								
							
								<option value="">
									超级管理员修改 | updateSuper | 管理员管理  | 超级管理员修改
								</option>								
							
								<option value="">
									权限增加 | addnewRight | 权限管理  | 权限增加
								</option>								
							
								<option value="">
									管理员删除 | deleteAdmin | 管理员管理  | 管理员删除
								</option>								
							
								<option value="">
									角色增加 | addnewRole | 权限管理  | 角色增加
								</option>								
							
								<option value="">
									业务帐号修改 | updateBuss | 用户管理  | 业务帐号修改
								</option>								
							
								<option value="">
									管理员浏览 | browseAdmin | 管理员管理  | 管理员浏览
								</option>								
							
								<option value="">
									管理员修改 | updateAdmin | 管理员管理  | 管理员修改
								</option>								
							
								<option value="">
									帐务月查询 | accountMQuery | 帐务管理  | 帐务月查询
								</option>								
							
								<option value="">
									资费修改 | updateFee | 资费管理  | 资费修改
								</option>								
							
								<option value="">
									用户帐单查询 | browseFeeByMonth | 用户自服务  | 用户自服务查询
								</option>								
							
								<option value="">
									管理员增加 | addnewAdmin | 管理员管理  | 管理员增加
								</option>								
							
								<option value="">
									业务帐号删除 | deleteBuss | 用户管理  | 业务帐号删除
								</option>								
							
								<option value="">
									帐务帐号修改 | updateAcc | 用户管理  | 帐务帐号修改
								</option>								
							
								<option value="">
									帐务帐号删除 | deleteAcc | 用户管理  | 帐务帐号删除
								</option>								
							
								<option value="">
									业务帐号增加 | addnewBuss | 用户管理  | 业务帐号增加
								</option>								
							
								<option value="">
									角色浏览 | browseRole | 权限管理  | 角色浏览
								</option>								
							
								<option value="">
									帐务年查询 | accountYQuery | 帐务管理  | 帐务年查询
								</option>								
							
								<option value="">
									资费增加 | addnewFee | 资费管理  | 资费增加
								</option>								
							
								<option value="">
									帐单查询 | browse | 帐单管理  | 帐单查询
								</option>								
							
								<option value="">
									帐务帐号增加 | addnewAcc | 用户管理  | 帐务帐号增加
								</option>								
							
								<option value="">
									业务帐号查询 | browseBuss | 用户管理  | 业务帐号查询
								</option>								
							
								<option value="">
									角色修改 | updateRole | 权限管理  | 角色修改
								</option>								
							
								<option value="">
									权限浏览 | browseRight | 权限管理  | 权限浏览
								</option>								
							
							</select>						
						</td>
						<td>
							<a href="rolebrfordel.htm">删除</a>
						</td>
					</tr>
				
			</table>
			</div>
		</td>
	</tr>
	<tr width="100%"  height="20px">
		<!-- 显示分页导航 -->
		<td>第1页/共1页&nbsp;&nbsp;<a href='../rights/index.do?method=deleteRight&page=1'>|第一页</a>|<a href='../rights/index.do?method=deleteRight&page=1'>上一页</a>|<a href='../rights/index.do?method=deleteRight&page=1'>下一页</a>|<a href='../rights/index.do?method=deleteRight&page=1'>最后一页</a>|</td>
	</tr>
</table>

	
</center>
<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->


<!--页面尾巴开始-->
	


<!--页面尾巴结束-->
</body>
</html>