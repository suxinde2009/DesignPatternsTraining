//
//  Builder.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-8.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Product;

@interface Builder : NSObject

- (void)buildPartA;
- (void)buildPartB;
- (Product *)getResult;

@end
