//
//  Bridge.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Bridge.h"

#pragma mark Guns

//Implementator
@implementation Gun
- (void) fire {}
@end

//Concrete Implementator
@implementation Colt
- (void) fire { NSLog(@"with %@", [self class]); }
@end

//Concrete Implementator
@implementation SniperRifle
- (void) fire { NSLog(@"with %@", [self class]); }
@end

#pragma mark Shooters

//Abstraction
@implementation Shooter
@synthesize gun;
- (void) shoot {}
- (void) dealloc
{
    gun = nil;
}
@end

//Refined Abstraction
@implementation Cowboy
- (id) init
{
    if ([super init] != nil)
    {
        gun = [[Colt alloc] init];
    }
    return self;
}
- (void) shoot
{
    NSLog(@"%@ is shooting", [self class]);
    [self.gun fire];
}
@end

//Refined Abstraction
@implementation Sniper
- (id) init
{
    if ([super init] != nil)
    {
        gun = [[SniperRifle alloc] init];
    }
    return self;
}
- (void) shoot
{
    NSLog(@"%@ is shooting", [self class]);
    [self.gun fire];
}
@end


#pragma mark Bridge [Application Interface]

//Application Interface
@implementation Bridge
- (id)init
{
    NSLog(@"Bridge Created");
    
    // using standard "implementations" of gun
    Shooter* cowboy = [Cowboy new];
    Shooter* sniper = [Sniper new];
    [cowboy shoot];
    [sniper shoot];
    
    NSLog(@"Swaping guns.");
    
    // dynamically changing "implementation" of gun
    cowboy.gun = [SniperRifle new];
    sniper.gun = [Colt new];
    [cowboy shoot];
    [sniper shoot];
    
    NSLog(@"\n");
    return self;
}

@end
