//
//  WeakTimerTarget.h
//  TimerTest
//
//  Created by Richard on 2018/5/23.
//  Copyright © 2018年 Richard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeakTimerTarget : NSObject
@property (nonatomic, assign) SEL selector;
@property (nonatomic, weak) NSTimer *timer;
@property (nonatomic, weak) id target;

+ (NSTimer *)timerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo;

@end
