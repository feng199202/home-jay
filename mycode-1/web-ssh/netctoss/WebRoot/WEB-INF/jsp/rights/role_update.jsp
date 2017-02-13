<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script language=javascript src="${pageContext.request.contextPath}/js/my.js"></script>
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-角色修改输入</title>

<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>  
 <script type="text/javascript">  
  	function mySubmit(flag) {
		return flag;
	}
	// onload
	$(function () {
		$('#error1').hide();
		$("#roleform").submit(function(event) {
			var result=1;
			var data1 = $('#a1').val();
			data1 = $.trim(data1);
			var data2 = $('#a2').val();
			data2 = $.trim(data2);
			
			if (data1.length < 1) {
				$('#error1').show();
				result=0;
			} else{
			$('#error1').hide();
			}
			
		
			
			if(result==0){
			return mySubmit(false);
			}else{
		
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
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'>&nbsp;</td>
				<td width='13' align='right' valign='middle'
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'>
					<img
					src="${pageContext.request.contextPath}/images/ctitle_bak_right.jpg"
					height="31" width="10" /></td>
			</tr>
		</table>

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr width="100%" height="300px">
				<!-- 显示查询UI -->
				<td align="center" valign="top"><s:form name="roleform" id="roleform"
						method="post" action="manageRoleRightAction!doUpdateRole"
						namespace="/admin">
						<table border="0" cellspacing='1' cellpadding='1' width="80%"
							height="200">
							<tr>
								<td>角色名称：</td>
								
								<td align="left">
									<!-- <input type="text" name="rolename" value="超级管理员" style="WIDTH:170px"/> -->
									<s:textfield name="updateRole.roleName" id="a1" />
									*
									<span id="error1">此处不能为空</span>
									<input type="hidden" name="updateRole.roleId"/>
								
									</td>
							</tr>
							<tr>
								<td valign="top">拥有权限：</td>

								<td align="left">
									<div
										style="display:block;overflow-y:scroll;overflow-x:auto;height:280px;">
										<s:iterator value="rights">
											<input type="checkbox" name="updateRightIds"
												value="<s:property value="rightId"/>" />
											<s:property value="rightName" /> | <s:property
												value="systemModule.systemModuleName" />
											<br />

										</s:iterator>
									</div>
								</td>
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

	</center>
</body>
</html>