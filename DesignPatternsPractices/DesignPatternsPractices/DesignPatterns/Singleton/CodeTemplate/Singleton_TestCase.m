//
//  Singleton_Testcases.m
//  DesignPatternsPractices
//
//  Created by p2pmsg on 14-9-1.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Singleton_TestCase.h"

@implementation Singleton_TestCase

+ (void)mainTest
{
    Singleton *singleton = [Singleton sharedInstance];
    [singleton operate];
}

@end
