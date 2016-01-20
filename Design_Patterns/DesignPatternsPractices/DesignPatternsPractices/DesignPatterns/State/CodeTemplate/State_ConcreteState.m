//
//  State_ConcreteState.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-11.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "State_ConcreteState.h"

@implementation State_ConcreteStateA

- (void)handle:(State_Context *)context
{
    State_ConcreteStateB *state = [[[State_ConcreteStateB alloc] init] autorelease];
    [context setState:state];
}

@end


@implementation State_ConcreteStateB

- (void)handle:(State_Context *)context
{
    State_ConcreteStateA *state = [[[State_ConcreteStateA alloc] init] autorelease];
    [context setState:state];
}

@end