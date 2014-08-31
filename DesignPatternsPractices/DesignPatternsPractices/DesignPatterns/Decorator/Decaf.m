//
//  Decaf.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-14.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Decaf.h"

@implementation Decaf

- (id)init
{
    if (self = [super init]) {
        description = [[NSString stringWithFormat:@"Decaf Coffee"] retain];
    }
    return self;
}


- (double)cost
{
    return 1.05f;
    
}

@end
