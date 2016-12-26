//
//  Subject.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

@protocol Subject <NSObject>

- (void)registerObserver:(id<Observer>)o;
- (void)removeObserver:(id<Observer>)observer;
- (void)notifyObservers;

@end