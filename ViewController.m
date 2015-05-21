//
//  ViewController.m
//  WxPay
//
//  Created by LiHaozhen on 15/5/21.
//  Copyright (c) 2015年 LiHaozhen. All rights reserved.
//

#import "ViewController.h"
#import "WxPayHelper.h"

@interface ViewController ()

- (IBAction)wxPayAction:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)wxPayAction:(id)sender {
    
    [[WxPayHelper sharedInstance] payWithOrderName:@"测试支付" price:@"1.0" completion:^(PayResp *resp) {
       
        NSLog(@"支付结束");
    }];
}
@end
