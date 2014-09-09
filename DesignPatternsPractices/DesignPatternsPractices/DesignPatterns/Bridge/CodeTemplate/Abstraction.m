//
//  Abstraction.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-6.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Abstraction.h"

@implementation Abstraction

@synthesize implementor = mImplementor;

- (void)operation
{
    [mImplementor operation];
}

@end
