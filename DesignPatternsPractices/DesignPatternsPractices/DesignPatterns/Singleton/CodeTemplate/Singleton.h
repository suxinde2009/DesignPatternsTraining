//
//  Singleton.h
//  DesignPatternsPractices
//
//  Created by p2pmsg on 14-9-1.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

+ (instancetype)sharedInstance;
- (void)operate;

@end
