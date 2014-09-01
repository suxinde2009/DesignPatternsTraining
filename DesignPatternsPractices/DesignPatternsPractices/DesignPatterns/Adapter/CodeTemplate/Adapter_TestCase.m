//
//  Adapter_TestCase.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-1.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Adapter_TestCase.h"

@implementation Adapter_TestCase

+ (void)mainTest
{
    id<Target> target = [[Adapter alloc] init];
    [target request];
}

@end
