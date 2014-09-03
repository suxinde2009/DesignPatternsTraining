//
//  Observer.h
//  WeWhere
//
//  Created by Su XinDe on 14-8-21.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Observable;
@protocol Observer <NSObject>
@required
- (void)update:(Observable *)o
           arg:(id)arg;
@end
