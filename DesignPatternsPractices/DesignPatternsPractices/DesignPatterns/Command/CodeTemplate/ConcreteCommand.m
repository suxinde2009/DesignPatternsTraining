//
//  ConcreteCommand.m
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-6.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ConcreteCommand.h"

@implementation ConcreteCommand

- (void)execute
{
    //[super execute];
    [mReceiver action];
}

@end
