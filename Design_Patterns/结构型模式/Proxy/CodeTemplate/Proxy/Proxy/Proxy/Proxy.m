//
//  Proxy.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-7.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Proxy.h"

@implementation Proxy

- (void)request
{
    if (mRealSubject == nil) {
        mRealSubject = [[Proxy_RealSubject alloc] init];
    }
    
    [mRealSubject request];
}

- (void)dealloc
{

}

@end
