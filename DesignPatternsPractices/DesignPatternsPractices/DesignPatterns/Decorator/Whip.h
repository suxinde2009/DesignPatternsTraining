//
//  Whip.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-14.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "CondimentDecorator.h"

@interface Whip : CondimentDecorator
{
    Beverage *beverage;
}

- (id)initWithBeverage:(Beverage *)b;

- (void)setBeverage:(Beverage *)b;

@end
