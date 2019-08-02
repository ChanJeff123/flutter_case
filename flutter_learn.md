# 搭建flutter环境

[搭建环境](https://flutter-io.cn/docs/get-started/install)  
下载SDK解压后

## 设置环境变量
将flutter\bin 的全路径添加到环境变量 PATH 中
另外加2个
>export PUB_HOSTED_URL=https://pub.flutter-io.cn  
>export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
手动更新环境变量
要在终端运行 flutter 命令， 你需要添加以下环境变量到系统PATH：

转到 “控制面板>用户帐户>用户帐户>更改我的环境变量”
在“用户变量”下检查是否有名为“Path”的条目:
如果该条目存在, 追加 flutter\bin的全路径，使用 ; 作为分隔符.
如果条目不存在, 创建一个新用户变量 Path ，然后将 flutter\bin的全路径作为它的值.
在“用户变量”下检查是否有名为”PUB_HOSTED_URL”和”FLUTTER_STORAGE_BASE_URL”的条目，如果没有，也添加它们。
重启Windows以应用此更改
检查安装问题
> flutter doctor  

## vscode加插件flutter ,dart ,Flutter Widget Snippets
加完插件 重启，运行CTRL+P
”>“
运行 doctor run
# 创建一个加web项目
>flutter create --web newname

## 运行示范项目
到项目目录下  
>cd newname  

在chrome浏览器上运行调试  

>flutter run -d chrome  

手机端
在您的设备上启用 开发人员选项 和 USB调试 。详细说明可在Android文档中找到。  
使用USB将手机插入电脑。如果您的设备出现提示，请授权您的计算机访问您的设备。  
在终端中，运行 flutter devices 命令以验证Flutter识别您连接的Android设备。  
运行启动您的应用程序 flutter run。
# Flutter之MaterialApp使用详解
[Flutter之MaterialApp使用详解](https://www.jianshu.com/p/1d44ae246652)

## 22个参数
常用的  
1.home  
进入程序后显示的第一个页面,传入的是一个Widget，但实际上这个Widget需要包裹一个Scaffold以显示该程序使用Material Design风格  

2.title  
该标题出现在  
Android：任务管理器的程序快照之上  
IOS: 程序切换管理器中  

3.routes  
声明程序中有哪个通过Navigation.of(context).pushNamed跳转的路由
参数以键值对的形式传递  
key:路由名字  
value:对应的Widget  

4.initialRoute  
初始路由，当用户进入程序时，自动打开对应的路由。
(home还是位于一级)
传入的是上面routes的key
跳转的是对应的Widget（如果该Widget有Scaffold.AppBar,并不做任何修改，左上角有返回键）  

5.theme  
应用程序的主题，各种的定制颜色都可以设置，用于程序主题切换  
APPBAR和按键同意颜色设置  

6.builder  
当构建一个Widget前调用  
一般做字体大小，方向，主题颜色等配置  


# app应用名称 图标icon 启动页画面 的修改



## 应用名称
Android 是在 android ▸  app ▸  src ▸  main ▸  AndroidManifest.xml 中修改android:label="XXX";  
iOS 在 ios ▸  Runner ▸  Info.plist 中修改CFBundleName对应的Value

## 图标

AndroidManifest.xml
  <application
        android:name="io.flutter.app.FlutterApplication"
        android:label="耦荷DEMO"
        android:icon="@mipmap/logo">
        <!-- 已经修改的 -->

Android 在android ▸  app ▸  src ▸ res ▸ mipmap-... 文件夹中替换相应图片  
iOS 在 ios ▸  Runner ▸ Assets.xcassets ▸ AppIcon.appiconset文件夹中替换相应尺寸的图片， 如果使用不同的文件名，那还必须更新同一目录中的Contents.json文件。

## 启动图片


Android 在android ▸  app ▸  src ▸ res ▸ drawable ▸ launch_background.xml 通过自定义drawable来实现自定义启动界面。  
iOS 在 ios ▸  Runner ▸ Assets.xcassets ▸ LaunchImage.imageset文件夹中替换相应尺寸的图片， 如果使用不同的文件名，那还必须更新同一目录中的Contents.json文件。


# 连接数据库
挂在aws的phpmyadmin 连接RDS  
服务端放php文件



# 资源站

[资源包](https://pub.dev)  
[中文站1](https://flutterchina.club/)  
[中文站2](https://flutter-io.cn/docs)  