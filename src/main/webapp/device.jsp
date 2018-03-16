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
	<script src="${pageContext.request.contextPath}/statics/libs/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js/common.js"></script>

</head>
<body>
<div id="page-wrapper" class="page">
	<div class="page__hd">

	</div>
	<div class="page__bd">

		<div class="weui-cells weui-cells_form">

			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">设备唯一标识</label></div>
				<div class="weui-cell__bd" style="text-align: right;">{{deviceInfo.uuid}}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">设备类型</label></div>
				<div class="weui-cell__bd" style="text-align: right;">{{deviceInfo.type}}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">设备名称</label></div>
				<div class="weui-cell__bd" style="text-align: right;">{{deviceInfo.name}}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">设备版本号</label></div>
				<div class="weui-cell__bd" style="text-align: right;">{{deviceInfo.version}}</div>
			</div>
			<div class="weui-cell">
				<div class="weui-cell__hd"><label class="weui-label">设备MAC</label></div>
				<div class="weui-cell__bd" style="text-align: right;">{{deviceInfo.mac}}</div>
			</div>

		</div>

		<a href="javascript:;" @click="startVibrate()" class="weui-btn weui-btn_primary" style="margin-top:100px;">开启震动</a>
		<a href="javascript:;" @click="cancelVibrate()" class="weui-btn weui-btn_primary" style="margin-top:30px;">关闭震动</a>

	</div>
	<div class="page__ft"></div>
</div>

</body>
<script type="text/javascript">
	$(function(){

        var vm = new Vue({
            el: "#page-wrapper",
            data: {
                deviceInfo:{}
			},
			methods:{
                startVibrate: function(){
					workplat.device.vibrate(2000);
				},
                cancelVibrate: function(){
                    workplat.device.cancelVibrate();
				}
			},
            mounted: function(){
                var $this = this;
                workplat.device.getInfo({
                    success: function(deviceInfo){
						$this.deviceInfo = deviceInfo;
                    },
                    error: function(err){
                        console.log(err);
                    }
                });

			}
        });

    });
</script>
</html>
