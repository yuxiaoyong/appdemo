<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>设备网络</title>
	<meta content="telephone=no" name="format-detection" />
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

		<a href="javascript:;" @click="getWifiStatus()" class="weui-btn weui-btn_primary" style="margin-top:100px;">获取WIFI接入状态</a>
		<div style="text-align: center;margin-top: 50px;">
			WIFI状态<br/>
			<div style="height:50px;background-color:#F2F2F2;line-height: 50px;">{{wifiStatus}}</div>
		</div>

		<a href="javascript:;" @click="getNetworkType()" class="weui-btn weui-btn_primary" style="margin-top:100px;">获取网络接入类型</a>
		<div style="text-align: center;margin-top: 50px;">
			接入类型<br/>
			<div style="height:50px;background-color:#F2F2F2;line-height: 50px;">{{connectType}}</div>
		</div>

	</div>
	<div class="page__ft"></div>
</div>

</body>
<script type="text/javascript">
	$(function(){

        var vm = new Vue({
            el: "#page-wrapper",
            data: {
                wifiStatus:{},
				connectType:{}
            },
			methods:{
                getWifiStatus: function(){
                    var $this = this;
                    workplat.network.getWifiStatus({
                        success: function(data){
							$this.wifiStatus = data;
                        },
                        error: function(err){
                            console.log(err);
                        }
                    });
				},
                getNetworkType: function(){
                    var $this = this;
                    workplat.network.getNetworkType({
                        success: function(type){
                            $this.connectType = type;
                        },
                        error: function(err){
                            console.log(err);
                        }
                    });
				}
			}
        });

    });
</script>
</html>
