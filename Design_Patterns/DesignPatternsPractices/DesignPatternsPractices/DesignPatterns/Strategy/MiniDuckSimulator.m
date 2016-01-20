//
//  MiniDuckSimulator.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "MiniDuckSimulator.h"

#import "MallardDuck.h"
#import "RubberDuck.h"
#import "DecoyDuck.h"

#import "Duck.h"
#import "FlyNoWay.h"
#import "ModelDuck.h"
#import "FlyRocketPowered.h"

@implementation MiniDuckSimulator

+ (void)mainTest
{
    // Test1
    Duck *mallard = [[MallardDuck alloc] init];
    [mallard performQuack];
    [mallard performFly];

    Duck *model = [[ModelDuck alloc] init];
    [model performFly];
    [model setFlyBehavior:[[[FlyRocketPowered alloc] init] autorelease]];
    [model performFly];
    
    
    // Test2
    MallardDuck *mallard2 = [[MallardDuck alloc] init];
    RubberDuck *rubberDuck = [[RubberDuck alloc] init];
    DecoyDuck *decoy = [[DecoyDuck alloc] init];
    ModelDuck *modelDuck = [[ModelDuck alloc] init];
    
    [mallard2 performQuack];
    [rubberDuck performQuack];
    [decoy performQuack];
    
    [modelDuck performFly];
    [modelDuck setFlyBehavior:[[[FlyRocketPowered alloc] init] autorelease]];
    [modelDuck performFly];
    
}

@end
