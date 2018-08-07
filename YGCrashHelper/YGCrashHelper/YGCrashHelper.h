//
//  YGCrashHelper.h
//  YGCrashHelper
//
//  Created by 许亚光 on 2018/8/6.
//  Copyright © 2018年 xuyagung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YGCrashMethod.h"

#import "NSObject+Method.h"

#import "NSArray+Crash.h"
#import "NSMutableArray+Crash.h"
#import "NSDictionary+Crash.h"
#import "NSMutableDictionary+Crash.h"
#import "NSString+Crash.h"
#import "NSMutableString+Crash.h"
#import "NSMutableAttributedString+Crash.h"

@interface YGCrashHelper : NSObject

// 可以监听通知 YGCrashNotificationName 获取崩溃信息,以便于上传到自己的服务器


/**
 处理闪退:你可以在AppDelegate的didFinishLaunchingWithOptions方法中调用;
 全局生效,默认不启用;
 如果不需要全部替换,可单独调用各分类 + (void)yg_crashHandle 方法;
 */
+ (void)yg_crashHandle;

// 包含以上及未实现方法闪退处理
+ (void)yg_crashHandleAll;

/**
 处理忽略的类
 
 @param array 忽略的类字符串数组
 */
+ (void)yg_setIgnoreClassArray:(NSArray <NSString *>*)array;


/**
 处理忽略的方法
 
 @param array 忽略的方法字符创数组
 */
+ (void)yg_setIgnoreMethodArray:(NSArray <NSString *>*)array;


@end
