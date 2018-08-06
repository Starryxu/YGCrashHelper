//
//  NSObject+Method.h
//  YGCrashHelper
//
//  Created by 许亚光 on 2018/8/6.
//  Copyright © 2018年 xuyagung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
@interface NSObject (Method)
/**
 类方法交换
 
 @param originalSelector    原始类方法名
 @param newSelector         新类方法名
 */
+ (void)yg_exchangeClassMethod:(SEL)originalSelector withMethod:(SEL)newSelector;


/**
 实例方法交换
 
 @param originalSelector    原始实例方法名
 @param newSelector         新实例方法名
 */
+ (void)yg_exchangeInstanceMethod:(SEL)originalSelector withMethod:(SEL)newSelector;
@end
