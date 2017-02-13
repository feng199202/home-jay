<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comm/tablibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<s:form action="adminLoginAction!adminLogin" namespace="/admin">
		<table>
			<tr>
				<td>用戶名</td>
				<td><s:textfield name="admin.accountName"></s:textfield></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><s:password name="admin.password"></s:password></td>
			</tr>

		</table>
		<tr>
			<td><input type="submit" value="提交">
			</td>
			<td><input type="reset" value="重置">
			</td>
		</tr>
	</s:form>
</body>
</html>