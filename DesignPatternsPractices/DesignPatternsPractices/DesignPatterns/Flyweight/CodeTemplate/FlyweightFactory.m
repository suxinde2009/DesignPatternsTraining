//
//  FlyweightFactory.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "FlyweightFactory.h"

@implementation FlyweightFactory

- (id)init
{
    if (self = [super init]) {
        mFlyweights = [[NSMutableDictionary alloc] initWithCapacity:0];
        [mFlyweights setObject:[[[ConcreteFlyweight alloc] init] autorelease] forKey:@"X"];
        [mFlyweights setObject:[[[ConcreteFlyweight alloc] init] autorelease] forKey:@"Y"];
        [mFlyweights setObject:[[[ConcreteFlyweight alloc] init] autorelease] forKey:@"Z"];
    }
    return self;
}

- (Flyweight *)getFlyweight:(NSString *)key
{
    return mFlyweights[key];
}

@end
