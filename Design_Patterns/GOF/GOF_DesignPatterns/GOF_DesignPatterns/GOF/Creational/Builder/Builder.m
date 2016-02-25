//
//  Builder.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/26.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Builder.h"

#pragma mark Abstract Car Builder

//Builder
@implementation CarBuilder
@synthesize Car;
- (id)   init
{
    if ([super init] != nil)
        Car = [[NSMutableString alloc] init];
    return self;
}
- (void) setSeatNumber{}
- (void) setTripComputer{}
- (void) setGPS{}
- (void) setABS{}
- (void) setUltraBrakes{}
- (void) setAdvancedEngine{}
- (void) setNeon{}
- (void) dealloc
{
    if (Car != nil)
        Car = nil;
}
@end

#pragma mark FamilyCar Car Builders

//Concrete Builder
@implementation FamilyCarBuilder
- (void) setSeatNumber{
    [Car appendString:@"This Car has 5 seats"];
}
- (void) setTripComputer{
    [Car appendString:@", a Trip computer"];
}
- (void) setGPS{
    [Car appendString:@", a GPS"];
}
- (void) setABS{
    [Car appendString:@" and ABS"];
}
@end

#pragma mark SportCar Car Builders

//Concrete Builder
@implementation SportCarBuilder
- (void) setSeatNumber{
    [Car appendString:@"This Car has 2 seats"];
}
- (void) setUltraBrakes{
    [Car appendString:@", Ultra brakes"];
}
- (void) setAdvancedEngine{
    [Car appendString:@", Advanced engine"];
}
- (void) setNeon{
    [Car appendString:@", Neon"];
}
- (void) setABS{
    [Car appendString:@" and ABS"];
}
@end

#pragma mark Car Assembler

// Director
@implementation CarAssembler
@synthesize carBuilder;
- (void) createCar
{
    [carBuilder setSeatNumber];
    [carBuilder setTripComputer];
    [carBuilder setGPS];
    [carBuilder setUltraBrakes];
    [carBuilder setAdvancedEngine];
    [carBuilder setNeon];
    [carBuilder setABS];
}
- (NSString*) getCar
{
    return [carBuilder Car];
}
@end

#pragma mark Helpful function

// Client
void writeCar(CarBuilder* carBuilder)
{
    CarAssembler* carAssembler = [CarAssembler new];
    
    carAssembler.carBuilder = carBuilder;
    [carAssembler createCar];
    NSLog(@"%@", [carAssembler getCar]);
    
    carAssembler = nil;
}

#pragma mark - Builder Init

//Builder
@implementation Builder
- (id)init
{
    NSLog(@"Builder Created");
    
    NSLog(@"Assembling family car:");
    CarBuilder* CarBuilder = [FamilyCarBuilder new];
    writeCar(CarBuilder);
    CarBuilder = nil;
    
    NSLog(@"Assembling sport car:");
    CarBuilder = [SportCarBuilder new];
    writeCar(CarBuilder);
    CarBuilder = nil;
    
    NSLog(@"\n");
    return self;
}

@end
