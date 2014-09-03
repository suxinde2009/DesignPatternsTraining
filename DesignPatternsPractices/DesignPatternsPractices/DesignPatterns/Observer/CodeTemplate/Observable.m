//
//  Observable.m
//  WeWhere
//
//  Created by Su XinDe on 14-8-21.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Observable.h"

@implementation Observable

- (void)dealloc
{
    [objs release];
    [super dealloc];
}

- (id)init
{
    if (self = [super init]) {
        isChanged = NO;
        objs = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return self;
}

- (void)addObserver:(id<Observer>)observer
{
     @synchronized(self) {
         if (observer  == nil) {
             // 抛出异常
             NSException *e = [NSException
                               exceptionWithName:[NSString stringWithFormat:@"%s Error", __func__]
                               reason: @"observer can't be nil"
                               userInfo: nil];
             @throw e;
             return;
         }
         
         if (![objs containsObject:observer]) {
             [objs addObject:observer];
         }
     }
}

- (void)deleteObserver:(id<Observer>)observer
{
    @synchronized(self) {
        [objs removeObject:observer];
    }
}

- (void)notifyObservers:(id)arg
{
    @synchronized(self) {
        
        if (!isChanged) return;
        [self clearChanged];
        
        for (id<Observer> o in objs) {
            [o update:self arg:arg];
        }
        
    }

}

- (void)deleteObservers
{
    @synchronized(self) {
        [objs removeAllObjects];
    }
}

- (void)setChanged
{
    @synchronized(self) {
        isChanged = YES;
    }
}

- (void)clearChanged
{
    @synchronized(self) {
        isChanged = NO;
    }
}

- (BOOL)hasChanged
{
    @synchronized(self) {
        return isChanged;
    }
}

- (NSInteger)countObservers
{
    @synchronized(self) {
        if (objs == nil) {
            return 0;
        }
        return objs.count;
    }
}

@end
