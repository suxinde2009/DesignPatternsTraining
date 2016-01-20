//
//  Composite.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Composite.h"

@implementation Composite

- (void)dealloc
{
    [mChildren release];
    [super dealloc];
}

- (id)initWithName:(NSString *)name
{
    if (self = [super initWithName:name]) {
        mChildren = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return self;
}

- (void)add:(Composite_Component *)c
{
    [mChildren addObject:c];
}

- (void)remove:(Composite_Component *)c
{
    [mChildren removeObject:c];
}

- (void)display:(int)depth
{
    NSLog(@"%@: %@", displayStrByTimes(@"-", depth), mName);
    
    for (Composite_Component *c in mChildren) {
        [c display:depth+2];
    }
    
}

@end
