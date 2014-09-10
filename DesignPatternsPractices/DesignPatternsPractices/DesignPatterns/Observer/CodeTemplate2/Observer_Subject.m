//
//  Observer_Subject.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-10.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Observer_Subject.h"
#import "Observer_Observer.h"

@implementation Observer_Subject

- (void)dealloc
{
    [mObservers release];
    [super dealloc];
}

- (id)init
{
    if (self = [super init]) {
        mObservers = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return self;
}

- (void)attach:(Observer_Observer *)observer
{
    if (observer) {
        [mObservers addObject:observer];
    }
}

- (void)detach:(Observer_Observer *)observer
{
    if (observer) {
        [mObservers removeObject:observer];
    }
}

- (void)notify
{
    for (Observer_Observer *o in mObservers) {
        //[o update];
        [o update:self];
    }

}

@end
