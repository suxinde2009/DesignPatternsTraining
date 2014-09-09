//
//  Strategy_Context.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-10.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Strategy_Context.h"

@implementation Strategy_Context

- (void)dealloc
{
    if (mStrategy) {
        [mStrategy release];
        mStrategy = nil;
    }
    [super dealloc];
}

- (id)initWithStrategy:(Strategy_Strategy *)strategy
{
    if (self = [super init]) {
        mStrategy = [strategy retain];
    }
    return self;
}

- (void)contextInterface
{
    [mStrategy algorithmInterface];
}

@end
