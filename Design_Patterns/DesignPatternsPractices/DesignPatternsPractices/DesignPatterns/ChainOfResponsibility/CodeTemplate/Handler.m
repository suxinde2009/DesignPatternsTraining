//
//  Handler.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-4.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Handler.h"

@implementation Handler

- (void)setSuccessor:(Handler *)successor
{
    if (mSuccessor) {
        [mSuccessor release];
        mSuccessor = nil;
    }
    mSuccessor = [successor retain];
}


- (void)handleRequest:(int)request
{
    // to override
}

@end
