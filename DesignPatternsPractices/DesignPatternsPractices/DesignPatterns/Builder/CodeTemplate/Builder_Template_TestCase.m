//
//  Builder_Template_TestCase.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-8.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Builder_Template_TestCase.h"

@implementation Builder_Template_TestCase

+ (void)mainTest
{
    // Create director and builders
    Director *director = [[Director alloc] init];
    
    Builder *b1 = [[ConcreteBuilder1 alloc] init];
    Builder *b2 = [[ConcreteBuilder2 alloc] init];
    
    // Construct two products
    [director construct:b1];
    Product *p1 = [b1 getResult];
    [p1 show];
    
    [director construct:b2];
    Product *p2 = [b2 getResult];
    [p2 show];
}

@end
