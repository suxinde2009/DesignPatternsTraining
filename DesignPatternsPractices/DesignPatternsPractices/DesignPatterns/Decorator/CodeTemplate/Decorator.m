//
//  Decorator.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator

- (void)setComponent:(Decorator_Component *)component
{
    if (mComponent) {
        [mComponent release];
        mComponent = nil;
    }
    mComponent = [component retain];
    
}

- (void)operation
{
    if (mComponent != nil) {
        [mComponent operation];
    }
}



@end
