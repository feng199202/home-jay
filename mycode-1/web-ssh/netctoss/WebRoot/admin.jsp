<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>中国电信管理系统</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<STYLE type=text/css>
A {
	COLOR: #008ee3
}

A:link {
	COLOR: #008ee3;
	TEXT-DECORATION: none
}

A:visited {
	COLOR: #666666;
	TEXT-DECORATION: none
}

A:active {
	TEXT-DECORATION: underline
}

A:hover {
	COLOR: #0066cc;
	TEXT-DECORATION: underline
}

A.b:link {
	FONT-FAMILY: Helvetica, 微软雅黑, 宋体;
	COLOR: #ffffff;
	FONT-SIZE: 12px;
	TEXT-DECORATION: none
}

A.b:visited {
	FONT-FAMILY: Helvetica, 微软雅黑, 宋体;
	COLOR: #ffffff;
	FONT-SIZE: 12px;
	TEXT-DECORATION: none
}

A.b:active {
	COLOR: #ff0000;
	TEXT-DECORATION: underline
}

A.b:hover {
	COLOR: #ffffff;
	TEXT-DECORATION: underline
}

.table1 {
	BORDER-BOTTOM: #cccccc 1px solid;
	BORDER-LEFT: #cccccc 1px solid;
	BORDER-TOP: #cccccc 1px solid;
	BORDER-RIGHT: #cccccc 1px solid
}

.font {
	LINE-HEIGHT: 20px;
	COLOR: #999999;
	FONT-SIZE: 12px;
	TEXT-DECORATION: none
}

.input {
	BORDER-BOTTOM: #999999 0px;
	BORDER-LEFT: #999999 0px;
	COLOR: #999999;
	FONT-SIZE: 12px;
	BORDER-TOP: #999999 0px;
	BORDER-RIGHT: #999999 0px;
	TEXT-DECORATION: none
}

TD {
	COLOR: #007ab5;
	FONT-SIZE: 12px
}

FORM {
	PADDING-BOTTOM: 1px;
	MARGIN: 1px;
	PADDING-LEFT: 1px;
	PADDING-RIGHT: 1px;
	PADDING-TOP: 1px
}

INPUT {
	BORDER-BOTTOM: 0px;
	BORDER-LEFT: 0px;
	HEIGHT: 26px;
	COLOR: #007ab5;
	BORDER-TOP: 0px;
	BORDER-RIGHT: 0px;
	unnamed1: thin none #FFFFFF
}

.unnamed1 {
	BORDER-BOTTOM: #ffffff thin;
	BORDER-LEFT: #ffffff thin;
	BORDER-TOP: #ffffff thin;
	BORDER-RIGHT: #ffffff thin
}

SELECT {
	BORDER-BOTTOM: #cccccc 1px solid;
	BORDER-LEFT: #cccccc 1px solid;
	HEIGHT: 18px;
	COLOR: #666666;
	BORDER-TOP: #cccccc 1px solid;
	BORDER-RIGHT: #cccccc 1px solid;
	unnamed1: thin none #FFFFFF
}

BODY {
	BACKGROUND-COLOR: #9cdcf9;
	BACKGROUND-REPEAT: no-repeat;
	BACKGROUND-POSITION: 0px 0px
}

.tablelinenotop {
	BORDER-BOTTOM: #cccccc 0px solid;
	BORDER-LEFT: #cccccc 1px solid;
	BORDER-TOP: #cccccc 0px solid;
	BORDER-RIGHT: #cccccc 1px solid
}

.tablelinenotopdown {
	BORDER-BOTTOM: #eeeeee 1px solid;
	BORDER-LEFT: #eeeeee 1px solid;
	BORDER-TOP: #eeeeee 1px solid;
	BORDER-RIGHT: #eeeeee 1px solid
}

.style6 {
	COLOR: #7b8ac3;
	FONT-SIZE: 9pt
}
</STYLE>

<META name=GENERATOR content="MSHTML 8.00.6001.19190">
</HEAD>
<BODY>

	<script>
		function changeValidateCode(obj) {
			var timenow = new Date().getTime();
			obj.src = "${pageContext.request.contextPath}/admin/validateCodeAction?d="
					+ timenow;

		}
	</script>

	<s:form action="adminLoginAction!login" namespace="/admin">
		<TABLE style="MARGIN-TOP: 120px" border=0 cellSpacing=0 cellPadding=0
			width=681 align=center>
			<TBODY>
				<TR>
					<TD height=259 vAlign=bottom
						background='${pageContext.request.contextPath}/images/login_1.gif'
						width=353 align=middle>
						<TABLE border=0 cellSpacing=3 cellPadding=0 width="90%">
							<TBODY>

							</TBODY>
						</TABLE>
					</TD>
					<TD
						background="${pageContext.request.contextPath}/images/login_2.gif"
						width=195>

						<TABLE border=0 cellSpacing=0 cellPadding=2 width=190 align=center
							height=106>

							<TBODY>
								<TR>
									<TD height=50 colSpan=2 align=left>&nbsp;</TD>
								</TR>
								<TR>
									<TD height="30" width="60" align="left">登陆名称</TD>
									<TD><s:textfield
											style="BORDER-BOTTOM: #27b3fe 1px solid; BORDER-LEFT: #27b3fe 1px solid; BACKGROUND: url('${pageContext.request.contextPath}/images/login_6.gif') #ffffff repeat-x; HEIGHT: 20px; BORDER-TOP: #27b3fe 1px solid; BORDER-RIGHT: #27b3fe 1px solid"
											size="16" name="admin.accountName" />
									</TD>
								</TR>
								<TR>
									<TD height="30" align="left">登陆密码</TD>
									<TD><s:password
											style="BORDER-BOTTOM: #27b3fe 1px solid; BORDER-LEFT: #27b3fe 1px solid; BACKGROUND: url('${pageContext.request.contextPath}/images/login_6.gif') #ffffff repeat-x; HEIGHT: 20px; BORDER-TOP: #27b3fe 1px solid; BORDER-RIGHT: #27b3fe 1px solid"
											size="16" name="admin.password" /></TD>
								</TR>
								<TR>
									<td height="25"><div align="center">
											<span class="STYLE3">验证码</span>
										</div></td>
									<td height="25"><input name="validateCode"
											style="height:22px; width:60px; border:solid 1px #cadcb2; font-size:12px; color:#FF8A2BE2" />
										<img heigth="23px" width="60px"
										src="${pageContext.request.contextPath}/admin/validateCodeAction"
										onclick="changeValidateCode(this)" title="点击图片刷新验证码" />
									</td>
								</TR>
								<TR>
								<TR>
									<TD colSpan="2" align=middle><INPUT
										style="BACKGROUND: url('${pageContext.request.contextPath}/images/login_5.gif') no-repeat"
										id="B1" value=" 登  陆 " type=submit> <INPUT
										style="BACKGROUND: url('${pageContext.request.contextPath}/images/login_5.gif') no-repeat"
										value=" 取  消 " type=reset>
									</TD>
								<TR>
									<TD height=5 colSpan=2></TD>

								</TR>
							</TBODY>

						</TABLE></TD>
					<TD
						background="${pageContext.request.contextPath}/images/login_3.gif"
						width=133>&nbsp;</TD>
				</TR>
				<TR>
					<TD height=161
						background="${pageContext.request.contextPath}/images/login_4.gif"
						colSpan=3></TD>
				</TR>
			</TBODY>
		</TABLE>
	</s:form>
	<s:if test="hasFieldErrors()">
		<script language="JavaScript">
			var msg = '';
			<s:iterator value="fieldErrors">
			<s:iterator value="value">
			msg = msg
					+ '<s:property value="errors.message[0]" escape="false"/>'
					+ '\n';
			</s:iterator>
			</s:iterator>
			alert(msg);
		</script>
	</s:if>
</BODY>
</HTML>
