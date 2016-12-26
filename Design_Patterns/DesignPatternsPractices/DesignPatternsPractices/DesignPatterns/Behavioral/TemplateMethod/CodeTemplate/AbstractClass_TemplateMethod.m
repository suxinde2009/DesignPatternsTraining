//
//  AbstractClass_TemplateMethod.m
//  DesignPatternsPractices
//
//  Created by admin on 14-9-1.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "AbstractClass_TemplateMethod.h"

@implementation AbstractClass_TemplateMethod

- (void)methodA {}
- (void)methodB {}

- (void)templateMethod
{
    [self methodA];
    [self methodB];
}

@end
