<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  <link href="../css/main1.css" rel="stylesheet" type="text/css" />
	<title>电信运营计费管理系统-帐务增加</title>
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
			data2 = $.trim(data2);
			data3 = $.trim(data3);
			data4 = $.trim(data4);		
			
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
			if(result==0==0||state==false){
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
	<tr width="100%" height="300px">
		<!-- 显示查询UI -->
		<td align="center" valign="top">		 
		
		<s:form name="addForm"  id="addForm" action="manageUserAction!addUser" namespace="/manageUser">
			<table border="0"  cellspacing='0' cellpadding='0' width="50%" height="80%">
			<tr>
				<td align="right" valign="top">用户姓名：</td>
				<td align="left" valign="top"><input id="a1" type="text" name="user.realName" value="" style="WIDTH:170px">*
				<span id="error1">名称不能为空</span></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					
				</td>
			</tr>
				
			<tr>
				<td align="right" valign="top">登录名：</td>
				<td align="left" valign="top"><input type="text" id="a2" name="user.accountName" value="" style="WIDTH:170px">*
				<span id="error2">名此处不能为空</span></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					
				</td>
			</tr>
			
			<tr>
				<td align="right" valign="top">登录密码：</td>				
				<td align="left"  valign="top"><input id="a3" type="text" name="user.password" value="" style="WIDTH:170px">*<span id="error3">此处不能为空</span></td></tr>
			<tr>
				<td colspan="2" align="center">
					
				</td>
			</tr>
				<tr>
				<td align="right" valign="top">密码确认：</td>				
				<td align="left"  valign="top"><input id="a4" type="text"  value="" style="WIDTH:170px">*<span id="error4">密码确认错误</span></td></tr>
			<tr>
				<td colspan="2" align="center">
					
				</td>
			</tr>
			<tr>
				<td align="right" valign="top">状态：</td>
				<td align="left" valign="top">
				<select name="user.accountStatus" style="width:170px;"><option value="1" selected="selected">开通</option>
				   <option value="2">暂停</option></select>
				</td>	
			</tr>
			<tr>
				<td colspan="2" align="center">
						
				</td>
			</tr>
			<tr>
				<td align="right" valign="top">支付方式：</td>
				
				<td><select name="user.paymentType" style="width:170px;"><option value="0" selected="selected">现金</option>
				   <option value="1">银行卡</option></select></td>

			</tr>
			<tr>
				<td colspan="2" align="center">
					
				</td>
			</tr>
			<tr>
				<td align="right" valign="top">电话：</td>
				<td align="left" valign="top"><input type="text" name="user.userPhone" value="" style="width:170px;"></td>	
			</tr>
			<tr>
				<td align="right" valign="top">电子邮件：</td>
				<td align="left" valign="top"><input type="text"id="txtEmail" name="user.userEmail" value="" style="width:170px;">*<span id="spinfo"></span></td>	
			</tr>
			<tr>
				<td align="right" valign="top">性别：</td>
				<td align="left" valign="top">
					<select name="user.gender" style="width:170px;"><option value="0" selected="selected">女</option>
					   <option value="1">男</option></select>
					
				</td>	
			</tr>
			<tr>
				<td colspan="2" align="center">
					
				</td>
			</tr>
			<tr>
				<td align="right" valign="top">民族：</td>
				<td align="left" valign="top"><input type="text" name="user.nationnality" value="" style="width:170px;"></td>	
			</tr>
			<tr>
				<td align="right" valign="top">职业：</td>
				<td align="left" valign="top"><input type="text" name="user.career" value="" style="width:170px;"></td>	
			</tr>
			<tr>
				<td align="right" valign="top">就职公司：</td>
				<td align="left" valign="top"><input type="text" name="user.company" value="" style="width:170px;"></td>	
			</tr>
			<tr>
				<td align="right" valign="top">邮政编码：</td>
				<td align="left" valign="top"><input type="text" name="user.zipCode" value="" style="width:170px;"></td>	
			</tr>
			<tr>
				<td  align="center" colspan="2"><input type="submit" value="增加">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="取消"> </td>
				<td>
			</tr>
			</table>
		</s:form>
			
		</td>
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