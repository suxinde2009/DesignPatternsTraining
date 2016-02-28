//
//  Adapter.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - Chargers

//Charger
@interface Charger : NSObject
-(void) charge;
@end

//Euro
@protocol EuropeanLaptopChargerDelegate
-(void) chargetLaptopRoundHoles:(Charger *)charger;
@end

@interface EuropeanLaptopCharger : Charger <EuropeanLaptopChargerDelegate>
{
@private id<EuropeanLaptopChargerDelegate> _delegate;
}
@property (nonatomic, strong) id<EuropeanLaptopChargerDelegate> delegate;
@end

//US
@interface USALaptopCharger : NSObject
-(void) chargeLaptopRectHoles:(Charger *) charger;
@end

#pragma mark Adapter

//US_TO_EU_Adapter
@interface USALaptopEuropeanAdapter : Charger <EuropeanLaptopChargerDelegate>
@property (nonatomic, strong) USALaptopCharger *usaCharger;
-(id) initWithUSALaptopCharger:(USALaptopCharger *) charger;
-(void) charge;
@end

#pragma mark - Adapter [Application Interface]

//Application [Adapter Interface]
@interface Adapter : NSObject
@end
