//
//  Mocha.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-14.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Mocha.h"

@implementation Mocha

- (id)initWithBeverage:(Beverage *)b
{
    if (self = [super init]) {
        beverage = b;
    }
    return self;
}

- (void)setBeverage:(Beverage *)b
{
    beverage = b;
}

- (NSString *)getDescription
{
    return [NSString stringWithFormat:@"%@, %@", [beverage getDescription],
            NSStringFromClass([self class])];
}

- (double)cost
{
    return (0.20f+[beverage cost]);
}

@end
