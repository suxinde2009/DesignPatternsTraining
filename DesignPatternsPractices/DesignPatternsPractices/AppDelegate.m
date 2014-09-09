//
//  AppDelegate.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "AppDelegate.h"

#import "MiniDuckSimulator.h"

#import "WeatherStation.h"
#import "WeatherStationHeatIndex.h"

#import "StarbuzzCoffee.h"

//#import "DecoratorCPPTestCase.h"

#import "TemplateMethod_TestCase.h"

#import "Singleton_TestCase.h"

#import "Adapter_TestCase.h"

#import "ChainOfResponsibility_Template_TestCase.h"

#import "AbstractFactory_Template_TestCase.h"

#import "Bridge_Template_TestCase.h"

#import "Command_Template_TestCase.h"

#import "Facade_Template_TestCase.h"

#import "Proxy_Template_TestCase.h"

#import "Builder_Template_TestCase.h"

#import "Composite_Template_TestCase.h"

#import "Decorator_Template_TestCase.h"

#import "Strategy_Template_TestCase.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    // 策略模式
//    [MiniDuckSimulator mainTest];
    [Strategy_Template_TestCase mainTest];
    
    // 观察者模式
//    [WeatherStation mainTest];
//    [WeatherStationHeatIndex mainTest];
    
    // 装饰者模式
//    [StarbuzzCoffee mainTest];
//    [DecoratorCPPTestCase mainTest];
//    [Decorator_Template_TestCase mainTest];
    
    // 模版方法
//    [TemplateMethod_TestCase mainTest];
    
    // 单例模式
//    [Singleton_TestCase mainTest];
    
    // 适配器模式
//    [Adapter_TestCase mainTest];
    
    // 责任链模式
//    [ChainOfResponsibility_Template_TestCase mainTest];
    
    // 抽象工厂模式
//    [AbstractFactory_Template_TestCase mainTest];
    
    // 桥接模式
//    [Bridge_Template_TestCase mainTest];
    
    // 命令模式
//    [Command_Template_TestCase mainTest];
    
    // 外观模式
//    [Facade_Template_TestCase mainTest];
    
    // 代理模式
//    [Proxy_Template_TestCase mainTest];
    
    // 建造者模式
//    [Builder_Template_TestCase mainTest];
    
    // 组合模式
//    [Composite_Template_TestCase mainTest];
    
    //
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
