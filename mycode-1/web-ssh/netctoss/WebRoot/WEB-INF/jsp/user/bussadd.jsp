<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-业务增加</title>
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
	function mySubmit(flag) {
		return flag;
	}
	// onload
	$(function() {
		$('#error1').hide();
		$('#error11').hide();
		$('#error2').hide();
		$('#error3').hide();
		$('#error4').hide();
		$("#addForm").submit(function(event) {
		
			var result = 1;
			var data1 = $('#a1').val();
			data1 = $.trim(data1);
			var data11 = $('#a11').val();
			data11 = $.trim(data11);
			var data2 = $('#a2').val();
			data2 = $.trim(data2);
			var data3 = $('#a3').val();
			data3 = $.trim(data3);
			var data4 = $('#a4').val();
			data4 = $.trim(data4);

			if (data1.length < 1) {
				$('#error1').show();
				result = 0;
			} else {
				$('#error1').hide();
			}
			if (data11 != "kong") {
				$('#error11').show();
				result = 0;
			} else {
				$('#error11').hide();
			}
			if (data2.length < 1) {
				$('#error2').show();
				result = 0;
			} else {
				$('#error2').hide();
			}

			if (data3.length < 1) {
				$('#error3').show();
				result = 0;
			} else {
				$('#error3').hide();
			}
			if (data3 != data4 || data4.length < 1) {
				$('#error4').show();
				result = 0;
			} else {
				$('#error4').hide();
			}
			if (result == 0) {
				return mySubmit(false);
			} else {

				return mySubmit(true);
			}
		});
	});
</script>
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
				<td align="center" valign="top"><s:form name="addForm"
						id="addForm" action="manageUserAction!bussDoAdd"
						namespace="/manageUser">
						<table border="0" cellspacing='0' cellpadding='0' width="50%"
							height="80%">
							<tr>
								<td align="right" valign="top">选择用户：</td>
								<td align="left" valign="top"><input id="a1" type="text"
									name="user.accountName"
									value="<s:property value="user.accountName"/>"
									style="WIDTH:170px" />*<span id="error1">名称不能为空</span></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td align="left" valign="top"><select id="a11" value="kong"
									name="userService.pricing.pricingId" style="WIDTH: 170px">
										<option selected="selected"
											value="userService.pricing.pricingId">请选择资费类型</option>
										<s:iterator value="pricings" var="pricing">
											<option value="<s:property value="pricingId" />">
												<s:property value="pricingName" />
											</option>
										</s:iterator>
								</select>*<span id="error11">此处不能为空</span></td>


							</tr>
							<tr>
								<td align="right" valign="top">业务登录名：</td>
								<td align="left" valign="top"><input type="text" id="a2"
									name="userService.loginName" value="" style="WIDTH:170px" />*<span
									id="error2">名称不能为空</span></td>
							</tr>
							<tr>
								<td align="right" valign="top">业务登录密码：</td>
								<td align="left" valign="top"><input type="text" id="a3"
									name="userService.loginPassword" value="" style="WIDTH:170px" />*<span
									id="error3">名称不能为空</span></td>

							</tr>
							<tr>
								<td align="right" valign="top">密码确认：</td>
								<td align="left" valign="top"><input type="text" id="a4"
									name="userService.loginPassword" value="" style="WIDTH:170px" />*<span
									id="error4">密码确认错误</span></td>

							</tr>
							<tr>
								<td align="right" valign="top">实验室IP：</td>
								<td align="left" valign="top"><input type="text"
									name="userService.labIp" value="" style="width:170px" /></td>
							</tr>
							<tr>
								<td align="right" valign="top">状态：</td>
								<td align="left" valign="top"><select
									name="userService.serviceStatus" style="width:170px;">
										<option selected="selected" value="00">请选择业务状态</option>
										<option value="1" selected="selected">开通</option>
										<option value="2">暂停</option>
								</select>
								</td>
							</tr>

							<tr>
								<td align="center" colspan="2"><input type="submit"
									value="增加" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
									value="取消" /></td>
							</tr>
						</table>
					</s:form>
				</td>
			</tr>
		</table>
	</center>
	<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->

</body>
</html>