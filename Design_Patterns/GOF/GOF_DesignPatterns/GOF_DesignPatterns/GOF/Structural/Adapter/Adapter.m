//
//  Adapter.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Adapter.h"

#pragma mark - Chargers

//Charger
@implementation Charger
-(void) charge
{
    NSLog(@"Laptop is charging");
}
@end

//EU
@implementation EuropeanLaptopCharger
@synthesize delegate = _delegate;

-(id) init
{
    self = [super self];
    self.delegate = self;
    return self;
}
-(void) charge
{
    [_delegate chargetLaptopRoundHoles:self];
    [super charge];
}
-(void) chargetLaptopRoundHoles:(Charger *)charger
{
    NSLog(@"Charge Laptop With 220V, Round Holes!");
}
@end

//US
@implementation USALaptopCharger
-(void) chargeLaptopRectHoles:(Charger *) charger;
{
    NSLog(@"Charge Laptop With 120V, Rect Holes");
}
@end

#pragma mark Adapter

//US_TO_EU_Adapter
@implementation USALaptopEuropeanAdapter
-(id) initWithUSALaptopCharger:(USALaptopCharger *) charger
{
    self = [super init];
    self.usaCharger = charger;
    return self;
}

-(void) chargetLaptopRoundHoles:(Charger *) charger
{
    [self.usaCharger chargeLaptopRectHoles:charger];
}

-(void) charge
{
    EuropeanLaptopCharger *euroCharge = [[EuropeanLaptopCharger alloc] init];
    euroCharge.delegate = self;
    [euroCharge charge];
}
@end

#pragma mark Helpful method

void makeTheLaptopCharge(Charger* aCharger)
{
    [aCharger charge];
}

#pragma mark - Adapter [Application Interface]

//Application [Adapter Interface]
@implementation Adapter
- (id)init
{
    NSLog(@"Adapter Created");
    
    EuropeanLaptopCharger *euroCharger = [EuropeanLaptopCharger new];
    makeTheLaptopCharge(euroCharger);
    euroCharger = nil;
    
    USALaptopCharger *charger = [USALaptopCharger new];
    USALaptopEuropeanAdapter *adapter = [[USALaptopEuropeanAdapter alloc] initWithUSALaptopCharger:charger];
    makeTheLaptopCharge(adapter);
    NSLog(@"\n");
    return self;
}

@end
