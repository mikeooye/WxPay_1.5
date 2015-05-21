//
//  WxPayHelper.h
//  WxPay
//
//  Created by LiHaozhen on 15/5/21.
//  Copyright (c) 2015年 LiHaozhen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WXApi.h"

@interface WxPayHelper : NSObject

+ (instancetype)sharedInstance;

/**
 *  处理微信客户端回调，在AppDelegate的`handleOpenURL`和`openURL`中
 *  添加此方法 `return [[WxPayHelper sharedInstance] handleURL:url];`
 */
- (BOOL)handleURL:(NSURL *)url;

/**
 *  发起支付
 *
 *  @param name       名称
 *  @param price      金额
 *  @param completion 回调处理
 */
- (void)payWithOrderName:(NSString *)name
                   price:(NSString *)price
              completion:(void(^)(PayResp *resp))completion;

@end
