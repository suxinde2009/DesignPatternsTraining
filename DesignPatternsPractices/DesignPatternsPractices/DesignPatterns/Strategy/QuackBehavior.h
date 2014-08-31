//
//  QuackBehavior.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>


//@interface QuackBehavior : NSObject
//
//- (void)quack;
//
//@end
//
//@implementation QuackBehavior
//
//- (void)quack {}
//
//@end


@protocol QuackBehavior <NSObject>

- (void)quack;

@end
