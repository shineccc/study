<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<HTML><HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="../../css/style.css" type=text/css rel=stylesheet>
<base target="_self">
<script>
	function modifypsw(){
		//只支持IE
   		var dw=window.showModalDialog('/crm/html/staff/updPwd.jsp','', 'dialogHeight:180px; dialogWidth:260px; dialogLeft:500px; dialogTop:220px;edge:sunken;center:yes;location:no;help:no;resizable:no;status:no;scroll:no');
	} 
</script>

</HEAD>
<BODY bgColor=#CEEBFF leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table1" height="27">
	<tr>
		<td>
		<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table2">
			<tr>
				<td width="420">
				<img border="0" src="../../images/topbg.jpg" width="436" height="80"></td>
				<td background="../../images/topbg.jpg" valign="bottom">
				<div align="right">
				<table border="0" width="145" id="table7" cellspacing="0" cellpadding="0">
					<tr>
						<td width="150" height="24"></td>
					</tr>
					<tr>
						<td width="150" height="35"><p align="right"><font color="#FFFFFF">欢迎您：<b>${staff.staffName} </b></font></td>
					</tr>
				</table>
				</div>
				</td>
				<td width="374" background="../../images/topright.jpg" valign="top">
				<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table4">
					<tr>
						<td>
						<div align="right">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table5">
								<tr>
									<td height="19">
									<p align="center">
									<img border="0" src="../../images/calendar.gif" align="right">&nbsp;</td>
									<td width="189"> <font color="#ffffff">今天是：</SCRIPT>${date}</font></td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
					<tr>
						<td height="20"></td>
					</tr>
					<tr>
						<td>
						<div align="right">
							<table border="0" width="215" cellspacing="0" cellpadding="0" id="table6" height="23">
								<tr>
									<td width="26"><img border="0" src="../../images/pwd.gif"></td>
									<td width="51" valign="middle">
										<!-- JavaScript只支持IE , 效果更好应该使用弹出框
										<a href="javascript:modifypsw();" ><font color="ffffff">更改口令</font></a>
										 -->
										<a href="../staff/updPwd.jsp" target="right"><font color="ffffff">更改口令</font></a>
									</td>
									<td width="31"><p align="center"><img border="0" src="../../images/login.gif"></td>
									<td width="55" valign="middle"><a href="../login.html" target="_top"><font color="ffffff">重新登录</font></a></td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
				</table>			  </td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" height="10" id="table3">
	<tr>
		<td style="border-bottom: 1px solid #ffffff; filter: progid:dximagetransform.microsoft.gradient(startcolorstr='#0075C4', endcolorstr='#ffffff', gradienttype='1'"> </td>
	</tr>
</table>

</BODY></HTML>