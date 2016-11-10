//
//  DBLog.m
//  StrategyLogFaultTolerance
//
//  Created by suxinde on 2016/11/10.
//  Copyright © 2016年 com.meitu. All rights reserved.
//

#import "DBLog.h"

@implementation DBLog

- (void)log:(NSString *)msg
{
    // 模拟异常
    if ([msg isEqualToString:@"create exception"]) {
        @throw [NSException exceptionWithName:@"故意制造的dblog异常"
                                       reason:@"`模拟异常`"
                                     userInfo:nil];
        return;
    }
    
    NSLog(@"现在把 '%@' 记录到数据库中", msg);
}

@end
