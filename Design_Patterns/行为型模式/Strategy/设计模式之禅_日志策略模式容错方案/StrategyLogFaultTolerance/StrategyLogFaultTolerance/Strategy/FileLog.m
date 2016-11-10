//
//  FileLog.m
//  StrategyLogFaultTolerance
//
//  Created by suxinde on 2016/11/10.
//  Copyright © 2016年 com.meitu. All rights reserved.
//

#import "FileLog.h"

@implementation FileLog

- (void)log:(NSString *)msg
{
    NSLog(@"现在把 '%@' 记录到文件中", msg);
}

@end
