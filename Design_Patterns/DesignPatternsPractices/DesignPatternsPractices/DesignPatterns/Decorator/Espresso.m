//
//  Espresso.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-14.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Espresso.h"

@implementation Espresso

- (id)init
{
    if (self = [super init]) {
        description = [[NSString stringWithFormat:@"Espresso"] retain];
    }
    return self;
}


- (double)cost
{
    return 1.99f;
    
}

@end
