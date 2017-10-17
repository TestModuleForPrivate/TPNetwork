//
//  YYSHConstFile.m
//  YYSHDemo
//
//  Created by ccpg_it on 16/11/24.
//  Copyright © 2016年 ccpg_it. All rights reserved.
//  存放常用的常量字符串或者基本数据类型

#import "EWConstFile.h"

@implementation EWConstFile
NSString * const YYSHBarbuttonDidRepeatClickNotification = @"YYSHBarbuttonDidRepeatClickNotification";
NSInteger const tarBarButtonCount = 3;//设置控制器的个数
NSInteger const tarBarButtonTag = 1000;
/**社商一应云*/
NSString *const EWHostStringForBusiness = @"http://int.ening.cn";
/**物业*/
NSString *const EWHostStringForProperty = @"http://int4charge.ening.cn";
/**智能*/
NSString *const EWHostStringForIntelligence = @"http://192.168.2.205:8081";//@"http://int.einwin.com";

#pragma mark - 测试环境
/**社商一应云*/
 // @"http://itssy.einwin.com:8000";
/**物业收费云*/
//  @"http://192.168.2.219:8082";
/**智能*/
//  @"http://testint.einwin.com:8081";

NSString *const KEWNetworkStatus = @"EWNetworkStatus";

NSString *const EWRequestMethodKey = @"requestMethod";

NSString *const EWRequestURLKey = @"requestURL";

NSString *const EWRequestDictKey = @"paramDict";

NSString *const EWRequestCacheTimeKey = @"cacheTime";

NSString *const EWRequestMemberCodeKey = @"memberCode";

NSString *const EWRequestHeaderDictKey = @"EWRequestHeaderDict";

NSString *const EWRequestTypeGet = @"get";

NSString *const EWRequestTypePost = @"post";

NSString *const EWUploadImageKey = @"EWUploadImage";

NSString *const KEWRequestByYTK = @"EWRequestByYTK";

NSString *const KEWRequestByAFN = @"EWRequestByAFN";

NSString *const EWRequestAnimationTarget = @"EWRequestAnimationTarget";

NSString *const EWShowHudAnimation = @"EWShowHudAnimation";

NSString *const EWHideHudAtWindow = @"EWHideHudAtWindow";

@end
