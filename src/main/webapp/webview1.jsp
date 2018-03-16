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
	<script src="${pageContext.request.contextPath}/statics/libs/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js/common.js"></script>

</head>
<body>
<div id="page-wrapper" class="page">
	<div class="page__hd">

	</div>
	<div class="page__bd">

		<a href="javascript:;" @click="closeWebview()" class="weui-btn weui-btn_primary" style="margin-top:50px;">关闭窗口</a>

		<a href="javascript:;" @click="setTitle()" class="weui-btn weui-btn_primary" style="margin-top:20px;">修改标题栏名称</a>

		<a href="javascript:;" @click="setBackground()" class="weui-btn weui-btn_primary" style="margin-top:20px;">修改标题栏背景</a>

		<a href="javascript:;" @click="setMenus()" class="weui-btn weui-btn_primary" style="margin-top:20px;">设置标题栏按钮</a>

		<a href="javascript:;" @click="hideBar()" class="weui-btn weui-btn_primary" style="margin-top:20px;">隐藏标题栏</a>

		<a href="javascript:;" @click="showBar()" class="weui-btn weui-btn_primary" style="margin-top:20px;">显示标题栏</a>
		<br/><br/><br/><br/><br/>
	</div>
	<div class="page__ft"></div>
</div>

</body>
<script type="text/javascript">
	$(function(){

        serverurl = "<%=basePath%>";
        var vm = new Vue({
            el: "#page-wrapper",
            data: {
            },
			methods:{
                closeWebview: function(){
                    var $this = this;
                    workplat.window.close({retvalue: "我是回传值！"});
				},
                setTitle: function(){
                    workplat.window.setTitle("修改标题");
				},
				setBackground: function(){
                    workplat.window.setBackground("#000000");
				},
				setMenus: function(){
                    workplat.window.setMenu({
                        color:"#FF0000",
						items:[
							{ id:"1", iconId:"xxx", icon:"http://api.workplat.com:8080/wpapp-webapp/api/t/download?fileId=5a1658066b2e3024e62cbe0c", text:"按钮3" },
							{ id:"2", iconId:"yyy", icon:"http://api.workplat.com:8080/wpapp-webapp/api/t/download?fileId=5a1658066b2e3024e62cbe0c", text:"按钮4" },
                            { id:"3", iconId:"zzz", icon:"http://api.workplat.com:8080/wpapp-webapp/api/t/download?fileId=5a1658066b2e3024e62cbe0c", text:"按钮5" }
						],
                        success:function(id){
                            console.log(id);
                        },
                        error:function(err){
                            console.log(err);
                        }
                    });

                },
				hideBar: function(){
                    workplat.window.setNaviBarStatus(0);
				},
				showBar: function(){
                    workplat.window.setNaviBarStatus(1);
				}
			}
        });

    });
</script>
</html>
