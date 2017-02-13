<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  <link href="../css/main1.css" rel="stylesheet" type="text/css" />
	<title>电信运营计费管理系统-管理员修改输入</title>
	
</head>
<body>
<center>
<!--logo头开始-->
	



<table width='100%' height='10%' border='0' cellspacing='0' cellpadding='0'>
	<tr>
		<td width='40' background="../images/index_26.jpg">&nbsp;</td>
		<!--内容区导航开始-->
		<td align='left' valign='middle' background='../images/ctitle_bak_center.jpg'>
		<table border='0' cellspacing='0' cellpadding='0'>
			<tr>
				
				<td height='31' background='../images/ctitle_bak_fcenter.jpg'>
				<a href='../main.htm'  class=channel_title>首页</a>
				<img src="../images/sy_2_18.jpg" border="0"> 
				<a href='../admin/adminupdate.htm'  class=channel_title>信息修改</a>
				</td>
			</tr>
		</table>
		</td>
		<!--内容区导航结束-->
		<td align='left' valign='middle' background='../images/ctitle_bak_center.jpg'>&nbsp;</td>
		<td width='13' align='right' valign='middle' background='../images/ctitle_bak_center.jpg'>
		<img src="../images/ctitle_bak_right.jpg" height="31" width="10">
		</td>
	</tr>
</table>

<table width='100%' border='0' cellspacing='0' cellpadding='0'>
	<tr width="100%" height="300px">
		<!-- 显示查询UI -->
		<td align="center" valign="top">		 
		
		<form name="adminform" method="post" action="../admin/adminupdate.htm">
			<table border="0"  cellspacing='0' cellpadding='0' width="80%" height="100%">
			
			<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>
			<tr>
				<td align="right">帐号名：</td>
				<td align="left"><input type="text" name="loginname" value="admin" style="WIDTH:170px"></td>
			</tr>
			<tr>
				<td align="right">口令：</td>
				<td align="left"><input type="text" name="loginpassword" value="admin" style="WIDTH:170px"></td>
			</tr>
			<tr>
				<td align="right">确认口令：</td>
				<td align="left"><input type="text" name="passwordsec" value="admin" style="WIDTH:170px"></td>
			</tr>
			<tr>
				<td align="right">电子邮件：</td>
				<td align="left"><input type="text" name="email" value="jiaqiang@tarena.com.cn" style="WIDTH:170px"></td>
			</tr>
			<tr>
				<td align="right">电话：</td>
				<td align="left"><input type="text" name="phone" value="15801664915" style="WIDTH:170px"></td>
			</tr>
			
			<tr>
				<td  align="center" colspan="2"><input type="submit" value="修改">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="取消"> </td>
			</tr>
			</table>
		</form>			
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
</BODY>
</html>