//
//  ViewController.m
//  TimerTest
//
//  Created by Richard on 2018/5/23.
//  Copyright © 2018年 Richard. All rights reserved.
//

#import "ViewController.h"
#import "SecondController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClicked {
    SecondController * controller = [[SecondController alloc]init];
    [self presentViewController:controller animated:YES completion:nil];
}


@end
