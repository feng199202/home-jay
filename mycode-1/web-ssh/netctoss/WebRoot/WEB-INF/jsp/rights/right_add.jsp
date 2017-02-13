<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath}/css/main1.css"
	rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-权限增加</title>
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
	function mySubmit(flag) {
		return flag;
	}
	// onload
	$(function() {
		$('#error1').hide();
		$('#error2').hide();
		$("#rightform").submit(function(event) {
			var result = 1;
			var data1 = $('#a1').val();
			data1 = $.trim(data1);
			var data2 = $('#a2').val();
			data2 = $.trim(data2);
			if (data1.length < 1) {
				$('#error1').show();
				result = 0;
			} else {
				$('#error1').hide();
			}
			if (data2.length < 1) {
				$('#error2').show();
				result = 0;
			} else {
				$('#error2').hide();
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
		<!-- 标准标记库 -->


		<table width='100%' height='10%' border='0' cellspacing='0'
			cellpadding='0'>
			<tr>

				<!--内容区导航结束-->
				<td align='left' valign='middle'
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'>&nbsp;</td>
				<td width='13' align='right' valign='middle'
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'><img
					src="${pageContext.request.contextPath}/images/ctitle_bak_right.jpg"
					height="31" width="10">
				</td>
			</tr>
		</table>

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr width="100%" height="300px">
				<!-- 显示查询UI -->
				<td align="center" valign="middle"><s:form name="rightform"
						id="rightform" namespace="/admin"
						action="manageRoleRightAction!doAddRight">
						<table border="0" cellspacing='0' cellpadding='0' width="60%"
							height="80%">
							<tr>
								<td align="right" valign="top">权限名称：</td>
								<td align="left" valign="top"><input type="text" id="a1"
									name="right.rightName" style="WIDTH:170px" />* <span
									id="error1">此处不能为空</span>
								</td>
								<td align="left" valign="top"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right" valign="top">权限 url：</td>
								<td align="left" valign="top"><input id="a2" type="text"
									name="right.url" value="" style="WIDTH:170px" />* <span
									id="error2">此处不能为空</span>
								</td>
								<td align="left" valign="top"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right" valign="top">模块名称：</td>
								<td align="left" valign="top"><select
									name="right.systemModule.systemModuleId" style="WIDTH:175px">
										<s:iterator value="modules">
											<option value="<s:property value="systemModuleId"/>">
												<s:property value="systemModuleName" />
											</option>
										</s:iterator>
								</select></td>
								<td></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>

							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="center" colspan="2"><input type="submit"
									value="增加" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
									value="取消" />
								</td>
								<td></td>
							</tr>
						</table>
					</s:form></td>
			</tr>

			<tr width="100%" height="20px">

			</tr>
		</table>

	</center>
	<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->




	<center>
		<table width='778' height='70' border='0' cellpadding='0'
			cellspacing='0'>
			<tr>
				<td height='86' align='center'>
					<table width='80%' border='0' cellspacing='2' cellpadding='0'>
						<tr>
							<td height='39' align='center'>
								<div id="copyright">
									<span class="L12"> </span> <br />
								</div></td>
						</tr>

					</table></td>
			</tr>
		</table>
	</center>
</body>
</html>