//
//  ConcreteDecoratorB.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ConcreteDecoratorB.h"

@implementation ConcreteDecoratorB

- (void)operation
{
    [super operation];
    [self addedBehavior];
    NSLog(@"[ConcreteDecoratorB operation]");
}

- (void)addedBehavior
{
    // Todo something
}

@end
