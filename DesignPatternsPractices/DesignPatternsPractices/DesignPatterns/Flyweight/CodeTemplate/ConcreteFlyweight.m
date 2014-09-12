//
//  ConcreteFlyweight.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ConcreteFlyweight.h"

@implementation ConcreteFlyweight

- (void)operation:(int)extrinsicstate
{
    NSLog(@"ConcreteFlyweight: %d", extrinsicstate);
}

@end
