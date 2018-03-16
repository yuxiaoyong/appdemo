<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>分享接口</title>
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
		<a href="javascript:;" @click="shareMessage()" class="weui-btn weui-btn_primary" style="margin-top:100px;">我要分享</a>
	</div>
	<div class="page__ft"></div>
</div>

</body>
<script type="text/javascript">
	$(function(){

        var vm = new Vue({
            el: "#page-wrapper",
            data: {

            },
			methods:{
				shareMessage: function(){

                    workplat.share.shareMessage({
                        title: "分享标题",
						content: "太仓检验检疫局统计数据显示，今年截至3月8日，太仓口岸共检验进口金属材料50批，货重757.3吨，货值142.3万美元",
						url: "http://www.baidu.com/", //分享链接地址
						image: "http://api.workplat.com:8080/wpapp-webapp/api/t/download?fileId=1244", //分享图片链接地址
						success:function(){},
						error:function(msg){
							$.toast(msg);
						}
					});


                }
			}
        });

    });
</script>
</html>
