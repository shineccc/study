<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../../css/sys.css" type="text/css" rel="stylesheet" />
</head>

<body class="emp_body">
 <table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0" class="wukuang">
  <tr>
    <td width="1%"><img src="../../images/tleft.gif"/></td>
    <td width="33%" align="left">[编辑学员跟踪]</td>
   
    <td width="63%"align="right">
    	<!--<a href="listLog.html"><img src="../../images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="../../images/button/add.gif" class="img"/></a>~-->
        <a class="butbg"  href="addUser.html"><img src="../../images/button/save.gif" /></a>
        <a class="butbg"  href="#"><img src="../../images/button/tuihui.gif" /></a>
       <!-- <a class="butbg"  href="genjinEmployee.html"><img src="../../images/button/genjin.gif" /></a>
        <a class="butbg"  href="addEmployee.html"><img src="../../images/button/tongji.gif" /></a>
        <a href="#"><img src="../../images/button/close.gif" class="img"/></a>-->
    </td>
    <td width="3%" align="right"><img src="../../images/tright.gif"/></td>
  </tr>
</table>

<table width="89%" class="emp_table"    style="" align="left" cellspacing="0">
  <tr>
    <td width="8%">日期：</td>
    <td width="17%"><input type="text"/></td>
    <td width="7%">交流方式：</td>
    <td width="18%"><input type="text"/></td>
    <td width="7%">营销人员：</td>
    <td width="43%"><input type="text"/></td>
  </tr>
  <tr>
    <td>咨询时长：</td>
    <td><input type="text"/></td>
    <td>QQ：</td>
    <td><input type="text"/></td>
    <td>学员：</td>
    <td><input type="text"/></td>
  </tr>
  <tr>
    <td>交流结果：</td>
    <td><input type="text"/></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>内容：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="6"><textarea rows="10" cols="80">CKEditor</textarea></td>
  </tr>
</table>

</body>
</html>
