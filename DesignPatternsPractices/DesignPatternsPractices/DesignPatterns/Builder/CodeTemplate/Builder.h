//
//  Builder.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-8.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Product;

@interface Builder : NSObject

- (void)buildPartA;
- (void)buildPartB;
- (Product *)getResult;

@end
