//
//  LogContext.h
//  StrategyLogFaultTolerance
//
//  Created by suxinde on 2016/11/10.
//  Copyright © 2016年 com.meitu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FileLog.h"
#import "DBLog.h"

@interface LogContext : NSObject

- (void)log:(NSString *)msg;

@end
