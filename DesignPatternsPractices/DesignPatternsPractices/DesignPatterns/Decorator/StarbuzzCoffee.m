//
//  StarbuzzCoffee.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-14.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "StarbuzzCoffee.h"

#import "Beverage.h"
#import "DarkRoast.h"
#import "Mocha.h"
#import "Whip.h"
#import "Soy.h"
#import "Espresso.h"
#import "HouseBlend.h"

@implementation StarbuzzCoffee

+ (void)mainTest
{

    Beverage *beverage = [[Espresso alloc] init];
    NSLog(@"%@ $ %f", [beverage getDescription], [beverage cost]);
    
    Beverage *beverage2 = [[DarkRoast alloc] init];
    beverage2 = [[Mocha alloc] initWithBeverage:beverage2];
    beverage2 = [[Mocha alloc] initWithBeverage:beverage2];
    beverage2 = [[Whip alloc] initWithBeverage:beverage2];
    NSLog(@"%@ $ %f", [beverage2 getDescription], [beverage2 cost]);
    
    Beverage *beverage3 = [[HouseBlend alloc] init];
    beverage3 = [[Soy alloc] initWithBeverage:beverage3];
    beverage3 = [[Mocha alloc] initWithBeverage:beverage3];
    beverage3 = [[Whip alloc] initWithBeverage:beverage3];
    NSLog(@"%@ $ %f", [beverage3 getDescription], [beverage3 cost]);
}

@end
