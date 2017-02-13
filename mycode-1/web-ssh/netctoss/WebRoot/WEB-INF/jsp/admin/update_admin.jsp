<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath}/css/main1.css"
	rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-管理员增加</title>
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>  
 <script type="text/javascript">  
  	function mySubmit(flag) {
		return flag;
	}
	// onload
	$(function () {
		$('#error1').hide();
		$('#error2').hide();
		$('#error3').hide();
		$('#error4').hide();
		var state = false;
            $('#txtEmail').focus(function () {
                if (state == false) {
                    $(this).val('');
                }
            })
            $('#txtEmail').blur(function () {
                if ($(this).val() == '') {
                    $('#spinfo').text('请输出邮箱');
                    $(this).focus();
                }
                else {
                    if (/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test($(this).val()) == false) {
                        $('#spinfo').text('邮箱格式错误');
                        $(this).focus();
                    }
                    else {
                        $('#spinfo').text('');
                        $('#spinfo').append('<img src=../images/success.jpg/>');
                        state = true;
                    }
                }
            })
		
		$("#addForm").submit(function(event) {
			var result=1;
			var data1 = $('#a1').val();
			data1 = $.trim(data1);
			var data2 = $('#a2').val();
			var data3 = $('#a3').val();
			var data4 = $('#a4').val();
			
			
			if (data1.length < 1) {
				$('#error1').show();
				result=0;
			} else{
			$('#error1').hide();
			}
			if(data2.length < 1){
  			$('#error2').show();
				result=0;
			}else{
			$('#error2').hide();}
		
			if (data3.length < 1) {
				$('#error3').show();
				result=0;
			}else{
			$('#error3').hide();}
			if (data3!=data4||data4.length<1) {
				$('#error4').show();
				result=0;
			}else{
			$('#error4').hide();}
			if(result==0||state==false){
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
					background='${pageContext.request.contextPath}/images/ctitle_bak_center.jpg'><img
					src="${pageContext.request.contextPath}/images/ctitle_bak_right.jpg"
					height="31" width="10">
				</td>
			</tr>
		</table>

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr width="100%" height="300px">
				<!-- 显示查询UI -->
				<td align="center" valign="top"><s:form name="addForm" id="addForm"
						action="manageAdminAction!updateAdmin" namespace="/admin">
						<table border="0" cellspacing='0' cellpadding='0' width="80%"
							height="100%">
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right">管理员真实姓名：</td>
								<td align="left"><s:textfield name="admin.realName" id="a1"></s:textfield>*
								   <span id="error1">此处不能为空</span>
								</td>
							</tr>
							<tr>
								<td align="right">帐号名：</td>
								<td align="left">
									<!-- <input type="text" name="admin.accountName"
									value="" style="WIDTH:170px"> --> <s:textfield
										name="admin.accountName" id="a2"></s:textfield>*
					       <span id="error2">此处不能为空</span></td>
								</td>
							</tr>
							<tr>
								<td align="right">口令：</td>
								<td align="left">
									<!-- <input type="text" name="admin.password"
									value="" style="WIDTH:170px">
								 --> <s:textfield name="admin.password" id="a3"></s:textfield>*
								  <span id="error3">此处不能为空</span>
								</td>
							</tr>
							<tr>
								<td align="right">确认口令：</td>
								<td align="left"><input id="a4" type="text" name="password"
									value="${admin.password }" style="WIDTH:170px" />*
									 <span id="error4">确认密码错误</span></td>
							</tr>
							
						<tr>
								<td align="right">电子邮件：</td>
								<td align="left"><input type="text" id="txtEmail" name="admin.adminEmail"
									value="" style="WIDTH:170px" />*<span id="spinfo"></span></td>
							</tr>
							<tr>
								<td align="right">选择角色：</td>
								<td align="left">
									<div
										style="display:block;overflow-y:scroll;overflow-x:auto;height:120px;width:250px;background-color:#eeeeee;">
										<s:iterator value="roles" var="role">
											<s:if test="roleId != 1">
												<input type="radio" name="admin.role.roleId"
													value="<s:property value="roleId"/>" />
												<s:property value="roleName"/></br>
											</s:if>
										</s:iterator>

									</div>
								</td>
							</tr>
							<tr>
								<td align="center" colspan="2"><input type="submit"
									value="确认修改" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
									value="取消" />
								</td>
							</tr>
						</table>
					</s:form>
				</td>
			</tr>
		</table>

	</center>

</body>
</html>