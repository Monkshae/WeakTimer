//
//  NSTimer+WeakTimer.m
//  TimerTest
//
//  Created by Richard on 2018/5/23.
//  Copyright © 2018年 Richard. All rights reserved.
//

#import "NSTimer+WeakTimer.h"

@implementation NSTimer (WeakTimer)

+ (NSTimer *)timerWithTimeInterval:(NSTimeInterval) interval repeats:(BOOL) repeats handler:(void (^) (void)) handler {
    NSTimer *timer = [NSTimer timerWithTimeInterval:interval target:self selector:@selector(handlerBlockInvoke:) userInfo:[handler copy] repeats:repeats];
    return timer;
}

+ (void)handlerBlockInvoke:(NSTimer *)timer{
    void (^block)(void) = timer.userInfo;
    if (block) {
        block();
    }
}
@end
