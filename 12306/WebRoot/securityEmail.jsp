<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<link href="css/sidebar.css" rel="stylesheet" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>我的12306 | 客运服务 | 铁路客户服务中心</title>
		<link href="css/securityEmail.css" rel="stylesheet" />
		<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="js/securityEmail.js">
		</script>
	</head>

	<body>
		<div class="up-box" id="dialog_succ" style="display: none;">
			<div class="up-box-hd">温馨提示
				<a href="#nogo" id="dialog_succ_close" shape="rect">关闭</a>
			</div>
			<div class="up-box-bd">
				<div class="up-con clearfix"><span class="icon i-win"></span>
					<div class="r-txt">
						<div class="tit" id="_show_text">邮箱修改成功，已发送验证链接到您的新邮箱XXX@163.com!</div>
						<p>请进入邮箱并按提示重新验证安全邮箱。</p>
					</div>
				</div>
				<div class="lay-btn">
					<a href="#nogo" class="btn92" id="dialog_succ_cancel" shape="rect">取消</a>
					<a href="#" class="btn92s" id="dialog_succ_ok" shape="rect">确认</a>
				</div>
			</div>
		</div>
		<div class="up-box" id="dialog_sendEmail_succ" style="display: none;">
			<div class="up-box-hd">温馨提示
				<a href="#nogo" id="dialog_sendEmail_close" shape="rect">关闭</a>
			</div>
			<div class="up-box-bd">
				<div class="up-con clearfix"><span class="icon i-win"></span>
					<div class="r-txt">
						<div class="tit">邮箱已成功验证，请您重新登录。</div>
					</div>
				</div>
				<div class="lay-btn">
					<a href="#" class="btn92s" id="dialog_sendEmail_ok" shape="rect">立即登录</a>
				</div>
			</div>
		</div>
		<!--header start-->
		<div class="header">
			<div style="z-index: 2000" class="header-bd">
				<a href="http://www.12306.cn/">
					<h1 class="logo">中国铁路客户服务中心-客运中心</h1>
				</a>
				<div class="login-info">
					<div class="phone-link">
						<a href="#" target="true">手机版</a>
					</div>
					<div class="menu">
						<a href="myMenu.jsp" class="menu-bd" id="js-my">我的12306<b></b>
						</a>
						<div class="menu-list"><b></b>
							<ul>
								<li>
									<a href="outOrder.jsp">未完成订单</a>
								</li>
								<li>
									<a href="completeOrder.jsp">已完成订单(改/退)</a>
								</li>
								<li class="line"></li>
								<li>
									<a href="https://exservice.12306.cn/excater/queryMyOrder.html" target="_blank">我的餐饮</a>
								</li>
								<li>
									<a href="http://www.baidu.com">我的保险</a>
								</li>
								<li class="line"></li>
								<li>
									<a href="initQueryUserInfo.jsp">查看个人信息</a>
								</li>
								<li>
									<a href="security.jsp">账户安全</a>
								</li>
								<li class="line"></li>
								<li>
									<a href="queryPassengers.jsp">常用联系人</a>
								</li>
								<li>
									<a href="#">车票快递地址</a>
								</li>
								<li class="line"></li>
								<li>
									<a href="#">温馨服务查询</a>
								</li>
							</ul>
						</div>
					</div>
					<span class="login-txt" style="color: #666666;"><span>意见反馈:<a class="cursor colorA" href="mailto:12306yjfk@rails.com.cn">12306yjfk@rails.com.cn</a>
          您好，</span>
					<a id="login_user" href="myMenu.jsp" class="colorA" style="margin-left:-0.5px;"><span style="width:50px;">${passenger.realName}</span>
					</a>
					|
					<a id="regist_out" href="UserServlet?method=outUser">退出</a>
					</span>
				</div>
				<div class="nav">
					<ul>
						<li>
							<a href="#">客运首页</a>
						</li>
						<li id="selectYuding">
							<a href="ticketBook.jsp">车票预订</a>
						</li>
						<li>
							<a href="https://exservice.12306.cn/excater/index.html" target="_blank">订餐服务</a>
						</li>
						<li style="width: 71px;" id="js-xd" class="nav-guide">
							<a href="javascript:">出行向导</a>
							<div class="nav-list">
								<ul style="font-weight:normal">
									<li>
										<a href="ticketBook.jsp">车次查询</a>
									</li>
									<li>
										<a href="ticketBook.jsp">票价查询</a>
									</li>
									<li>
										<a href="ticketBook.jsp">公布票价查询</a>
									</li>
									<li>
										<a href="ticketBook.jsp">车站车次查询</a>
									</li>
									<li>
										<a href="ticketBook.jsp">中转查询</a>
									</li>
									<li>
										<a href="ticketBook.jsp">正晚点查询</a>
									</li>
									<li>
										<a href="#">代售点查询</a>
									</li>
								</ul>
							</div>
						</li>
						<li id="selectHelp">
							<a href="#">信息服务</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--header end-->
		<!--页面主体  开始-->
		<div class="content clearfix">
			<!--当前位置 开始-->
			<div class="crumbs">
				您现在的位置：
				<a href="#" shape="rect">客运首页</a>
				&nbsp;>&nbsp;
				<a href="myMenu.jsp" shape="rect">我的12306</a>
				&nbsp;>&nbsp;
				<a href="initQueryUserInfo.jsp" shape="rect">个人信息</a>
				&nbsp;>&nbsp;
				<a href="security.jsp" shape="rect">账号安全</a>
				&nbsp;>&nbsp;<strong>安全邮箱</strong>
			</div>
			<!--当前位置 结束-->
			<!--左侧导航 开始-->
			<div class="sidebar">
				<div class="layout my">
					<div class="lay-hd">我的12306</div>
					<div class="lay-bd" id="js-my12306">
						<div class="nav-label" style="display: black"><span></span>
						</div>
						<dl id="sidebar_menu"><dt class="label-y"><a  href="javascript:void(0);" id="link_4_myTicket">我的火车票</a>
</dt>
							<dd class="label-y" id="dd_4_NonComOrder" url="completeOrder">
								<a href="outOrder.jsp" id="link_4_NonComOrder">未完成订单</a>
							</dd>
							<dd class="label-y" id="dd_4_comOrder" url="12306/completeOrder.html">
								<a href="completeOrder.jsp" id="link_4_comOrder">已完成订单</a>
							</dd>
							<dt class="label-y"><a  href="https://exservice.12306.cn/excater/queryMyOrder.html" target="_blank">我的餐饮</a>
</dt>
							<dt class="label-y" id="link_4_ticketInfo" url="insurance/init"><a  href="javascript:void(0);">我的保险</a>
</dt>
							<dt class="label-y"><a  href="javascript:void(0);" id="link_4_myInfor">个人信息</a>
</dt>
							<dd class="label-y" id="dd_4_showMyInfor" url="modifyUser/initQueryUserInfo">
								<a href="initQueryUserInfo.jsp" id="link_4_showMyInfor">查看个人信息</a>
							</dd>
							<dd class="label-y" id="dd_4_showSafe" url="userSecurity/init">
								<a href="security.jsp" id="link_4_showSafe">账号安全</a>
							</dd>
							<dd class="label-y" id="dd_4_sjhy" url="userSecurity/bindTel">
								<a href="securityTel.jsp" id="link_4_sjhy">手机核验</a>
							</dd>
							<dt class="label-y"><a  href="javascript:void(0);" id="link_4_passengerInfor">常用信息管理</a>
</dt>
							<dd class="label-y" id="dd_4_passengerIns" url="passengers/init">
								<a href="queryPassengers.jsp" id="link_4_passengerIns">常用联系人</a>
							</dd>
							<dd class="label-y" id="dd_4_address" url="address/init">
								<a href="javascript:void(0);" id="dd_4_address">车票快递地址</a>
							</dd>
							<dt class="label-y"><a  href="javascript:void(0);">温馨服务</a>
</dt>
							<dd class="label-y" id="dd_4_qxyy" url="icentre/qxyyInfo" class="last" otherUrl="icentre/qxyy">
								<a href="javascript:void(0);">重点旅客预约</a>
							</dd>
							<dd class="label-y" id="dd_4_lostitems" url="icentre/lostInfo" otherUrl="icentre/lostItems">
								<a href="javascript:void(0);">遗失物品查找</a>
							</dd>
							<dd class="label-y" id="dd_4_serviceQuery" url="icentre/serviceQuery">
								<a href="javascript:void(0);">服务查询</a>
							</dd>
							<dt class="label-y"><a  href="javascript:void(0);">投诉和建议</a>
</dt>
							<dd class="label-y" id="dd_4_complaint" url="advice/complaintInfo" otherUrl="advice/complaint">
								<a href="javascript:void(0);">投诉</a>
							</dd>
							<dd class="label-y" id="dd_4_advice" url="advice/adviceInfo" otherUrl="advice/advice">
								<a href="javascript:void(0);">建议</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
			<!--左侧导航 结束-->
			<!--右侧主体 开始-->
			<div class="main">
				<!--系统信息 开始-->
				<div class="layout order">
					<div class="lay-hd">账号安全</div>
					<div class="lay-bd">
						<form id="_editSafeEmail" method="post" action="PassengerServlet?method=updEmail">
							<div class="safe">
								<h2>安全邮箱</h2>
								<ul class="safe-list">
									<li>
										<div class="label">原电子邮箱：</div>
										<div class="r-txt">${passenger.email}</div>
									</li>
									<li>
										<div class="label">新电子邮箱：</div>
										<div class="r-txt"><input name="_email" id="_email" type="text" class="inptxt w200 color333  inp-transform" value="" autocomplete="off" />
										</div>
										<div class="tips">请输入新电子邮箱</div>
									</li>
									<li style="display: list-item;">
										<div class="label"><span class="required"></span></div>
										<label for="_email" class="error" id="em" style="display: none;margin-left: 210px;">请输入有效的电子邮件地址！</label>
									</li>
									<li class="line"></li>
									<li>
										<div class="label"><span class="required">*</span> 登录密码：
										</div>
										<div class="r-txt"><input name="_loginPwd" id="_loginPwd" type="password" class="inptxt w200 color333" value="" />
										</div>
										<div class="tips">正确输入密码才能修改个人资料</div>
									</li>
									<li>
										<div class="label"><span class="required">*</span> 请填写手机验证码：
										</div>
										<div class="r-txt"><input maxlength="6" onkeypress="return $.isNum(event)" type="text" id="mobile_randcode" name="mobileRandcode" class="inptxt w200 inp-transform" />
										</div>
										<div class="r-txt tc" style="margin-left: 5px" id="get_mobile_randcode">
											<a id="randCode" href="PassengerServlet?method=sendMail" class="btn122" style="margin-left: -90px" shape="rect">获取手机验证码</a>
										</div>
									</li>
									<li style="display: none;" id="mobile_randcode_error">
										<div class="label"><span class="required"></span>
										</div>
										<label for="mobile_randcode" class="error"></label>
									</li>
									<li>
										<div class="label"></div>
										<div class="r-txt tips" style="margin-left: 212px;width:300px;">一个用户一天可以获取三次修改邮箱的手机验证码。</div>
									</li>
								</ul>
								<div class="lay-btn">
									<input value="取消" style="border: none" type="reset" class="btn92" shape="rect">
									<input value="登录邮箱" style="border: none" type="submit" id="loginEmail" class="btn92s" shape="rect">
								</div>
							</div>
						</form>
					</div>
				</div>
				<!--系统信息 结束-->
				<div class="tips-txt hide mt10">
					<h2>温馨提示：</h2>
					<P>在互联网购买学生票后，须携带购票时所使用的有效身份证件、附有“学生火车票优惠卡”的学生证（均为原件）和订单号码于列车开车前到安装有学生火车票优惠卡识别器的车站售票窗口或铁路客票代售点换取纸质车票后乘车。 </P>
				</div>
			</div>
			<!--右侧主体 结束-->
		</div>
		<!--页面主体  结束-->
		<!--页面底部  开始-->
		<div class="footer">
			<p>
				<a href="http://www.12306.cn/mormhweb/gljd/gywm" target="true">关于我们</a>
				|
				<a href="http://www.12306.cn/mormhweb/gljd/wzls/" target="true">网站声明</a>
			</p>
			<p>版权所有 © 2008-2017 中国铁路信息技术中心 中国铁道科学研究院</p>
			<p>京ICP备15003716号-3&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证150437号</p>
		</div>
		<!--页面底部  结束-->
	</body>

</html>