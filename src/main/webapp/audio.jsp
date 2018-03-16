<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>音频接口</title>
	<meta content="telephone=no" name="format-detection" />
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
	<link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">

	<script src="https://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/jquery-weui/1.2.0/js/jquery-weui.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/libs/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js/common.js"></script>
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
		<a href="javascript:;" @touchstart="touchstart()" @touchend="touchend()" @touchcancel="touchcancel()" class="weui-btn weui-btn_primary" style="margin-top:100px;">开始录音</a>
		<div style="margin-top: 20px;">
			音频ID: {{audio.resId}}<br/>
			音频时长: {{audio.duration}}
		</div>
		<a href="javascript:;" @click="startPlay()" class="weui-btn weui-btn_primary" style="margin-top:50px;">开始播放</a>
		<a href="javascript:;" @click="stopPlay()" class="weui-btn weui-btn_primary" style="margin-top:50px;">停止播放</a>
	</div>
	<div class="page__ft"></div>
</div>

</body>
<script type="text/javascript">
	$(function(){

        var vm = new Vue({
            el: "#page-wrapper",
            data: {
				audio:{}
            },
			methods:{
				touchstart: function(){
                    workplat.audio.startRecord({
						success:function(){},
						error:function(msg){}
					});
                },

				touchend: function(){
                    workplat.audio.stopRecord({
                        success: function(data){
                            $.toast(data.resId); //音频资源ID
                            $.toast(data.duration);//音频时长（秒）
                        },
                        error: function(err){
                            $.toast(err);
                        }
                    });
				},

				touchcancel: function(){
                    workplat.audio.stopRecord({
                        success: function(data){
                            $.toast(data.resId); //音频资源ID
                            $.toast(data.duration);//音频时长（秒）
                        },
                        error: function(err){
                            $.toast(err);
                        }
                    });
				},

				startPlay: function(){
				    var audio = this.audio;
				    if(!audio.resId){
				        $.toast("请先录音", "forbidden");
				        return false;
					}
                    workplat.audio.play({
                        resId: audio.resId,
						success: function(data){
						},
						error: function(err){
                            $.toast(err);
						}
					});
				},

                stopPlay: function(){
				    var audio = this.audio;
                    workplat.audio.stop({
                        resId: audio.resId,
						success: function(data){
                            $.toast(data.resId);
						},
						error: function(err){
                            $.toast(err);
						}
					});
				}
			},
			mounted: function(){
                var $this = this;
                workplat.audio.onRecordEnd({
                    success: function(data){
						$this.audio = data;
                        $.toast(data.resId); //音频资源ID
                        $.toast(data.duration);//音频时长（秒）
                    },
                    error: function(err){
                        $.toast(err);
                    }
                });

                workplat.audio.onPlayEnd({
                    success: function(data){
                        $.toast("播放结束");
                    },
                    error: function(err){
                        $.toast(err);
                    }
                });

            }
        });

    });
</script>
</html>
