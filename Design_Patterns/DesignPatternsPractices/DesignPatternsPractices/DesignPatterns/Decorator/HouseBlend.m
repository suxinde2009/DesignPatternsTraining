//
//  HouseBlend.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-14.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "HouseBlend.h"

@implementation HouseBlend

- (id)init
{
    if (self = [super init]) {
        description = [[NSString stringWithFormat:@"House Blend Coffee"] retain];
    }
    return self;
}


- (double)cost
{
    return 0.89f;
    
}

@end
