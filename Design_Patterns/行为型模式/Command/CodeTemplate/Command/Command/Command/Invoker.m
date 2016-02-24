//
//  Invoker.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-6.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Invoker.h"

@implementation Invoker

- (void)setCommand:(Command *)command
{
    mCommand = command;
}

- (void)executeCommand
{
    [mCommand execute];
}

@end
