//
//  DecoratorCPPTestCase.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-8-14.
//  Copyright (c) 2014年 com.skyprayer. All rights reserved.
//

#import "DecoratorCPPTestCase.h"

@implementation DecoratorCPPTestCase

+ (void)mainTest
{
    Component* pComponent = new ConcreteComponent();
    ConcreteDecorator* pConDecorator = new ConcreteDecorator();
    pConDecorator->setComponent(pComponent);
    pConDecorator->operation();
    pConDecorator->addBehavior();
}

@end
