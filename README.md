WXApi SDK v1.5
==============
WXApi SDK v1.5 helper
>[SDK 下载地址](http://pay.weixin.qq.com/wiki/doc/api/app.php?chapter=11_1)

Usage:
------
1.添加链接库 
SystemConfiguration.framework
libz.dylib
libsqlite3.0.dylib
libc++.dylib

2.添加预编译文件(如果已存在忽略)
File->New->File,选择 Other->PCH file -> 保存（如 `PrefixHeader.pch`)
添加如下内容
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

3.设置预编译文件
Target->Build Settings->Apple LLVM 6.0 - Language,将
Precompile Prefix Header -> YES
Prefix Header -> 预编译文件的路径 (如 $(SRCROOT)/$(PROJECT_NAME)/PrefixHeader.pch)

4.设置回调处理
打开 `AppDelegate.m`，加入
#import "WxPayHelper.h"

在 - application:openURL:sourceApplication:annotation: 方法中，添加
return [[WxPayHelper sharedInstance] handleURL:url]
5.打开`WxPayConfigure.h`文件
编辑需要修改的宏定义

6.打开`WxPayHelper.m`文件找到`payWithOrderName:price:completion`方法
编辑获取支付参数的网络请求
根据服务器参数的字段定义，改写PayReq的初始化
