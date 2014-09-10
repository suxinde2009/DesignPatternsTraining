//
//  Observer_Template_TestCase.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-10.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Observer_Template_TestCase.h"

@implementation Observer_Template_TestCase

+ (void)mainTest
{
    Observer_ConcreteSubject *s = [[Observer_ConcreteSubject alloc] init];
    Observer_ConcreteObserver *o = nil;
    //o = [[[Observer_ConcreteObserver alloc] initWithSubject:s name:@"X"] autorelease];
    o = [[[Observer_ConcreteObserver alloc] initWithName:@"X"] autorelease];
    [s attach:o];

    //o = [[[Observer_ConcreteObserver alloc] initWithSubject:s name:@"Y"] autorelease];
    o = [[[Observer_ConcreteObserver alloc] initWithName:@"Y"] autorelease];
    [s attach:o];
    
    //o = [[[Observer_ConcreteObserver alloc] initWithSubject:s name:@"Z"] autorelease];
    o = [[[Observer_ConcreteObserver alloc] initWithName:@"Z"] autorelease];
    [s attach:o];

    s.subjectState = @"ABC";
    [s notify];
}

@end
