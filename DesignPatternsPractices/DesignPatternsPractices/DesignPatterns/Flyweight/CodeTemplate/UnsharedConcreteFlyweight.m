//
//  UnsharedConcreteFlyweight.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "UnsharedConcreteFlyweight.h"

@implementation UnsharedConcreteFlyweight

- (void)operation:(int)extrinsicstate
{
    NSLog(@"UnsharedConcreteFlyweight: %d", extrinsicstate);
}

@end
