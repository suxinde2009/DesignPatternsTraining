//
//  DarkRoast.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-14.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "DarkRoast.h"

@implementation DarkRoast

- (id)init
{
    if (self = [super init]) {
        description = [[NSString stringWithFormat:@"Dark Roast Coffee"] retain];
    }
    return self;
}


- (double)cost
{
    return 0.99f;
    
}

@end
