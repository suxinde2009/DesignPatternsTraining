//
//  Observer.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Observer <NSObject>

- (void)update:(float)temp
      humidity:(float)humidity
      pressure:(float)pressure;

@end