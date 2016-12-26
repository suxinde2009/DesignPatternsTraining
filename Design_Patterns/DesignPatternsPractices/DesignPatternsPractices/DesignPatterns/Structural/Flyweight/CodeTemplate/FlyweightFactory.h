//
//  FlyweightFactory.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-12.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flyweight.h"
#import "ConcreteFlyweight.h"

@interface FlyweightFactory : NSObject
{
    NSMutableDictionary *mFlyweights;
}


- (Flyweight *)getFlyweight:(NSString *)key;

@end
