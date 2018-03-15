<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
	<link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">

	<script src="https://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/jquery-weui/1.2.0/js/jquery-weui.min.js"></script>
	<script src="${request.pageContext.contextPath}/statics/libs/vue.min.js"></script>
	<script src="${request.pageContext.contextPath}/statics/js/common.js"></script>

</head>
<body>
<div id="page-wrapper" class="page">
	<div class="page__hd">

	</div>
	<div class="page__bd">

		<div class="weui-cells weui-cells_form">
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">用户头像</label></div>
				<div class="weui-cell__bd" style="text-align: right;"><img style="width:60px;height:60px;" src="${user.accLogo}"/></div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">用户ID</label></div>
				<div class="weui-cell__bd" style="text-align: right;">${user.accId}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">第三方用户ID</label></div>
				<div class="weui-cell__bd" style="text-align: right;">${user.thirdSysAccId}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">部门ID</label></div>
				<div class="weui-cell__bd" style="text-align: right;">${user.deptId}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">用户姓名</label></div>
				<div class="weui-cell__bd" style="text-align: right;">${user.accName}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">用户登录名</label></div>
				<div class="weui-cell__bd" style="text-align: right;">${user.accLoginName}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">用户手机号码</label></div>
				<div class="weui-cell__bd" style="text-align: right;">${user.accMobile}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">用户电子邮箱</label></div>
				<div class="weui-cell__bd" style="text-align: right;">${user.accEmail}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">电话短号</label></div>
				<div class="weui-cell__bd" style="text-align: right;">${user.accTelCornet}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">排序号</label></div>
				<div class="weui-cell__bd" style="text-align: right;">${user.accOrder}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">用户状态</label></div>
				<div class="weui-cell__bd" style="text-align: right;">${user.accState}</div>
			</div>

		</div>

	</div>
	<div class="page__ft"></div>
</div>

</body>

</html>
