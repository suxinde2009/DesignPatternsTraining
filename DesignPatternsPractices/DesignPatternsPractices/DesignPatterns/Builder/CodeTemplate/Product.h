//
//  Product.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-8.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject
{
    NSMutableArray *mParts;
}

- (void)add:(NSString *)part;
- (void)show;

@end
