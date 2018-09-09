//
//  ModelDuck.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ModelDuck.h"
#import "FlyNoWay.h"
#import "Quack.h"

@implementation ModelDuck

- (id)init
{
    if (self = [super init]) {
        flyBehavior = [[FlyNoWay alloc] init];
        quackBehavior = [[Quack alloc] init];
    }
    return self;
}


- (void)display
{
    NSLog(@"I'm a model duck");
}

@end
