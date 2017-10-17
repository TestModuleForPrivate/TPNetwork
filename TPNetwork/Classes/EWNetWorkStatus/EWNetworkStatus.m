//
//  ENNetworkStatus.m
//  YYZN
//
//  Created by ccpg_it on 17/1/17.
//  Copyright © 2017年 ccpg_it. All rights reserved.
//  返回网络状态

#import "EWNetworkStatus.h"
#import "NSUserDefaults+ValueOperation.h"
#import "AFNetworking.h"
@implementation EWNetworkStatus

+ (void)startMonitoring{
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    
    __block NSString *networkStatus = [NSString string];
    // 2.设置网络状态改变后的处理
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        // 当网络状态改变了, 就会调用这个block
        switch (status) {
                
            case AFNetworkReachabilityStatusUnknown:
                // 未知网络
                NSLog(@"未知网络");
                networkStatus = EWNETWORKSTATUSUNKOWN;
                [self recordNetworkStatus:networkStatus];
                break;
            case AFNetworkReachabilityStatusNotReachable:
                // 没有网络(断网)
                NSLog(@"没有网络");
                networkStatus = EWNETWORKSTATUSNOTREACH;
                [self recordNetworkStatus:networkStatus];
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                // 手机自带网络
                networkStatus = EWNETWORKSTATUSWWAN;
                [self recordNetworkStatus:networkStatus];
                NSLog(@"手机自带网络");
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                // WIFI
                NSLog(@"WIFI");
                networkStatus = EWNETWORKSTATUSWIFI;
                [self recordNetworkStatus:networkStatus];
                break;
        }
    }];
    
    // 3.开始监控
    [manager startMonitoring];
}

/**
 *     保存网络状态
 */
+ (void)recordNetworkStatus:(NSString *)status{
    [NSUserDefaults setValueWithFlag:KEWNetworkStatus Value:status];
}
/**
 *     判断网络状态
 */
+ (BOOL)networkOn{
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:KEWNetworkStatus] isEqualToString:EWNETWORKSTATUSUNKOWN] || [[[NSUserDefaults standardUserDefaults] objectForKey:KEWNetworkStatus] isEqualToString:EWNETWORKSTATUSNOTREACH]) {
        return NO;
    }else{
        return YES;
    }
}
@end
