//
//  FactoryMethod.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "FactoryMethod.h"
#pragma mark Products - Drinks

//Product
@implementation Drink
- (void) make {}
@end

//Concrete Product
@implementation BloodyMarryDrink
- (void) make
{
    NSLog(@"%@ done, but from tomato juice, not real blood.", [self class]);
}
@end

//Concrete Product
@implementation MartiniDrink
- (void) make
{
    NSLog(@"%@ done, shaken, not stirred.", [self class]);
}
@end

#pragma mark Creators - Cocktail Shakers

//Creator
@implementation Shaker
- (void) prepare    {}
- (void) makeDrink
{
    [drink make];
}
- (void) dealloc
{
    if (drink != nil)
        drink = nil;
}
@end

//Concrete Creator
@implementation DraculaShaker
- (void) prepare
{
    NSLog(@"%@ preparing drink...", [self class]);
    drink = [BloodyMarryDrink new];
}
@end

//Concrete Creator
@implementation JamesBondShaker
- (void) prepare
{
    NSLog(@"%@ preparing drink...", [self class]);
    drink = [MartiniDrink new];
}
@end

#pragma mark Helpful method

//Client
void createDrink(Shaker* shaker)
{
    [shaker prepare];
    [shaker makeDrink];
}

#pragma mark - Factory Method Init

//Factory Method
@implementation Factory_Method
- (id)init
{
    NSLog(@"Factory Method Created");
    
    Shaker* shaker = [DraculaShaker new];
    createDrink(shaker);
    shaker = nil;
    
    shaker = [JamesBondShaker new];
    createDrink(shaker);
    shaker = nil;
    
    NSLog(@"\n");
    return self;
}

@end
