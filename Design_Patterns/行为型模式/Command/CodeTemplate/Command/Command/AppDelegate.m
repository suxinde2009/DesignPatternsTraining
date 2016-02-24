//
//  AppDelegate.m
//  Command
//
//  Created by zj－db0367 on 16/1/21.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "AppDelegate.h"

#import "Receiver.h"
#import "Command.h"
#import "Invoker.h"
#import "ConcreteCommand.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [self test];
    
    return YES;
}

- (void)test
{
    Receiver *receiver = [[Receiver alloc] init];
    Command *command = [[ConcreteCommand alloc] initWithReceiver:receiver];
    Invoker *invoker = [[Invoker alloc] init];
    
    [invoker setCommand:command];
    [invoker executeCommand];
}

@end
