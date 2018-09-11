//
//  Duck.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FlyBehavior.h"
#import "QuackBehavior.h"

@interface Duck : NSObject
{
    id<FlyBehavior> flyBehavior;
    id<QuackBehavior> quackBehavior;
}


- (void)setFlyBehavior:(id<FlyBehavior> )fb;
- (void)setQuackBehavior:(id<QuackBehavior>)qb;

- (void)display;

- (void)performFly;
- (void)performQuack;
- (void)swim;

@end
