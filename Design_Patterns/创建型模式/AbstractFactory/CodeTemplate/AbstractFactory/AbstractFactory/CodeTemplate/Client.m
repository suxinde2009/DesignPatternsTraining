//
//  Client.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-5.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Client.h"

@implementation Client

- (void)dealloc
{

}

- (id)initWithFactory:(id<AbstractFactory>)factory
{
    if (self = [super init]) {
        mAbstractProductA = [factory createProductA];
        mAbstractProductB = [factory createProductB];
    }
    return self;
}

- (void)run
{
    [mAbstractProductB interact:mAbstractProductA];
}

@end
