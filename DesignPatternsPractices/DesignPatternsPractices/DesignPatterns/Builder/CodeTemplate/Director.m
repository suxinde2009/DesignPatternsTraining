//
//  Director.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-8.
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
