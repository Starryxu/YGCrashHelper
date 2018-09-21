//
//  ViewController.m
//  YGCrashHelper
//
//  Created by 许亚光 on 2018/8/6.
//  Copyright © 2018年 xuyagung. All rights reserved.
//

#import "ViewController.h"
#import "YGCrashHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"点我啊" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 100, 100, 40);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(btnaction:) forControlEvents:UIControlEventTouchUpInside];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notifaction:) name:YGCrashNotificationName object:nil];
    
    NSArray *arr = @[@"d"];
    NSLog(@"%@",arr[10]);
    
//    [self test1];
    [self test2];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSMutableArray *arrM = [NSMutableArray array];
    [arrM addObject:@"sfsd"];
    [arrM insertObject:@"dfhsdj" atIndex:3];
    NSLog(@"%@",[arrM objectAtIndexedSubscript:4]);
    NSLog(@"%@",[arrM subarrayWithRange:NSMakeRange(5, 10)]);
}

- (void)test1 {
    NSArray *arr = @[@"d"];
    NSLog(@"%@",arr[10]);
}

- (void)test2 {
    NSDictionary *dict = [NSDictionary dictionaryWithObjects:@[@"value1",@"value2"] forKeys:@[@"key"]];
    NSLog(@"%@",dict);
}

- (void)test3 {
    NSArray *arr = @[];
    NSLog(@"%@",arr[2]);
}

#pragma mark notifaction
- (void)notifaction:(NSNotification *)notifation {
//    NSLog(@"%@",notifation.userInfo);
}

@end
