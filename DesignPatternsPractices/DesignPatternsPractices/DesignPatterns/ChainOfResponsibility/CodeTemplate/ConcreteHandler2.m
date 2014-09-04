//
//  ConcreteHandler2.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-4.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ConcreteHandler2.h"

@implementation ConcreteHandler2

- (void)handleRequest:(int)request
{
    if (request >= 10 && request < 20) {
        NSLog(@"%s: handled request %d", __func__, request);
    }else if (mSuccessor != nil) {
        [mSuccessor handleRequest:request];
    }
}

@end
