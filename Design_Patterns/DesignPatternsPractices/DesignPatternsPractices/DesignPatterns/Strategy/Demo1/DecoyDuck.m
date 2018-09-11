//
//  DecoyDuck.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "DecoyDuck.h"

#import "FlyNoWay.h"
#import "MuteQuack.h"

@implementation DecoyDuck

- (id)init
{
    if (self = [super init]) {
        [self setFlyBehavior:[[[FlyNoWay alloc] init] autorelease]];
        [self setQuackBehavior:[[[MuteQuack alloc] init] autorelease]];
    }
    return self;
}

@end
