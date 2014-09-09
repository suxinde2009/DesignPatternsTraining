//
//  ConcreteFactory1.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-5.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ConcreteFactory1.h"
#import "ProductA1.h"
#import "ProductB1.h"

@implementation ConcreteFactory1

- (id<AbstractProductA>)createProductA
{
    return [[[ProductA1 alloc] init] autorelease];
}

- (id<AbstractProductB>)createProductB
{
    return [[[ProductB1 alloc] init] autorelease];
}

@end
