<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-资费增加</title>
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
	function mySubmit(flag) {
		return flag;
	}
	// onload
	$(function() {
		$('#error1').hide();
		$('#error2').hide();
		$('#error3').hide();
		$("#magePricingAction").submit(function(event) {
			var result = 1;
			var data1 = $('#a1').val();
			data1 = $.trim(data1);
			var data2 = $('#a2').val();
			data2 = $.trim(data2);
			var data3 = $('#a3').val();
			data3 = $.trim(data3);
			if (data1.length < 1) {
				$('#error1').show();
				result = 0;
			} else {
				$('#error1').hide();
			}
			if (isNaN(data2) || data2.length < 1) {
				$('#error2').show();
				result = 0;
			} else {
				$('#error2').hide();
			}

			if (isNaN(data3) || data3.length < 1) {
				$('#error3').show();
				result = 0;
			} else {
				$('#error3').hide();
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
						action="magePricingAction!feeToAdd" namespace="/pricing">
						<table border="0" cellspacing='0' cellpadding='0' width="50%"
							height="80%">
							<tr>
								<td align="right" valign="top">资费名称：</td>
								<td align="left" valign="top"><input type="text"
									name="pricing.pricingName" id="a1" value="" style="WIDTH:170px">*
										<span id="error1">资费名称不能为空</span>
								</td>

							</tr>
							<tr>
								<td colspan="2" align="center"></td>
							</tr>
							<tr>
								<td align="right" valign="top">基费：</td>
								<td><s:textfield name="pricing.baseFee" id="a2"></s:textfield>*
									<span id="error2">请填写数字</span></td>

							</tr>
							<tr>
								<td colspan="2" align="center"></td>
							</tr>
							<tr>
								<td align="right" valign="top">月租费：</td>
								<td align="left" valign="top"><s:textfield
										name="pricing.rateFee" id="a3"></s:textfield>* <span
									id="error3">请填写数字</span></td>

							</tr>
							<tr>
								<td align="right" valign="top">资费描述：</td>
								<td align="left" valign="top"><textarea
										name="pricing.description" style="width:170px;height:170px;"></textarea>
								</td>
							</tr>

							<tr>
								<td align="center" colspan="2"><input type="submit"
									value="增加">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
										value="取消">
								</td>
								</td>
							</tr>
						</table>
					</s:form></td>
			</tr>

		</table>
		</td>
		<!--内容区结束-->
		</tr>
		</table>
	</center>
	<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->

</BODY>
</html>