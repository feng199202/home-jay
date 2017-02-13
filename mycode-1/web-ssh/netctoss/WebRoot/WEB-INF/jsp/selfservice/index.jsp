<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link href='../css/main.css' rel='stylesheet' type='text/css'></link>
	<title>电信运营计费管理系统-用户自服务</title>
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
	}
	.STYLE5{
		font-size: 9px;
	}
	P{
		LINE-HEIGHT: 120%; font-size: 12px; font-style: normal;
	}
	.STYLE6{
		font-size: 13px;
		font-weight: bold;
	}
	.STYLE7{
		color: #FF8605;
	}
	P{
		LINE-HEIGHT: 150%; font-size: 14px; text-indent: 20pt;font-style: normal;
	}
	LI{
		FONT-SIZE: 12px;
	}
	-->
	</style>
</head>
<body>
<center>
<!--logo头开始-->
	


<table width='778' height='74' border='0' cellpadding='0' cellspacing='0'>
	<tr>
	<td>
	<table height='100%' border='0' cellpadding='0' cellspacing='0'>
	<tr>
		<td width='168' height='100%'><a href="http://www.tarena.com.cn" target=_blank><img src="../images/logo.gif" height="39" width="111" border="0"></a></td>
		<td width='13'><img src="../images/sy_03.jpg" height="67" width="13"></td>
		<td width='136'><img src="../images/sy_04.gif" height="37" width="348"></td>
		<td width='276'>&nbsp;</td>
		<td width='175' valign='bottom'>&nbsp;</td>
	</tr>
	</table></td>
  </tr>
</table>
<!--logo头结束-->
<!--功能导航开始-->
	

<!-- 标准标记库 -->

<table width='778' border='0' cellspacing='0' cellpadding='0'>
	<tr>
		<td width='13' height='13'><img src="../images/sy_10.jpg" height="61" width="13"></td>
		<td width='752' background='../images/sy_12.jpg'>
		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr>
				<td align='left'>
				<!-- 这里的工具条上的菜单是由权限决定的,在登录的时候存放在session的modules中 -->
				<a href="../main.htm" class="cl">首页</a><span class="STYLE4">|</span>
				
					<a href="../rights/index.htm" class="cl">权限管理</a><span class="STYLE4">|</span>
				
					<a href="../admin/index.htm" class="cl">管理员管理</a><span class="STYLE4">|</span>
				
					<a href="../fee/index.htm" class="cl">资费管理</a><span class="STYLE4">|</span>
				
					<a href="../user/index.htm" class="cl">用户管理</a><span class="STYLE4">|</span>
				
					<a href="../account/index.htm" class="cl">帐务管理</a><span class="STYLE4">|</span>
				
					<a href="../reckon/index.htm" class="cl">帐单管理</a><span class="STYLE4">|</span>
				
					<a href="../selfservice/index.htm" class="cl">用户自服务</a><span class="STYLE4">|</span>
				  
				
  				</td>
      		</tr>
    	</table>
    	</td>
    	<td width='13'><img src="../images/sy_13.jpg" height="61" width="14"></td>
  	</tr>
</table>
<!--功能导航开结束-->
</center>
<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]-->
<center>
<table width='778' height='370' border='1'>
	<tr>
	<!--左边列[功能操作菜单]开始 -->
	<td valign='top' bgcolor='#f8f8f8'>
		

<!-- 标准标记库 -->

<!--菜单标题栏开始-->
	<table width='100%' height='31' border='0' cellspacing='0' cellpadding='0' background='../images/index_26.jpg'>
		<tr>
		<td width='18%'>&nbsp;</td>
		<td width='47%' valign='middle' background='../images/ctitle_bak_fcenter.jpg'><span class="channel_title">用户自服务<!-- 模块名称 -->></span></td>
		<td width='9%' align='left' valign='middle' background='../images/ctitle_bak_fcenter.jpg'><img src="../images/channel_dh_2.jpg" height="12" width="18"></td>
		<td width='26%' align='right' valign='middle' background='../images/ctitle_bak_center.jpg'><img src="../images/ctitle_bak_right.jpg" height="31" width="10"></td>
		</tr>
	</table>
	<!--菜单标题栏结束-->
	<!--菜单项开始-->
	<table width='100%' border='0' cellspacing='0' cellpadding='0'>
  		<tr>
		<td style='border-bottom: 1px solid #d5d5d5;border-left: 1px solid #d5d5d5; border-right: 1px solid #d5d5d5;'>
		<table width='191' height='31' border='0' cellpadding='0' cellspacing='0' background='../images/subchannel_bak.jpg'>
        	<tr>
			<td width='36' height='31' align='right' valign='middle'><img src="../images/subchannel_doc.jpg" height="9" width="6">&nbsp;</td>
          	<td align='left' valign='middle'>
          		<table border='0' cellpadding='0' cellspacing='0'>
  					<tr>
					<td height='31'><a href='../selfservice/index.htm'>首页</a></td>
					</tr>
				</table>
			</td>
          	</tr>
      	</table>
      	<!-- 循环显示操作菜单 -->
      	
      		<table width='191' height='31' border='0' cellpadding='0' cellspacing='0' background='../images/subchannel_bak.jpg'>
	        	<tr>
				<td width='36' height='31' align='right' valign='middle'><img src="../images/subchannel_doc.jpg" height="9" width="6">&nbsp;</td>
	          	<td align='left' valign='middle'>
	          		<table border='0' cellpadding='0' cellspacing='0'>
	  					<tr>
						<td height='31'><a href='../selfservice/reckon.htm'>用户帐单查询</a></td>
						</tr>
					</table>
				</td>
	          	</tr>
      		</table>
      	
		<table cellpadding='0' cellspacing='0' width='100%'>
        	<tr><td width='100%' height='3'></td></tr>
        </table>
		</td>
		</tr>
	</table>
	<!--菜单项结束-->
	</td>
	<!--左边列[功能操作菜单]结束 -->

	<!--内容区开始-->
    <td width='575' align='center' valign='top'>
    	


<table width='100%' height='10%' border='0' cellspacing='0' cellpadding='0'>
	<tr>
		<td width='40' background='../images/index_26.jpg'>&nbsp;</td>
		<!--内容区导航开始-->
		<td align='left' valign='middle' background='../images/ctitle_bak_center.jpg'>
		<table border='0' cellspacing='0' cellpadding='0'>
			<tr>
				
				<td height='31' background='../images/ctitle_bak_fcenter.jpg'>
				<a href='../main.htm'  class=channel_title>首页</a>
				<img src="../images/sy_2_18.jpg" border="0"> 
				<a href='../selfservice/index.htm'  class=channel_title>用户自服务首页</a>
				</td>
			</tr>
		</table>
		</td>
		<!--内容区导航结束-->
		<td align='left' valign='middle' background='../images/ctitle_bak_center.jpg'>&nbsp;</td>
		<td width='13' align='right' valign='middle' background='../images/ctitle_bak_center.jpg'>
		<img src="../images/ctitle_bak_right.jpg" height="31" width="10">
		</td>
	</tr>
</table>

<table width='100%' border='0' cellspacing='0' cellpadding='0'>
	<tr>
		<td>欢迎使用电信运营计费管理系统 -用户自服务
		</td>
	</tr>
</table>

	</td>
	<!--内容区结束-->
	</tr>
</table>
</center>
<!--正文区开始[包含左边的功能操作菜单，与中间的操作区域]结束-->


<!--页面尾巴开始-->
	

<center>
<table width='778' height='70' border='0' cellpadding='0' cellspacing='0'>
	<tr>
		<td height='86' align='center'>
			<table width='80%' border='0' cellspacing='2' cellpadding='0'>
				<tr>
					<td height='39' align='center'>
					<div id="copyright" >
					<span class="L12">
					首页	- 在线帮助 - 网站介绍 - 客户支持 - 意见反馈 - 网站导航 -
					<a href="http://www.tarena.com.cn" class="bottom_link" target=_blank>关于我们</a>
					</span>
					<br/>
          			</div>
          			</td>
        		</tr>
				<tr>
					<td height='15' align='center'>
						
						<span style="PADDING-RIGHT: 3px; PADDING-LEFT: 3px; FONT-SIZE: 12px; PADDING-BOTTOM: 3px; COLOR: #999; PADDING-TOP: 3px">
						[源自北美的技术，最优秀的师资，最真实的企业环境，最适用的实战项目]
						</span>
						
					</td>
				</tr>
        		<tr>
					<td height='15' align='center'>
						<span style="PADDING-RIGHT: 3px; PADDING-LEFT: 3px; FONT-SIZE: 12px; PADDING-BOTTOM: 3px; COLOR: #999; PADDING-TOP: 3px">
						版权所有(C)加拿大达内IT培训集团公司
						</span>
					</td>
				</tr>
			</table>
		</td>
	</tr>
  </table>
</center>
<!--页面尾巴结束-->
</body>
</HTML>