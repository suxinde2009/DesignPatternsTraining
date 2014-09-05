//
//  Command.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-6.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Command.h"

@implementation Command

- (id)initWithReceiver:(Receiver *)receiver
{
    if (self = [super init]) {
        mReceiver = [receiver retain];
    }
    return self;
}

- (void)execute {}

@end
