//
//  AbstractFactory_Template_TestCase.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-5.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "AbstractFactory_Template_TestCase.h"

#import "Client.h"
#import "ConcreteFactory1.h"
#import "ConcreteFactory2.h"

@implementation AbstractFactory_Template_TestCase

+ (void)mainTest
{
    id<AbstractFactory> factory1 = [[ConcreteFactory1 alloc] init];
    Client *client1 = [[Client alloc] initWithFactory:factory1];
    [client1 run];
    
    id<AbstractFactory> factory2 = [[ConcreteFactory2 alloc] init];
    Client *client2 = [[Client alloc] initWithFactory:factory2];
    [client2 run];
}

@end
