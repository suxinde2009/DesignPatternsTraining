//
//  State_Context.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-11.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "State_Context.h"

@implementation State_Context

- (id)initWithState:(id<State_State>)state
{
    if (self = [super init]) {
        [self setState:state];
    }
    return self;
}

- (void)dealloc
{
    if (mState) {
        [mState release];
        mState = nil;
    }
    [super dealloc];
}

- (id<State_State>)state
{
    return mState;
}

- (void)setState:(id<State_State>)state
{
    if (mState) {
        [mState release];
        mState = nil;
    }
    mState = [state retain];
    
    NSLog(@"State: %@", NSStringFromClass([state class]));
}

- (void)request
{
    [mState handle:self];
}

@end
