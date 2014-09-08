//
//  Product.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-8.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Product.h"

@implementation Product

- (void)dealloc
{
    [mParts release];
    [super dealloc];
}

- (id)init
{
    if (self = [super init]) {
        mParts = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return self;
}

- (void)add:(NSString *)part
{
    [mParts addObject:part];
}

- (void)show
{
    NSLog(@"Product Parts -------");
    for (NSString *part in mParts) {
        NSLog(@"%@", part);
    }
}

@end
