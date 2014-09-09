//
//  Leaf.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Leaf.h"

@implementation Leaf

- (void)add:(Composite_Component *)c
{
    NSLog(@"Cannot add to a leaf");
}

- (void)remove:(Composite_Component *)c
{
    NSLog(@"Cannot remove from a leaf");
}

- (void)display:(int)depth
{
    NSLog(@"%@: %@", displayStrByTimes(@"-", depth), mName);
}

@end
