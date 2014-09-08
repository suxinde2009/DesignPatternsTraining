//
//  Client.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-5.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Client.h"

@implementation Client

- (void)dealloc
{
    [mAbstractProductA release];
    [mAbstractProductB release];
    [super dealloc];
}

- (id)initWithFactory:(id<AbstractFactory>)factory
{
    if (self = [super init]) {
        mAbstractProductA = [[factory createProductA] retain];
        mAbstractProductB = [[factory createProductB] retain];
    }
    return self;
}

- (void)run
{
    [mAbstractProductB interact:mAbstractProductA];
}

@end
