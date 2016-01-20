//
//  ConcreteHandler3.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-4.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ConcreteHandler3.h"

@implementation ConcreteHandler3

- (void)handleRequest:(int)request
{
    if (request >= 20 && request < 30) {
        NSLog(@"%s: handled request %d", __func__, request);
    }else if (mSuccessor != nil) {
        [mSuccessor handleRequest:request];
    }
}

@end
