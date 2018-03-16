<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>地理位置</title>
	<meta content="telephone=no" name="format-detection" />
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
	<link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">

	<script src="https://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/jquery-weui/1.2.0/js/jquery-weui.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/libs/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js/common.js"></script>
	<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.4.3&key=2049f0bec589bae14a5827481b1e4342"></script>

</head>
<body>
<div id="page-wrapper" class="page">
	<div class="page__hd">

	</div>
	<div class="page__bd">
		<div id="map-container" style="height:350px;background-color:#F2F2F2;"></div>
	</div>
	<div class="page__ft"></div>
</div>

</body>
<script type="text/javascript">
	$(function(){

	    if(typeof workplat.location == 'undefined'){
			$.alert("workplat.location函数未注入");
			return false;
		}

        function onLocationSuccess(position){
            $("#map-container").height($(window).height());
            var lon =position.lng;
            var lat = position.lat;
            map = new AMap.Map('map-container', {
                center:[lon, lat],
                zoom: 15
            });

            new AMap.Marker({
                position: [lon, lat],
                map:map
            });
        }

        function onLocationError(error){
            $.toast("定位失败");
        }

        workplat.location.getPosition({
            success:function(position){
                onLocationSuccess(position);
            },
            error:function(msg){
                onLocationError(msg);
            }
        });

    });
</script>
</html>
