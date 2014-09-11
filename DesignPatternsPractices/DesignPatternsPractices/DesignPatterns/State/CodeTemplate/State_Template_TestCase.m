//
//  State_Template_TestCase.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-11.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "State_Template_TestCase.h"
#import "State_ConcreteState.h"
#import "State_Context.h"

@implementation State_Template_TestCase

+ (void)mainTest
{
    State_ConcreteStateA *state = [[[State_ConcreteStateA alloc] init] autorelease];
    State_Context *context = [[State_Context alloc] initWithState:state];
    [context request];
    [context request];
    [context request];
    [context request];
    
    [context release];
}

@end
