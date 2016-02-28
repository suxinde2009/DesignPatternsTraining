//
//  Singleton.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Singleton.h"

#pragma mark Single God

//Singleton

@implementation God
static God* god = nil;
@synthesize name;
+ (God*) getInstance
{
    @synchronized(self)
    {
        if (god == nil)
        {
            god = [[super allocWithZone:NULL] init];
        }
    }
    return god;
}
+ (id) allocWithZone:(NSZone *)zone
{
    return [self getInstance];
}
@end

#pragma mark - Application [Singleton Init]

//Application [Singleton Interface]
@implementation Singleton
- (id)init
{
    NSLog(@"Singleton Created");
    
    God* godOfMuslim = [God getInstance];
    godOfMuslim.name = @"Allah";
    God* godOfChristian = [God getInstance];
    godOfChristian.name = @"Jesus";
    God* godOfWar = [God getInstance];
    godOfWar.name = @"Kratos";
    
    if((godOfChristian == godOfMuslim) && (godOfChristian == godOfWar) && (godOfWar == godOfMuslim))
        NSLog(@"All gods are one: %@", [God getInstance].name);
    NSLog(@"\n");
    return self;
}

@end
