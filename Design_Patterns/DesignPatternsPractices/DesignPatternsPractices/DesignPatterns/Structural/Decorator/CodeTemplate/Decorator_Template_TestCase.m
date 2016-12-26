//
//  Decorator_Template_TestCase.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Decorator_Template_TestCase.h"

@implementation Decorator_Template_TestCase

+ (void)mainTest
{
    Decorator_ConcreteComponent *c = [[[Decorator_ConcreteComponent alloc]  init] autorelease];
    ConcreteDecoratorA *d1 = [[[ConcreteDecoratorA alloc] init] autorelease];
    ConcreteDecoratorB *d2 = [[ConcreteDecoratorB alloc] init];
    
    [d1 setComponent:c];
    [d2 setComponent:d1];
   
    [d2 operation];
    [d2 release];
    
}

@end
