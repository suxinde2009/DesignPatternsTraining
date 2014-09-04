//
//  ProductB1.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-5.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ProductB1.h"

@implementation ProductB1

- (void)interact:(id <AbstractProductA>)a
{
    NSLog(@"%@ interacts with %@", NSStringFromClass([self class]), NSStringFromClass([a class]));
}

@end
