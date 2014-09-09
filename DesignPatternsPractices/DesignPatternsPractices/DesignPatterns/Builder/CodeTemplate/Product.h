//
//  Product.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-8.
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
