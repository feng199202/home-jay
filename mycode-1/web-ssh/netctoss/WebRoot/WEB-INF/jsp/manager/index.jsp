<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/comm/tablibs.jsp"%>
<html>
<head>

<title>电信运营计费管理系统</title>
</head>
<frameset rows="91,*,45" frameborder="NO" border="0" framespacing="0">
	<frame src="${pageContext.request.contextPath}/admin/adminLoginAction!toIndexTop" name="topFrame" scrolling="NO" noresize="">
	<frameset cols="250,*" frameborder="NO" border="0" framespacing="0">
		<frame src="${pageContext.request.contextPath}/admin/adminLoginAction!toIndexMenu" name="leftFrame" scrolling="auto" noresize="">
		<frame src="${pageContext.request.contextPath}/admin/adminLoginAction!toIndexMap" name="mainFrame" scrolling="yes">
	</frameset>
	<frame src="${pageContext.request.contextPath}/admin/adminLoginAction!toIndexBottom" name="bottomFrame" scrolling="NO" noresize="">
</frameset>

</html>
