//
//  RedHeadDuck.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "RedHeadDuck.h"
#import "FlyWithWings.h"
#import "Quack.h"

@implementation RedHeadDuck

- (id)init
{
    if (self = [super init]) {
        
        flyBehavior = [[FlyWithWings alloc] init];
        quackBehavior = [[Quack alloc] init];
        
    }
    return self;
}

- (void)display
{
    NSLog(@"I'm a real Red Headed duck");
}

@end
