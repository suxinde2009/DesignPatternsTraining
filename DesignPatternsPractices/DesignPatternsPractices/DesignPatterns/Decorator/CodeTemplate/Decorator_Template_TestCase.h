//
//  Decorator_Template_TestCase.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

// http://www.dofactory.com/net/decorator-design-pattern

#import <Foundation/Foundation.h>
#import "TestCaseInterface.h"
#import "Decorator_Component.h"
#import "Decorator_ConcreteComponent.h"
#import "ConcreteDecoratorA.h"
#import "ConcreteDecoratorB.h"


@interface Decorator_Template_TestCase : NSObject <TestCaseInterface>

@end
