//
//  NSTimer+WeakTimer.h
//  TimerTest
//
//  Created by Richard on 2018/5/23.
//  Copyright © 2018年 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (WeakTimer)
+ (NSTimer *)timerWithTimeInterval:(NSTimeInterval) interval repeats:(BOOL) repeats handler:(void (^) (void)) handler;
@end
