//
//  SecondController.m
//  TimerTest
//
//  Created by Richard on 2018/5/23.
//  Copyright © 2018年 Richard. All rights reserved.
//

#import "SecondController.h"
#import "NSTimer+WeakTimer.h"
#import "WeakTimerTarget.h"

@interface SecondController ()
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation SecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 100, 100);
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
//    self.timer = [NSTimer timerWithTimeInterval:.5 repeats:YES handler:^{
//        NSLog(@"哈哈哈");
//    } ];
    self.timer = [WeakTimerTarget timerWithTimeInterval:0.5 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
    
}

- (void)btnClicked {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dealloc{
    [self.timer invalidate];
}

- (void)timerAction{
    NSLog(@"嘿嘿嘿");
}

@end
