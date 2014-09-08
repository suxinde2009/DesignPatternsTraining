//
//  Director.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-8.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Director.h"

@implementation Director

- (void)construct:(Builder *)builder
{
    [builder buildPartA];
    [builder buildPartB];
}

@end
