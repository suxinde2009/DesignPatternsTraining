//
//  Singleton.m
//  DesignPatternsPractices
//
//  Created by p2pmsg on 14-9-1.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (instancetype)sharedInstance
{
    static Singleton *__sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __sharedInstance = [[[self class] alloc] init];
    });
    return __sharedInstance;
    
    /*
    if (__sharedInstance == nil) {
        @synchronized(self) {
            if (__sharedInstance == nil) {
                __sharedInstance = [[[self class] alloc] init];
            }
        }
    }
    return __sharedInstance;
     */
}

- (void)operate
{
    NSLog(@"%s", __func__);
}

@end
