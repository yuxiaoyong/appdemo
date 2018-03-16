# Demo介绍
    此项目是workplat移动开放平台的接入样例，项目源码中提供了用户身份的对接与API网页接口的调用示例。

# 相关文档
[API接口文档.docx](https://github.com/yuxiaoyong/appdemo/blob/master/doc/API接口文档.docx?raw=true)<br>
[API网页接口.docx](https://github.com/yuxiaoyong/appdemo/blob/master/doc/API网页接口.docx?raw=true)<br>
[应用开发接入指南.docx](https://github.com/yuxiaoyong/appdemo/blob/master/doc/应用开发接入指南.docx?raw=true)<br>

# 项目打包、运行
``` lua
mvn clean package
java -jar appdemo-1.0-SNAPSHOT.war
```

访问地址：
http://localhost:8090/index

![项目首页](doc/images/index.png)

# 应用接入
后台登录地址：http://api.workplat.com:8080/wpapp-management/login/index <br>
登录用户：admin@taicang.gov.cn <br>
登录密码：111111 <br>

> 打开应用管理界面
![应用管理界面](doc/images/app1.png)
> 打开添加应用界面
点击 "添加应用" 按钮
![应用添加界面](doc/images/app2.png)
