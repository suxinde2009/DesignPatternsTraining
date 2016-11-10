//
//  ViewController.m
//  StrategyLogFaultTolerance
//
//  Created by suxinde on 2016/11/10.
//  Copyright © 2016年 com.meitu. All rights reserved.
//

#import "ViewController.h"

#import "LogContext.h"

// http://chjavach.iteye.com/blog/698743

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    LogContext *logCtx = [LogContext new];
    
    // 正常使用
    [logCtx log:@"Test"];
    
    // 容错
    [logCtx log:@"create exception"];
}

@end
