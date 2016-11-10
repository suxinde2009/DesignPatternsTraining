//
//  LogContext.m
//  StrategyLogFaultTolerance
//
//  Created by suxinde on 2016/11/10.
//  Copyright © 2016年 com.meitu. All rights reserved.
//

#import "LogContext.h"

@implementation LogContext

- (void)log:(NSString *)msg
{
    id<LogStrategy> strategy = [DBLog new];
    
    @try {
        [strategy log:msg];
    } @catch (NSException *exception) {
        NSLog(@"---------------默认log方法出现异常： %@， 采用容错方案--------------",
              exception.description);
        
        strategy = [FileLog new];
        [strategy log:msg];
    }
}

@end
