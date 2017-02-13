<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script language=javascript
	src="${pageContext.request.contextPath}/js/my.js"></script>
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
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-权限修改输入</title>

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
					src="../images/ctitle_bak_right.jpg" height="31" width="10" />
				</td>
			</tr>
		</table>

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr width="100%" height="300px">
				<!-- 显示查询UI -->
				<td align="center" valign="top"><s:form name="rightform"
						id="rightform" namespace="/admin" method="post"
						action="manageRoleRightAction!doUpdateRight">
						<table border="0" cellspacing='0' cellpadding='0' width="50%"
							height="80%">
							<tr>

								<td align="left"><input type="hidden" name="right.rightId"
									value="<s:property value="rightToUpdate.rightId"/>"
									style="WIDTH:170px" /></td>
							</tr>
							<tr>
								<td>权限名称：</td>
								<td align="left"><input id="a1" name="right.rightName"
									value="<s:property value="rightToUpdate.rightName"/>" />* <span
									id="error1">此处不能为空</span>
								</td>
								</td>
							</tr>
							<tr>
								<td>权限 url：</td>

								<td align="left"><input id="a2" name="right.url"
									value="<s:property value="rightToUpdate.url"/>" />* <span
									id="error2">此处不能为空</span>
								</td>
								</td>
							</tr>
							<tr>
								<td>模块名称：</td>
								<td align="left"><select name="module.systemModuleId"
									style="WIDTH:170px">

										<s:iterator value="modules">
											<s:if
												test="systemModuleId == rightToUpdate.systemModule.systemModuleId">
												<option value="<s:property value="systemModuleId"/>"
													selected="selected">
													<s:property value="systemModuleName" />
												</option>
											</s:if>
											<s:else>
												<option value="<s:property value="systemModuleId"/>">
													<s:property value="systemModuleName" />
												</option>
											</s:else>
										</s:iterator>

								</select></td>
							</tr>

							<tr>
								<td align="center" colspan="2"><input type="submit"
									value="修改" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
									value="取消" /></td>
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


	<!--页面尾巴开始-->


	<!--页面尾巴结束-->
</BODY>
</html>