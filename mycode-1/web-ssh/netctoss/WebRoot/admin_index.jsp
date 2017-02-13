<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0031)http://localhost:8008/login.asp -->
<HTML><HEAD><TITLE>企业网站后台管理系统-用户登陆</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<STYLE type=text/css>A {
	COLOR: #008ee3
}
A:link {
	COLOR: #008ee3; TEXT-DECORATION: none
}
A:visited {
	COLOR: #666666; TEXT-DECORATION: none
}
A:active {
	TEXT-DECORATION: underline
}
A:hover {
	COLOR: #0066cc; TEXT-DECORATION: underline
}
A.b:link {
	FONT-FAMILY: Helvetica,微软雅黑,宋体; COLOR: #ffffff; FONT-SIZE: 12px; TEXT-DECORATION: none
}
A.b:visited {
	FONT-FAMILY: Helvetica,微软雅黑,宋体; COLOR: #ffffff; FONT-SIZE: 12px; TEXT-DECORATION: none
}
A.b:active {
	COLOR: #ff0000; TEXT-DECORATION: underline
}
A.b:hover {
	COLOR: #ffffff; TEXT-DECORATION: underline
}
.table1 {
	BORDER-BOTTOM: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid; BORDER-TOP: #cccccc 1px solid; BORDER-RIGHT: #cccccc 1px solid
}
.font {
	LINE-HEIGHT: 20px; COLOR: #999999; FONT-SIZE: 12px; TEXT-DECORATION: none
}
.input {
	BORDER-BOTTOM: #999999 0px; BORDER-LEFT: #999999 0px; COLOR: #999999; FONT-SIZE: 12px; BORDER-TOP: #999999 0px; BORDER-RIGHT: #999999 0px; TEXT-DECORATION: none
}
TD {
	COLOR: #007ab5; FONT-SIZE: 12px
}
FORM {
	PADDING-BOTTOM: 1px; MARGIN: 1px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; PADDING-TOP: 1px
}
INPUT {
	BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; HEIGHT: 26px; COLOR: #007ab5; BORDER-TOP: 0px; BORDER-RIGHT: 0px; unnamed1: thin none #FFFFFF
}
.unnamed1 {
	BORDER-BOTTOM: #ffffff thin; BORDER-LEFT: #ffffff thin; BORDER-TOP: #ffffff thin; BORDER-RIGHT: #ffffff thin
}
SELECT {
	BORDER-BOTTOM: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid; HEIGHT: 18px; COLOR: #666666; BORDER-TOP: #cccccc 1px solid; BORDER-RIGHT: #cccccc 1px solid; unnamed1: thin none #FFFFFF
}
BODY {
	BACKGROUND-COLOR: #9cdcf9; BACKGROUND-REPEAT: no-repeat; BACKGROUND-POSITION: 0px 0px
}
.tablelinenotop {
	BORDER-BOTTOM: #cccccc 0px solid; BORDER-LEFT: #cccccc 1px solid; BORDER-TOP: #cccccc 0px solid; BORDER-RIGHT: #cccccc 1px solid
}
.tablelinenotopdown {
	BORDER-BOTTOM: #eeeeee 1px solid; BORDER-LEFT: #eeeeee 1px solid; BORDER-TOP: #eeeeee 1px solid; BORDER-RIGHT: #eeeeee 1px solid
}
.style6 {
	COLOR: #7b8ac3; FONT-SIZE: 9pt
}
</STYLE>

<META name=GENERATOR content="MSHTML 8.00.6001.19190"></HEAD>
<BODY>
<SCRIPT language=JavaScript type=text/javascript><!--
function FrontPage_Form1_Validator(theForm)
{

  if (theForm.user.value == "")
  {
    alert("请输入管理员账号！");
    theForm.user.focus();
    return (false);
  }

  if (theForm.user.value.length < 2)
  {
    alert("在 用户名 域中，请至少输入 2 个字符。");
    theForm.user.focus();
    return (false);
  }

  if (theForm.user.value.length > 20)
  {
    alert("在 用户名 域中，请最多输入 20 个字符。");
    theForm.user.focus();
    return (false);
  }

  if (theForm.pass.value == "")
  {
    alert("请输入管理员密码");
    theForm.pass.focus();
    return (false);
  }

  if (theForm.pass.value.length < 5)
  {
    alert("在 密码 域中，请至少输入 5 个字符。");
    theForm.pass.focus();
    return (false);
  }

  if (theForm.pass.value.length > 20)
  {
    alert("在 密码 域中，请最多输入 20 个字符。");
    theForm.pass.focus();
    return (false);
  }

  if (theForm.XuasYzm.value == "")
  {
    alert("请在 验证码 域中输入值。");
    theForm.XuasYzm.focus();
    return (false);
  }

  if (theForm.XuasYzm.value.length < 5)
  {
    alert("在 验证码 域中，请至少输入 5 个字符。");
    theForm.XuasYzm.focus();
    return (false);
  }

  if (theForm.XuasYzm.value.length > 5)
  {
    alert("在 验证码 域中，请最多输入 5 个字符。");
    theForm.XuasYzm.focus();
    return (false);
  }

  var checkOK = "0123456789-";
  var checkStr = theForm.XuasYzm.value;
  var allValid = true;
  var validGroups = true;
  var decPoints = 0;
  var allNum = "";
  for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);
    for (j = 0;  j < checkOK.length;  j++)
      if (ch == checkOK.charAt(j))
        break;
    if (j == checkOK.length)
    {
      allValid = false;
      break;
    }
    allNum += ch;
  }
  if (!allValid)
  {
    alert("在 验证码 域中，只能输入 数字 字符。");
    theForm.XuasYzm.focus();
    return (false);
  }
  return (true);
}
//--></SCRIPT>

<TABLE style="MARGIN-TOP: 120px" border=0 cellSpacing=0 cellPadding=0 width=681 
align=center>
  <TBODY>
  <TR>
    <TD height=259 vAlign=bottom 
    background=images/login_1.gif width=353 align=middle>
      <TABLE border=0 cellSpacing=3 cellPadding=0 width="90%">
        <TBODY>
        <TR>
          <TD style="COLOR: #05b8e4" vAlign=bottom align=right>Power by XFcms 
            <A href="http://www.865171.cn/" target=_blank></A>Copyright 
        2010</TD></TR></TBODY></TABLE></TD>
    <TD background=images/login_2.gif width=195>
      <TABLE border=0 cellSpacing=0 cellPadding=2 width=190 align=center 
      height=106>
        <FORM language=JavaScript 
        onsubmit="return FrontPage_Form1_Validator(this)" method=post 
        name=FrontPage_Form1 action=admin/admin_login.asp target=_top>
        <TBODY>
        <TR>
          <TD height=50 colSpan=2 align=left>&nbsp;</TD></TR>
        <TR>
          <TD height=30 width=60 align=left>登陆名称</TD>
          <TD><INPUT 
            style="BORDER-BOTTOM: #27b3fe 1px solid; BORDER-LEFT: #27b3fe 1px solid; BACKGROUND: url(Images/login_6.gif) #ffffff repeat-x; HEIGHT: 20px; BORDER-TOP: #27b3fe 1px solid; BORDER-RIGHT: #27b3fe 1px solid" 
            id=user size=16 name=user></TD></TR>
        <TR>
          <TD height=30 align=left>登陆密码</TD>
          <TD><INPUT 
            style="BORDER-BOTTOM: #27b3fe 1px solid; BORDER-LEFT: #27b3fe 1px solid; BACKGROUND: url(Images/login_6.gif) #ffffff repeat-x; HEIGHT: 20px; BORDER-TOP: #27b3fe 1px solid; BORDER-RIGHT: #27b3fe 1px solid" 
            id=pass size=16 type=password name=pass></TD></TR>
        <TR>
          <TD height=30>验 证 码 </TD>
          <TD><INPUT 
            style="BORDER-BOTTOM: #27b3fe 1px solid; BORDER-LEFT: #27b3fe 1px solid; BACKGROUND: url(Images/login_6.gif) #ffffff repeat-x; HEIGHT: 20px; BORDER-TOP: #27b3fe 1px solid; BORDER-RIGHT: #27b3fe 1px solid" 
            id=XuasYzm maxLength=5 size=9 name=XuasYzm> <SPAN 
            style="FONT-FAMILY: 宋体,MingLiU, Arial; TABLE-LAYOUT: fixed; COLOR: #000000; FONT-SIZE: 9pt; WORD-BREAK: break-all">82941 
            </SPAN></TD></TR>
        <TR>
          <TD height=40 colSpan=2 align=middle><IMG 
            src="images/tip.gif" width=16 height=16> 
          请勿非法登陆！</TD>
        <TR>
          <TD colSpan=2 align=middle><INPUT style="BACKGROUND: url(Images/login_5.gif) no-repeat" id=B1 value=" 登  陆 " type=submit name=B1> 
<INPUT style="BACKGROUND: url(Images/login_5.gif) no-repeat" value=" 取  消 " type=reset name=Submit></TD>
        <TR>
          <TD height=5 colSpan=2></TD></FORM></TR></TBODY></TABLE></TD>
    <TD background=images/login_3.gif 
  width=133>&nbsp;</TD></TR>
  <TR>
    <TD height=161 background=images/login_4.gif 
    colSpan=3></TD></TR></TBODY>
	</TABLE>
	<!--
   ┏━━━━━━━━━━━━━━━━━━━━━┓
   ┃             源 码 爱 好 者               ┃
   ┣━━━━━━━━━━━━━━━━━━━━━┫
   ┃                                          ┃
   ┃           提供源码发布与下载             ┃
   ┃                                          ┃
   ┃        http://www.codefans.net           ┃
   ┃                                          ┃
   ┃            互助、分享、提高              ┃
   ┗━━━━━━━━━━━━━━━━━━━━━┛
-->
</BODY>
</HTML>
