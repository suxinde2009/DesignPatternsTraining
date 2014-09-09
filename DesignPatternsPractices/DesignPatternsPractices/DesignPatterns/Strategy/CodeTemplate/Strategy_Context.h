//
//  Strategy_Context.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-10.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Strategy_Strategy.h"

@interface Strategy_Context : Strategy_Strategy
{
@private
    Strategy_Strategy *mStrategy;
}

- (id)initWithStrategy:(Strategy_Strategy *)strategy;
- (void)contextInterface;

@end
