//
//  TemplateMethod_TestCase.m
//  DesignPatternsPractices
//
//  Created by admin on 14-9-1.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "TemplateMethod_TestCase.h"

@implementation TemplateMethod_TestCase

+ (void)mainTest
{
    ConcreteClass_TemplateMethod *c = [[ConcreteClass_TemplateMethod alloc] init];
    [c templateMethod];
}

@end
