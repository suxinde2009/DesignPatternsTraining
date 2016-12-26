//
//  MallardDuck.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "MallardDuck.h"
#import "Quack.h"
#import "FlyWithWings.h"

@implementation MallardDuck

- (id)init
{
    if (self = [super init]) {
        
        quackBehavior = [[Quack alloc] init];
        flyBehavior = [[FlyWithWings alloc] init];
        
    }
    return self;
}

- (void)display
{
    NSLog(@"I'm a real Mallard duck");
}

@end
