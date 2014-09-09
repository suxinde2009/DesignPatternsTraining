//
//  FactoryMethod_CreatorB.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "FactoryMethod_CreatorB.h"

@implementation FactoryMethod_CreatorB

- (FactoryMethod_Product *)factoryMethod
{
    return [[[FactoryMethod_ConcreteProductB alloc] init] autorelease];
}

@end
