//
//  FactoryMethod_CreatorA.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "FactoryMethod_CreatorA.h"

@implementation FactoryMethod_CreatorA

- (FactoryMethod_Product *)factoryMethod
{
    return [[[FactoryMethod_ConcreteProductA alloc] init] autorelease];
}

@end
