//
//  AppDelegate.m
//  WxPay
//
//  Created by LiHaozhen on 15/5/21.
//  Copyright (c) 2015年 LiHaozhen. All rights reserved.
//

#import "AppDelegate.h"
#import "WxPayHelper.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return [[WxPayHelper sharedInstance] handleURL:url];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    return [[WxPayHelper sharedInstance] handleURL:url];
}
@end
