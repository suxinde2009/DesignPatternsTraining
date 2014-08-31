//
//  Duck.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Duck.h"

@implementation Duck

- (void)setFlyBehavior:(id<FlyBehavior>)fb
{
    if (flyBehavior) {
        [flyBehavior release];
        flyBehavior = nil;
    }
    
    flyBehavior = [fb retain];
}

- (void)setQuackBehavior:(id<QuackBehavior>)qb
{
    if (quackBehavior) {
        [quackBehavior release];
        quackBehavior = nil;
    }
    quackBehavior = [qb retain];
}

- (void)display
{

}

- (void)performFly
{
    [flyBehavior fly];
}

- (void)performQuack
{
    [quackBehavior quack];
}

- (void)swim
{
    NSLog(@"All ducks float, even decoys!");
}



@end
