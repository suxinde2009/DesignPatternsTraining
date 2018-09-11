//
//  Beverage.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-14.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beverage : NSObject
{
    NSString *description;
}

- (NSString *)getDescription;
- (double)cost;

@end
