//
//  YGCrashHelper.m
//  YGCrashHelper
//
//  Created by 许亚光 on 2018/8/6.
//  Copyright © 2018年 xuyagung. All rights reserved.
//

#import "YGCrashHelper.h"

@implementation YGCrashHelper

+ (void)yg_crashHandle {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [NSObject yg_crashHandle];
        [NSArray yg_crashHandle];
        [NSMutableArray yg_crashHandle];
        [NSDictionary yg_crashHandle];
        [NSMutableDictionary yg_crashHandle];
        [NSString yg_crashHandle];
        [NSMutableString yg_crashHandle];
        [NSMutableAttributedString yg_crashHandle];
    });
}

+ (void)yg_setIgnoreClassArray:(NSArray<NSString *> *)array {
    [NSObject yg_setIgnoreClassArrayM:array];
}

+ (void)yg_setIgnoreMethodArray:(NSArray<NSString *> *)array {
    [NSObject yg_setIgnoreMethodArrayM:array];
}

@end
