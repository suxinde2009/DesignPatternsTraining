//
//  Bridge_Template_TestCase.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-6.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Bridge_Template_TestCase.h"

#import "Abstraction.h"
#import "Implementor.h"
#import "ConcreteImplementorA.h"
#import "ConcreteImplementorB.h"

@implementation Bridge_Template_TestCase

+ (void)mainTest
{
    Abstraction *ab  = [[Abstraction alloc] init];
    
    ab.implementor = [[[ConcreteImplementorA alloc] init] autorelease];
    [ab operation];
    
    ab.implementor = [[[ConcreteImplementorB alloc] init] autorelease];
    [ab operation];
    
}

@end
