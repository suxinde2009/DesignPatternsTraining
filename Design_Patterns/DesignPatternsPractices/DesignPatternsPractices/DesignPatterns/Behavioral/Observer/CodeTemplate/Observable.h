//
//  Observable.h
//  WeWhere
//
//  Created by Su XinDe on 14-8-21.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Observer.h"

@interface Observable : NSObject
{
    BOOL isChanged;
    NSMutableArray *objs;
    
}

- (void)addObserver:(id<Observer>)observer;

- (void)deleteObserver:(id<Observer>)observer;

- (void)notifyObservers:(id)arg;

- (void)deleteObservers;

- (void)setChanged;

- (void)clearChanged;

- (BOOL)hasChanged;

- (NSInteger)countObservers;

@end
