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
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="../../images/tleft.gif"/></td>
    <td width="44%" align="left">[编辑学员流失]</td>
   
    <td width="52%"align="right">
    	<!--<a href="listLog.html"><img src="../../images/button/find.gif" class="img"/></a>
        <a href="addLog.html"><img src="../../images/button/add.gif" class="img"/></a>~-->
        
       <!-- <a href="#"><img src="../../images/button/close.gif" class="img"/></a>-->
       <a href="#"><img src="../../images/button/save.gif" /></a>
       <a href="#"><img src="../../images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="../../images/tright.gif"/></td>
  </tr>
</table>

<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
    <td width="9%">学生：</td>
    <td width="19%"><input type="text" /></td>
    <td width="8%">QQ：</td>
    <td width="64%"><input type="text" /></td>
  </tr>
  <tr>
    <td>联系电话：</td>
    <td><input type="text" /></td>
    <td>就读时间：</td>
    <td><input type="text" /></td>
  </tr>
  <tr>
    <td>流失时间：</td>
    <td><input type="text" /></td>
    <td>业务人员：</td>
    <td><input type="text" /></td>
  </tr>
  <tr>
    <td>是否退款：</td>
    <td><input type="text" /></td>
    <td>退款金额：</td>
    <td><input type="text" /></td>
  </tr>
  <tr>
    <td>流失类型：</td>
    <td><input type="text" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>流失原因：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4"><textarea cols="60" rows="10"></textarea></td>
  </tr>
</table>

</body>
</html>
