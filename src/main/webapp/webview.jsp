<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>webview</title>
	<meta content="telephone=no" name="format-detection" />
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

		<a href="javascript:;" @click="openWebview1()" class="weui-btn weui-btn_primary" style="margin-top:100px;">打开新窗口1</a>

		<a href="javascript:;" @click="openWebview2()" class="weui-btn weui-btn_primary" style="margin-top:100px;">打开新窗口2</a>

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
                openWebview1: function(){
                    workplat.window.open ({
                        url:serverurl+"/webview1",
                        title:"webview1",
                        background:"#000000",
                        close:function(data){
                            $.alert("返回值:" + data.retvalue);
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
                },

                openWebview2: function(){
                    workplat.window.open ({
                        url:serverurl+"/webview1",
                        title:"webview2",
                        background:"#000000",
                        close:function(data){
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
                }
			}
        });

    });
</script>
</html>
