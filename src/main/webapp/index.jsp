<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
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
		<h1 class="page__title" style="text-align: center;">接口样例</h1>
	</div>
	<div class="page__bd">
		<div class="weui-grids">
			<a @click="openUserPage()" class="weui-grid js_grid">
				<div class="weui-grid__icon">
					<img src="${pageContext.request.contextPath}/statics/imgs/icon_nav_cell.png" alt="">
				</div>
				<p class="weui-grid__label">
					用户信息
				</p>
			</a>
			<a @click="openDevicePage()" class="weui-grid js_grid">
				<div class="weui-grid__icon">
					<img src="${pageContext.request.contextPath}/statics/imgs/icon_nav_cell.png" alt="">
				</div>
				<p class="weui-grid__label">
					设备信息
				</p>
			</a>
			<a @click="openScanPage()" class="weui-grid js_grid">
				<div class="weui-grid__icon">
					<img src="${pageContext.request.contextPath}/statics/imgs/icon_nav_cell.png" alt="">
				</div>
				<p class="weui-grid__label">
					扫码接口
				</p>
			</a>
			<a @click="openNetworkPage()" class="weui-grid js_grid">
				<div class="weui-grid__icon">
					<img src="${pageContext.request.contextPath}/statics/imgs/icon_nav_cell.png" alt="">
				</div>
				<p class="weui-grid__label">
					设备网络
				</p>
			</a>
			<a @click="openWebviewPage()" class="weui-grid js_grid">
				<div class="weui-grid__icon">
					<img src="${pageContext.request.contextPath}/statics/imgs/icon_nav_cell.png" alt="">
				</div>
				<p class="weui-grid__label">
					webview
				</p>
			</a>
			<a @click="openImagePage()" class="weui-grid js_grid">
				<div class="weui-grid__icon">
					<img src="${pageContext.request.contextPath}/statics/imgs/icon_nav_cell.png" alt="">
				</div>
				<p class="weui-grid__label">
					图片相关
				</p>
			</a>
			<a @click="openFilePage()" class="weui-grid js_grid">
				<div class="weui-grid__icon">
					<img src="${pageContext.request.contextPath}/statics/imgs/icon_nav_cell.png" alt="">
				</div>
				<p class="weui-grid__label">
					文件相关
				</p>
			</a>
			<a @click="openAudioPage()" class="weui-grid js_grid">
				<div class="weui-grid__icon">
					<img src="${pageContext.request.contextPath}/statics/imgs/icon_nav_cell.png" alt="">
				</div>
				<p class="weui-grid__label">
					音频接口
				</p>
			</a>
			<a @click="openVideoPage()" class="weui-grid js_grid">
				<div class="weui-grid__icon">
					<img src="${pageContext.request.contextPath}/statics/imgs/icon_nav_cell.png" alt="">
				</div>
				<p class="weui-grid__label">
					视频接口
				</p>
			</a>
			<a @click="openLocationPage()" class="weui-grid js_grid">
				<div class="weui-grid__icon">
					<img src="${pageContext.request.contextPath}/statics/imgs/icon_nav_cell.png" alt="">
				</div>
				<p class="weui-grid__label">
					地理位置
				</p>
			</a>
			<a @click="openSharePage()" class="weui-grid js_grid">
				<div class="weui-grid__icon">
					<img src="${pageContext.request.contextPath}/statics/imgs/icon_nav_cell.png" alt="">
				</div>
				<p class="weui-grid__label">
					分享接口
				</p>
			</a>
		</div>
	</div>
	<div class="page__ft"></div>
</div>
</body>

<script type="text/javascript">
	$(function(){
		var vm = new Vue({
			el: "#page-wrapper",
			data: {},
			methods: {

				openUserPage: function(){
                    workplat.window.open ({
                        url:serverurl+"/user",
                        title:"用户信息",
                        background:"#000000",
						close:function(data){
							//close为回调函数，当被打开的窗口关闭时，会调用这个函数
							//data为被关闭窗口回传的数据，json格式
						}
					});
                },

                openDevicePage: function(){
                    workplat.window.open ({
                        url:serverurl+"/device",
                        title:"设备信息",
                        background:"#000000",
                        close:function(data){
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
				},

                openScanPage: function(){
                    workplat.window.open ({
                        url:serverurl+"/scan",
                        title:"扫码接口",
                        background:"#000000",
                        close:function(data){
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
                },

				openNetworkPage: function(){
                    workplat.window.open ({
                        url:serverurl+"/network",
                        title:"设备网络",
                        background:"#000000",
                        close:function(data){
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
				},

                openWebviewPage: function(){
                    workplat.window.open ({
                        url:serverurl+"/webview",
                        title:"webview",
                        background:"#000000",
                        close:function(data){
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
                },

                openImagePage: function(){
                    workplat.window.open ({
                        url:serverurl+"/image",
                        title:"图片接口",
                        background:"#000000",
                        close:function(data){
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
                },

                openLocationPage: function(){
                    workplat.window.open ({
                        url:serverurl+"/location",
                        title:"地理位置",
                        background:"#000000",
                        close:function(data){
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
                },

                openSharePage: function(){
                    workplat.window.open ({
                        url:serverurl+"/share",
                        title:"分享接口",
                        background:"#000000",
                        close:function(data){
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
                },

                openAudioPage: function(){
                    workplat.window.open ({
                        url:serverurl+"/audio",
                        title:"音频接口",
                        background:"#000000",
                        close:function(data){
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
                },

                openVideoPage: function(){
                    workplat.window.open ({
                        url:serverurl+"/video",
                        title:"视频接口",
                        background:"#000000",
                        close:function(data){
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
                },

                openFilePage: function(){
                    workplat.window.open ({
                        url:serverurl+"/file",
                        title:"文件接口",
                        background:"#000000",
                        close:function(data){
                            //close为回调函数，当被打开的窗口关闭时，会调用这个函数
                            //data为被关闭窗口回传的数据，json格式
                        }
                    });
                }

			},
			mounted: function(){}
		});
	});
</script>

</html>
