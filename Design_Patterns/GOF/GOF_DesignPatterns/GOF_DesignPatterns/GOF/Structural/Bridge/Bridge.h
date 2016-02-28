//
//  Bridge.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Guns

//Implementator
@interface Gun : NSObject
- (void) fire;
@end

//Concrete Implementator
@interface Colt : Gun
- (void) fire;
@end

//Concrete Implementator
@interface SniperRifle : Gun
- (void) fire;
@end

#pragma mark Shooters

//Abstraction
@interface Shooter : NSObject
{
    Gun* gun;
}
@property (nonatomic, retain) Gun* gun;
- (void) shoot;
@end

//Refined Abstraction
@interface Cowboy : Shooter
@end

//Refined Abstraction
@interface Sniper : Shooter
@end

//Appliation Interface
@interface Bridge : NSObject
@end