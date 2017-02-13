<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/comm/tablibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">

<TITLE>作业：树形菜单</TITLE>
<LINK href="${pageContext.request.contextPath}/css/myframe.css"
	type=text/css rel=stylesheet>
<STYLE type="text/css">
DIV {
	FONT-SIZE: 12px;
	COLOR: #000000;
	LINE-HEIGHT: 22px;
}

A {
	FONT-SIZE: 13px;
	COLOR: #000000;
	TEXT-DECORATION: none
}

A:hover {
	FONT-SIZE: 13px;
	COLOR: #999999
}

.red {
	color: #FF0000
}

body {
	background: #F7FCFF
		url("${pageContext.request.contextPath}/images/bg.jpg") repeat-x;
}
</STYLE>
<SCRIPT language="JavaScript">
	function noshowall(a) {
		if (document.getElementById(a).style.display == 'block') {
			document.getElementById(a).style.display = 'none';

		}
	}
	function showall(d1) {
		if (document.getElementById(d1).style.display == 'none') {
			noshowall('1');
			noshowall('2');
			noshowall('3');
			noshowall('4');
			noshowall('5');
			noshowall('6');
			noshowall('7');
			document.getElementById(d1).style.display = 'block';

		} else {
			noshowall(d1);

		}
	}
</SCRIPT>

</HEAD>

<BODY>
	<div style="padding-left:100px;">
		<DIV>
			<table
				background="${pageContext.request.contextPath}/images/bg06.gif">
				<tr>
					<td><A href="javascript:onClick=showall('1') ">&nbsp;&nbsp;&nbsp;&nbsp;用户自费服务</A>
					</td>
				</tr>
			</table>
		</DIV>
		<DIV id="1" style="display:none;padding-left:15px;">
			<TABLE class=menu2 id="aaa1" align="absmiddle">
				<TBODY>
					<TR>
						<TD width=30>&nbsp;</TD>
						<TD width=126><A
							href="${pageContext.request.contextPath}/user/userAction!listReckons"
							target=mainFrame>用户帐单查询</A></TD>
					</TR>
				</TBODY>
			</TABLE>
		</DIV>

		<DIV id="2" style="display:none;padding-left:15px;"></DIV>

		<DIV id="3" style="display:none;padding-left:15px;"></DIV>

		<DIV style="display:none;padding-left:15px;"></DIV>
		<DIV id="4" style="display:none;padding-left:15px;"></DIV>


		<DIV id="5" style="display:none;padding-left:15px;"></DIV>

		<DIV id="6" style="display:none;padding-left:15px;"></DIV>


		<DIV id="7" style="display:none;padding-left:15px;"></DIV>
	</DIV>
</BODY>
</HTML>