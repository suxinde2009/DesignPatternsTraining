//
//  Composite_Component.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Composite_Component.h"

NSString *displayStrByTimes(NSString *str, int times)
{
    if (str == nil || str.length == 0 || [str isEqualToString:@""]) {
        return nil;
    }
    NSMutableString *tempStr = [[NSMutableString alloc] initWithCapacity:0];
    for (int i = 0; i < times; i++) {
        [tempStr appendFormat:@"%@", str];
    }
    
    return [tempStr autorelease];
}


@implementation Composite_Component

- (void)dealloc
{
    [mName release];
    [super dealloc];
}

- (id)initWithName:(NSString *)name
{
    if (self = [super init]) {
        mName = [name retain];
    }
    return self;
}

- (void)add:(Composite_Component *)c {}
- (void)remove:(Composite_Component *)c {}
- (void)display:(int)depth {}


@end
