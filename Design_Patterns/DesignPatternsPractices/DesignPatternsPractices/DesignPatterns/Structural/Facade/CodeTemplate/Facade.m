//
//  Facade.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-7.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Facade.h"

@implementation Facade

- (void)dealloc
{
    [mSubSystemOne release];
    [mSubSystemTwo release];
    [mSubSystemThree release];
    [mSubSystemFour release];
    
    [super dealloc];
}

- (id)init
{
    if (self = [super init]) {
        mSubSystemOne = [[SubSystemOne alloc] init];
        mSubSystemTwo = [[SubSystemTwo alloc] init];
        mSubSystemThree = [[SubSystemThree alloc] init];
        mSubSystemFour = [[SubSystemFour alloc] init];
    }
    return self;
}

- (void)methodA
{
    NSLog(@"MethodA---");
    [mSubSystemOne methodOne];
    [mSubSystemTwo methodTwo];
    [mSubSystemFour methodFour];
}

- (void)methodB
{
    NSLog(@"MethodB---");
    [mSubSystemTwo methodTwo];
    [mSubSystemThree methodThree];
}

@end
