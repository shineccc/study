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
    <td width="44%" align="left">[咨询学生添加]</td>
   
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
<table width="89%" class="emp_table"    style="" align="left" cellspacing="0">
  <tr>
    <td width="7%" height="35" align="left" >建档日期：</td>
    <td width="18%" align="left"><input type="text" /></td>
    <td width="8%" align="left">营销人员：</td>
    <td width="19%" align="left"><input type="text" /></td>
    <td width="7%" align="left">学员来源：</td>
    <td width="41%" align="left"><input type="text" /></td>
  </tr>
  <tr>
    <td height="25" align="left">姓名：</td>
    <td align="left"><input type="text" /></td>
    <td align="left">QQ：</td>
    <td align="left"><input type="text" /></td>
    <td align="left">电话：</td>
    <td align="left"><input type="text" /></td>
  </tr>
  <tr>
    <td height="28" align="left">年龄：</td>
    <td align="left"><input type="text" /></td>
    <td align="left">性别：</td>
    <td align="left"><input type="text" /></td>
    <td align="left">Email：</td>
    <td align="left"><input type="text" /></td>
  </tr>
  <tr>
    <td height="33" align="left">联系地址：</td>
    <td align="left"><input type="text" /></td>
    <td align="left">学校：</td>
    <td align="left"><input type="text" /></td>
    <td align="left">学历：</td>
    <td align="left"><input type="text" /></td>
  </tr>
  <tr>
    <td height="31" align="left">省份：</td>
    <td align="left"><input type="text" /></td>
    <td align="left">工作年限：</td>
    <td align="left"><input type="text" /></td>
    <td align="left">介绍人：</td>
    <td align="left"><input type="text" /></td>
  </tr>
  <tr>
    <td height="41" align="left">介绍学员：</td>
    <td align="left"><input type="text" /></td>
    <td align="left">意向班级：</td>
    <td align="left"><input type="text" /></td>
    <td align="left">意向度：</td>
    <td align="left"><input type="text" /></td>
  </tr>
  <tr>
    <td>关注问题：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="79">&nbsp;</td>
    <td colspan="5"><textarea cols="60" rows="5"></textarea></td>
  </tr>
  <tr>
    <td height="27">备注：</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="77">&nbsp;</td>
    <td colspan="5"><textarea cols="60" rows="5"></textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="5" style="padding-left:250px;"></td>
  </tr>
</table>



</body>
</html>
