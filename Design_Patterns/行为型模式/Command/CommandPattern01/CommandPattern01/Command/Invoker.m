//
//  Invoker.m
//  CommandPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Invoker.h"
#import "Command.h"

@implementation Invoker

- (void)setCommand:(Command *)command
{
    _command = command;
}

- (void)action
{
    [self.command execute];
}

@end
