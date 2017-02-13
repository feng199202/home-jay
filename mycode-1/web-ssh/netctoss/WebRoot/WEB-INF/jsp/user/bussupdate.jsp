<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-业务修改输入</title>
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
					src="../images/ctitle_bak_right.jpg" height="31" width="10">
				</td>
			</tr>
		</table>

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr width="100%" height="300px">
				<!-- 显示查询UI -->
				<td align="center" valign="top">
					<form name="bussform" method="post" action="../user/bussupdate.htm">
						<table border="0" cellspacing='0' cellpadding='0' width="50%"
							height="80%">
							<tr>
								<td align="right" valign="top">业务ID：</td>
								<td align="left" valign="top"><input type="text"
									name="userService.serviceId" value="<s:property value="userService.serviceId"/>" style="WIDTH:170px"/>
								</td>
							</tr>
							<tr>
								<!-- 只是显示而已，不能修改的 -->
								<td align="right" valign="top">用户姓名：</td>
								<td align="left" valign="top"><input type="text"
									name="userService.user.accountName" value="<s:property value="userService.user.accountName"/>" style="WIDTH:170px"/>
								</td>
							</tr>
							<tr>
								<td align="right" valign="top">业务登录名：</td>
								<td align="left" valign="top"><input type="text"
									name="userService.loginName" value="<s:property value="userService.loginName"/>" style="WIDTH:170px"/>
								</td>
							</tr>
							<tr>
								<td align="right" valign="top">业务登录密码：</td>
								<td align="left" valign="top"><input type="text"
									name="userService.oginPassword" value="<s:property value="userService.oginPassword"/>" style="WIDTH:170px"/>
								</td>

							</tr>
							<tr>
								<td align="right" valign="top">实验室IP：</td>
								<td align="left" valign="top"><input type="text"
									name="userService.labIp" value="<s:property value="userService.labIp"/>" style="WIDTH:170px"/>
								</td>
							</tr>
							<tr>
								<td align="right" valign="top">状态：</td>
								<td align="left" valign="top"><select name="userService.serviceStatus" 
								value="<s:property value="userService.serviceStatus"/>"
									style="width:170px;"><option value="1" selected>开通</option>
										<option value="2">暂停</option>
								</select></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							<td align="left" valign="top">
									<select id="priceName" name="userService.pricing.pricingName" style="WIDTH: 170px">
										     <option selected="selected" value="userService.pricing.pricingName">
										         <s:property value="userService.pricing.pricingName" />
										      </option>
										      <s:iterator value="pricings" var="countPrice">
									               <option value="<s:property value='pricingName' />">
									                 <s:property value="pricingName" />
									               </option>
									          </s:iterator>
									</select>
								</td>
							</tr>

							<tr>
								<td align="center" colspan="2"><input type="submit"
									value="修改">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
										value="取消">
								</td>
							</tr>
						</table>
					</form></td>
			</tr>

		
		</table>
	</center>
	<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->
</body>
</html>