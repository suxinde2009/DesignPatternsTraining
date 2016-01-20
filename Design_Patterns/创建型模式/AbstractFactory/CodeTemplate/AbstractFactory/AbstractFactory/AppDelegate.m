//
//  AppDelegate.m
//  AbstractFactory
//
//  Created by Su XinDe on 16/1/20.
//  Copyright © 2016年 com.su. All rights reserved.
//

// http://www.dofactory.com/net/abstract-factory-design-pattern

#import "AppDelegate.h"
#import "Client.h"
#import "ConcreteFactory1.h"
#import "ConcreteFactory2.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [self testAbstractFactory];
    
    return YES;
}


- (void)testAbstractFactory
{
    id<AbstractFactory> factory1 = [[ConcreteFactory1 alloc] init];
    Client *client1 = [[Client alloc] initWithFactory:factory1];
    [client1 run];
    
    id<AbstractFactory> factory2 = [[ConcreteFactory2 alloc] init];
    Client *client2 = [[Client alloc] initWithFactory:factory2];
    [client2 run];
}


@end
