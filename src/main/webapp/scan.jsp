<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
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

		<a href="javascript:;" @click="startScan()" class="weui-btn weui-btn_primary" style="margin-top:100px;">点我扫码</a>
		<div style="text-align: center;margin-top: 50px;">
			扫码结果<br/>
			<div style="height:50px;background-color:#F2F2F2;line-height: 50px;">{{result}}</div>
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
                result:""
            },
			methods:{
                startScan: function(){
                    var $this = this;
                    workplat.qrcode.scan({
                        needResult:1,
                        success: function(result){
							$this.result = result;
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
