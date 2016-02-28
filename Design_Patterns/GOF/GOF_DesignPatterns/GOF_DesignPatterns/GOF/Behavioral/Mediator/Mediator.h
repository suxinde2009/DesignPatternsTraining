//
//  Mediator.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Colleague

//Colleague
@class CentrallProcessor;
@interface SmartHousePart : NSObject
{
@private CentrallProcessor *_processor;
}
-(id) initWithCore:(CentrallProcessor *) processor;
-(void) numbersChanged;
@end

//Concrete Colleague
@interface Thermometer : SmartHousePart
@property (nonatomic) int temperature;
-(void)changeTemperatureTo:(int) temperature;
@end

//Concrete Colleague
@interface ConditioningSystem : SmartHousePart
-(void) startCondition;
@end

#pragma mark Mediator

//Medator
@interface CentrallProcessor : NSObject
@property (nonatomic, weak) Thermometer *_thermometer;
@property (nonatomic, weak) ConditioningSystem *_condSystem;
-(void) valueChanged:(SmartHousePart *) aPart;
@end

#pragma mark [Application Interface]

//Application Interface
@interface Mediator : NSObject
@end
