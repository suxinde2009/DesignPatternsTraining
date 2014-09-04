//
//  A.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-3.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

//@class AbstractProductA;
//@class AbstractProductB;

@protocol AbstractProductA;
@protocol AbstractProductB;


//@interface AbstractFactory : NSObject
//
//- (AbstractProductA *)createProductA;
//- (AbstractProductB *)createProductB;
//
//@end

@protocol AbstractFactory <NSObject>

- (id<AbstractProductA>)createProductA;
- (id<AbstractProductB>)createProductB;

@end