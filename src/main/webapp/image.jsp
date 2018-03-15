<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>图片接口</title>
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

		<div class="weui-cells weui-cells_form">
			<div class="weui-cell">
				<div class="weui-cell__bd">
					<div class="weui-uploader">
						<div class="weui-uploader__hd">
							<p class="weui-uploader__title">图片上传</p>
						</div>
						<div class="weui-uploader__bd">
							<ul class="weui-uploader__files" id="uploaderFiles">
								<li class="weui-uploader__file weui-uploader__file_status">
									<img view="true" viewpath="${pageContext.request.contextPath}/statics/imgs/avatar.jpg" src="${pageContext.request.contextPath}/statics/imgs/avatar.jpg" style="width:100%;height:100%;"/>
								</li>
							</ul>
							<div class="weui-uploader__input-box" @click="uploadImage()">
								<%--<input id="uploaderInput" class="weui-uploader__input" type="file" accept="image/*" multiple="">--%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<a href="javascript:;" @click="previewImage()" class="weui-btn weui-btn_primary" style="margin-top:20px;margin-bottom:20px;">预览图片</a>

		<img v-for="image in images" style="width:100%;" :src="image"/>



	</div>
	<div class="page__ft"></div>
</div>

</body>
<script type="text/javascript">
	$(function(){

        var vm = new Vue({
            el: "#page-wrapper",
            data: {
                images:[
					"http://api.workplat.com:8080/wpapp-webapp/api/t/download?fileId=5a56be116b2e303030277d1d",
					"http://api.workplat.com:8080/wpapp-webapp/api/t/download?fileId=5a56be116b2e303030277d1c",
					"http://api.workplat.com:8080/wpapp-webapp/api/t/download?fileId=5a56be116b2e303030277d1b"
				]
			},
			methods:{

                uploadImage: function(){
                    workplat.image.upload({
                        type: 0,
                        multiple: true,
                        max: 5,
                        compression: true,
                        quality: 60,
                        resize: 50,
                        success:function(resIds){
                            $.toast(resIds);
                        },
                        error:function(err){
                            $.toast(err);
                        }
                    });
				},

				previewImage: function(){
					var images = this.images;
                    workplat.image.preview({
                    	urls:images,
                        success: function(data){
                            console.log(data);
                        },
						error:function(err){
							console.log(err);
						}
					});

                }
			}
        });

    });
</script>
</html>
