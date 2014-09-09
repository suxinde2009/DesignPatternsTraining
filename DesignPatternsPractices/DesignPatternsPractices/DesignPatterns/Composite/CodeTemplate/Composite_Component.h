//
//  Composite_Component.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *displayStrByTimes(NSString *str, int times);

@interface Composite_Component : NSObject
{
    NSString *mName;
}

- (id)initWithName:(NSString *)name;

- (void)add:(Composite_Component *)c;
- (void)remove:(Composite_Component *)c;
- (void)display:(int)depth;

@end
