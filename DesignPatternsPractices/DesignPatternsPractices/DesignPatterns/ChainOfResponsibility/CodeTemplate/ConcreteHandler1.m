//
//  ConcreteHandler1.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-4.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ConcreteHandler1.h"

@implementation ConcreteHandler1

- (void)handleRequest:(int)request
{
    if (request >= 0 && request < 10) {
        NSLog(@"%s: handled request %d", __func__, request);
    }else if (mSuccessor != nil) {
        [mSuccessor handleRequest:request];
    }
}

@end
