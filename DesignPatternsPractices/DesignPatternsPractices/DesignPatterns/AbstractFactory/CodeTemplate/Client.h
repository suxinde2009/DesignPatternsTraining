//
//  Client.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-5.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractProductA.h"
#import "AbstractProductB.h"

#import "AbstractFactory.h"

@interface Client : NSObject
{
    id<AbstractProductA> mAbstractProductA;
    id<AbstractProductB> mAbstractProductB;
}

- (id)initWithFactory:(id<AbstractFactory>)factory;
- (void)run;

@end
