//
//  Observer_ConcreteObserver.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-10.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Observer_ConcreteObserver.h"

@implementation Observer_ConcreteObserver

- (void)dealloc
{
    //[mSubject release];
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

//- (id)initWithSubject:(Observer_ConcreteSubject *)subject
//                 name:(NSString *)name
//{
//    if (self = [super init]) {
//        mSubject = [subject retain];
//        mName = [name retain];
//    }
//    return self;
//}

//- (void)update
//{
//    mObserverState = mSubject.subjectState;
//    NSLog(@"Observer %@'s new state is %@", mName, mObserverState);
//}


- (void)update:(id)object
{
    NSString *state = ((Observer_ConcreteSubject *)object).subjectState;
    NSLog(@"Observer %@'s new state is %@", mName, state);
}

@end
