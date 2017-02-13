<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../css/main1.css" rel="stylesheet" type="text/css" />
<title>电信运营计费管理系统-帐务修改输入</title>
	<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>  
 <script type="text/javascript">  
  	function mySubmit(flag) {
		return flag;
	}
	// onload
	$(function () {
		$('#error1').hide();
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
				<td width='40' background='../images/index_26.jpg'>&nbsp;</td>
				<!--内容区导航开始-->
				<td align='left' valign='middle'
					background='../images/ctitle_bak_center.jpg'>
					<table border='0' cellspacing='0' cellpadding='0'>
						<tr>

							<td height='31' background='../images/ctitle_bak_fcenter.jpg'>
								<a href='../main.htm' class=channel_title>首页</a> <img
								src="../images/sy_2_18.jpg" border="0" /> <a
								href='../user/acctupdate.htm' class=channel_title />帐务修改输入</a>
							</td>
						</tr>
					</table>
				</td>
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
				<td align="center" valign="top"><s:form id="addForm"
						action="userAction!doUpdate" namespace="/user">
						<table border="0" cellspacing='0' cellpadding='0' width="50%"
							height="80%">
							<tr>
								<td>&nbsp;</td>
								<td align="left" valign="top"><input type="hidden"
									name="user1.userId" value="${user1.userId }" /></td>
							</tr>
							<tr>
								<td align="right" valign="top">用户姓名：</td>
								<td align="left" valign="top"><s:textfield type="text" id="a1"
										name="user1.realName" style="WIDTH:170px" />*<span id="error1">名称不能为空</span></td>
							</tr>

							<tr>
								<td align="left" valign="top"><input type="hidden"
									name="user1.password" style="WIDTH:170px" /></td>
							</tr>
							<tr>
								<td align="right" valign="top">支付方式：</td>
								<td align="left" valign="top"><s:radio
										list="#{0:'现金',1:'银行卡'}" name="paymentTypeId" /></td>
							</tr>
							<tr>
								<td align="right" valign="top">电话：</td>
								<td align="left" valign="top"><s:textfield type="text"
										name="user1.userPhone" style="width:170px;" /></td>
							</tr>
							<tr>
				<td align="right" valign="top">电子邮件：</td>
				<td align="left" valign="top"><input type="text"id="txtEmail" name="user.userEmail" value="" style="width:170px;">*<span id="spinfo"></span></td>	
			</tr>
							<tr>
								<td align="right" valign="top">性别：</td>
								<td align="left" valign="top"><s:radio
										list="#{1:'男',0:'女'}" name="user1.gender" />
								</td>
							</tr>
							<tr>
								<td align="right" valign="top">民族：</td>
								<td align="left" valign="top"><s:textfield type="text"
										name="user1.nationnality" style="width:170px;" />
								</td>
							</tr>
							<tr>
								<td align="right" valign="top">职业：</td>
								<td align="left" valign="top"><s:textfield type="text"
										name="user1.career" style="width:170px;" /></td>
							</tr>
							<tr>
								<td align="right" valign="top">就职公司：</td>
								<td align="left" valign="top"><s:textfield type="text"
										name="user1.company" style="width:170px;" /></td>
							</tr>
							<tr>
								<td align="right" valign="top">邮政编码：</td>
								<td align="left" valign="top"><s:textfield type="text"
										name="user1.zipCode" style="width:170px;" /></td>
							</tr>
							<tr>
								<td align="center" colspan="2"><input type="submit"
									value="修改" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
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