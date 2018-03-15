<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>视频接口</title>
	<meta content="telephone=no" name="format-detection" />
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
	<link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">

	<script src="https://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/jquery-weui/1.2.0/js/jquery-weui.min.js"></script>
	<script src="${request.pageContext.contextPath}/statics/libs/vue.min.js"></script>
	<script src="${request.pageContext.contextPath}/statics/js/common.js"></script>
	<style type="text/css">
		* {
			-webkit-touch-callout:none;
			-webkit-user-select:none;
			-khtml-user-select:none;
			-moz-user-select:none;
			-ms-user-select:none;
			user-select:none;
		}
	</style>
</head>
<body>
<div id="page-wrapper" class="page">
	<div class="page__hd">

	</div>
	<div class="page__bd">
		<a href="javascript:;" @click="startRecord()" class="weui-btn weui-btn_primary" style="margin-top:100px;">开始录制视频</a>
		<div style="margin-top: 20px;">
			视频ID: {{video.resId}}<br/>
			视频封面ID: {{video.coverId}}<br/>
			音频时长: {{video.duration}}
		</div>
		<a href="javascript:;" @click="startPlay()" class="weui-btn weui-btn_primary" style="margin-top:100px;">开始播放视频</a>
	</div>
	<div class="page__ft"></div>
</div>

</body>
<script type="text/javascript">
	$(function(){

        var vm = new Vue({
            el: "#page-wrapper",
            data: {
				video: {}
            },
			methods:{
                startRecord: function(){
                    var $this = this;
                    workplat.video.startRecord({
                        success: function(data){
                            $this.video = data;
                            console.log(data.resId);//视频资源ID
                            console.log(data.coverId);//视频封面ID
                            console.log(data.duration);//视频时长，单位：秒
                        },
                        error: function(err){
                            $.toast(err);
                        }
                    });
				},

				startPlay: function(){
					var video = this.video;
                    if(!video.resId){
                        $.toast("请先录制视频", "forbidden");
                        return false;
                    }
                    workplat.video.play({
                        resId: video.resId,
						success: function(data){},
						error: function(err){
							console.log(err);
						}
					});
				}

			},
			mounted: function(){
                var $this = this;

                workplat.video.onPlayEnd({
                    success: function(data){
                        $.toast("播放结束");
                        console.log(data.resId);
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
