<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>文件接口</title>
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
		<a @click="previewFile('https://github.com/yuxiaoyong/appdemo/blob/master/doc/%E5%BA%94%E7%94%A8%E5%BC%80%E5%8F%91%E6%8E%A5%E5%85%A5%E6%8C%87%E5%8D%97%20V1.0.docx?raw=true')" href="#">应用开发接入指南 V1.0.docx</a>
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

                previewFile: function(url){
                    alert(url);
                    workplat.file.preview({
                    	url:url,
                        success:function(data){},
						error:function(err){
							$toast(err);
						}
					});

				}

			}
        });

    });
</script>
</html>
