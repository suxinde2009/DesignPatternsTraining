//
//  ConcreteBuilder2.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-8.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ConcreteBuilder2.h"

@implementation ConcreteBuilder2

- (void)dealloc
{
    [mProduct release];
    [super dealloc];
}

- (id)init
{
    if (self = [super init]) {
        mProduct = [[Product alloc] init];
    }
    return self;
}

- (void)buildPartA
{
    [mProduct add:@"PartX"];
}

- (void)buildPartB
{
    [mProduct add:@"PartY"];
}

- (Product *)getResult
{
    return mProduct;
}

@end
