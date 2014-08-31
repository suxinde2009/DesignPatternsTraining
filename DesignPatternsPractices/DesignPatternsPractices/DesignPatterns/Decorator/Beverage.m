//
//  Beverage.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-14.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Beverage.h"

@implementation Beverage

- (void)dealloc
{
    [description release];
    [super dealloc];
}

- (id)init
{
    if (self = [super init]) {
        description = [[NSString stringWithFormat:@"Unknown Beverage"] retain];
    }
    return self;
}

- (NSString *)getDescription
{
    return description;
}

- (double)cost
{
    double c = 0.0;
    return c;
}


@end
