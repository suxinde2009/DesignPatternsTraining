//
//  Command_Template_TestCase.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-6.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Command_Template_TestCase.h"

@implementation Command_Template_TestCase

+ (void)mainTest
{
    Receiver *receiver = [[Receiver alloc] init];
    Command *command = [[ConcreteCommand alloc] initWithReceiver:receiver];
    Invoker *invoker = [[Invoker alloc] init];
    
    [invoker setCommand:command];
    [invoker executeCommand];
}

@end
