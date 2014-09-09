//
//  Observer_Subject.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-10.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Observer_Observer;

@interface Observer_Subject : NSObject
{
    NSMutableArray *mObservers;
}

- (void)attach:(Observer_Observer *)observer;
- (void)detach:(Observer_Observer *)observer;
- (void)notify;

@end
