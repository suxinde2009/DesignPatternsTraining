//
//  Strategy_Template_TestCase.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-10.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Strategy_Template_TestCase.h"

@implementation Strategy_Template_TestCase

+ (void)mainTest
{
    Strategy_Context *context = nil;
    Strategy_Strategy *strategy = nil;
    strategy = [[[Strategy_ConcreteStrategyA alloc] init] autorelease];
    context = [[[Strategy_Context alloc] initWithStrategy:strategy] autorelease];
    [context contextInterface];
    
    strategy = [[[Strategy_ConcreteStrategyB alloc] init] autorelease];
    context = [[[Strategy_Context alloc] initWithStrategy:strategy] autorelease];
    [context contextInterface];
    
    strategy = [[[Strategy_ConcreteStrategyC alloc] init] autorelease];
    context = [[[Strategy_Context alloc] initWithStrategy:strategy] autorelease];
    [context contextInterface];
    
}


@end
