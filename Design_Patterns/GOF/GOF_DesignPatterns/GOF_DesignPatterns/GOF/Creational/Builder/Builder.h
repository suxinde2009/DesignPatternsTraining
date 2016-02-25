//
//  Builder.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/26.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Abstract Car Builder

///Builder
@interface CarBuilder : NSObject
{
    NSMutableString* Car;
}
@property (nonatomic, retain) NSMutableString* Car;

- (void) setSeatNumber;
- (void) setTripComputer;
- (void) setGPS;
- (void) setABS;
- (void) setUltraBrakes;
- (void) setAdvancedEngine;
- (void) setNeon;
@end

#pragma mark FamilyCar Car Builders

//Concrete Builder
@interface FamilyCarBuilder : CarBuilder
@end

#pragma mark SportCar Car Builders

//Concrete Builder
@interface SportCarBuilder : CarBuilder
@end

#pragma mark Assembler

//Director
@interface CarAssembler : NSObject
{
    CarBuilder* carBuilder;
}
@property (nonatomic, retain) CarBuilder* carBuilder;
- (void) createCar;
- (NSString*) getCar;
@end

#pragma mark Builder [Application Interface]

//Client [Application Interface]
@interface Builder : NSObject
@end
