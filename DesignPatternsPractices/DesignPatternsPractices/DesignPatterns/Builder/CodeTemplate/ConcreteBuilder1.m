//
//  ConcreteBuilder1.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-8.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ConcreteBuilder1.h"

@implementation ConcreteBuilder1

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
    [mProduct add:@"PartA"];
}

- (void)buildPartB
{
    [mProduct add:@"PartB"];
}

- (Product *)getResult
{
    return mProduct;
}

@end
