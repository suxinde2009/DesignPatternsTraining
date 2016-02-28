//
//  FactoryMethod.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

//Product
@interface Drink : NSObject
- (void) make;
@end

//Concrete Product
@interface BloodyMarryDrink : Drink
@end

//Concrete Product
@interface MartiniDrink : Drink
@end

#pragma mark Creators - Cocktail Shakers

//Creator
@interface Shaker : NSObject
{
    Drink* drink;
}
- (void) prepare;
- (void) makeDrink;
@end

//Concrete Creator
@interface DraculaShaker : Shaker
@end

//Concrete Creator
@interface JamesBondShaker : Shaker
@end

#pragma mark FactoryMethod [Application Interface]

//Client [Application Interface]
@interface Factory_Method : NSObject
@end
