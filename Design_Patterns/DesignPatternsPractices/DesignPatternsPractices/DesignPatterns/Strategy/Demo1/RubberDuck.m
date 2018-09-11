//
//  RubberDuck.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "RubberDuck.h"

#import "FlyNoWay.h"
#import "Squeak.h"

@implementation RubberDuck

- (id)init
{
    if (self = [super init]) {
        
        flyBehavior = [[FlyNoWay alloc] init];
        quackBehavior = [[Squeak alloc] init];
    }
    return self;
}


- (void)display
{
    NSLog(@"I'm a rubber duckie");
}

@end
