//
//  Flyweight_Template_TestCase.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Flyweight_Template_TestCase.h"

#import "Flyweight.h"
#import "ConcreteFlyweight.h"
#import "UnsharedConcreteFlyweight.h"
#import "FlyweightFactory.h"

@implementation Flyweight_Template_TestCase

+ (void)mainTest
{
    // Arbitrary extrinsic state
    int extrinsicstate = 22;
    FlyweightFactory *factory = [[FlyweightFactory alloc] init];
    
    // Work with different flyweight instances
    Flyweight *fx = [factory getFlyweight:@"X"];
    [fx operation:(--extrinsicstate)];
    
    Flyweight *fy = [factory getFlyweight:@"Y"];
    [fy operation:(--extrinsicstate)];
    
    Flyweight *fz = [factory getFlyweight:@"Z"];
    [fz operation:(--extrinsicstate)];
    
    UnsharedConcreteFlyweight *fu = [[UnsharedConcreteFlyweight alloc] init];
    [fu operation:(--extrinsicstate)];
}

@end
