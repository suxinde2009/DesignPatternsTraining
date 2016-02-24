//
//  AppDelegate.m
//  Proxy
//
//  Created by zj－db0367 on 16/1/21.
//  Copyright © 2016年 com.su. All rights reserved.
//

// http://www.dofactory.com/net/proxy-design-pattern

#import "AppDelegate.h"
#import "Proxy.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self test];
    
    return YES;
}

- (void)test
{
    Proxy *proxy = [[Proxy alloc] init];
    [proxy request];
}

@end
