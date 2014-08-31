//
//  FlyBehavior.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//


//
// 当涉及“维护”时，为了“复用”目的而使用继承，结局并不完美
//

#import <Foundation/Foundation.h>


//@interface FlyBehavior : NSObject
//
//- (void)fly;
//
//@end
//
//@implementation FlyBehavior
//
//- (void)fly {}
//
//@end


@protocol FlyBehavior <NSObject>

- (void)fly;

@end
