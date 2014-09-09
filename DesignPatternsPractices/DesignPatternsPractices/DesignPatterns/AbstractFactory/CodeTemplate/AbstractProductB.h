//
//  AbstractProductB.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-5.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AbstractProductA;

//@interface AbstractProductB : NSObject
//
//- (void)interact:(AbstractProductA *)a;
//
//@end

@protocol AbstractProductB <NSObject>

- (void)interact:(id<AbstractProductA>)a;

@end