<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
 <script>
    function changeValidateCode(obj) {
	var timenow = new Date().getTime();
	obj.src = "user/validateCodeAction?d=" + timenow;

}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>中国电信计费系统</title>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
.STYLE3 {color: #528311; font-size: 14px; }
.STYLE4 {
	color: #42870a;
	font-size: 14px;
}
-->
</style></head>

<body>
<s:form action="userAction!login" namespace="/user" >
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#e5f6cf">&nbsp;</td>
  </tr>
  <tr>
    <td height="608" background="${pageContext.request.contextPath}/images1/login_03.gif"><table width="862" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="266" background="${pageContext.request.contextPath}/images1/login_04.gif">&nbsp;</td>
      </tr>
      <tr>
        <td height="95"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="424" height="95" background="${pageContext.request.contextPath}/images1/login_06.gif">&nbsp;</td>
            <td width="183" background="${pageContext.request.contextPath}/images1/login_07.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="21%" height="25"><div align="center"><span class="STYLE3">账户名</span></div></td>
                <td width="60%" height="25"><s:textfield name="user.accountName" style="height:22px; width:100px; border:solid 1px #cadcb2; font-size:12px; color:#FF8A2BE2;"/></td>
              </tr>
              <tr>
                <td height="25"><div align="center"><span class="STYLE3">密      码</span></div></td>
                <td height="25"><s:password name="user.password"  style="height:22px; width:100px; border:solid 1px #cadcb2; font-size:12px; color:#FF8A2BE2;" /></td>
<tr>
                <td height="25"><div align="center"><span class="STYLE3">验证码</span></div></td>
                <td height="25"><s:textfield name="validateCode"  style="height:22px; width:60px; border:solid 1px #cadcb2; font-size:12px; color:#FF8A2BE2;" />
                	<img  heigth="23px" width="60px" src="${pageContext.request.contextPath}/user/validateCodeAction" onclick="changeValidateCode(this)" title="点击图片刷新验证码" />
                </td>
               
              </tr>
              
            </table></td>
            <td width="255" background="${pageContext.request.contextPath}/images1/login_08.gif">&nbsp;</td>
          </tr>

        </table></td>
      </tr>
      <tr>
        <td height="247" valign="top" background="${pageContext.request.contextPath}/images1/login_09.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
	
          <tr>
            <td width="22%" height="30">&nbsp;</td>
            <td width="56%">&nbsp;</td>
            <td width="22%">&nbsp;</td>
          </tr>

                <td height="30">&nbsp;&nbsp;</td>
               <td heigth="18"align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="loginSub" value="登录" />&nbsp;&nbsp;<input type="reset" value="重置"/></td>
         <tr>
            <td>&nbsp;</td>
            <td height="20"><table width="100%" border="0" cellspacing="0" cellpadding="0">
             
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#a2d962">&nbsp;</td>
  </tr>
</table>
</s:form>
<s:if test="hasFieldErrors()">
	<script language="JavaScript">
	var msg = '';
	<s:iterator value="fieldErrors">
	<s:iterator value="value">
	msg = msg + '<s:property value="errors.message[0]" escape="false"/>' + '\n';
	</s:iterator>
	</s:iterator>
	alert(msg);
	</script>
</s:if>
</body>
</html>
