//
//  ConcreteFactory2.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-5.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ConcreteFactory2.h"
#import "ProductA2.h"
#import "ProductB2.h"

@implementation ConcreteFactory2

- (id<AbstractProductA>)createProductA
{
    return [[ProductA2 alloc] init];
}

- (id<AbstractProductB>)createProductB
{
    return [[ProductB2 alloc] init];
}

@end
