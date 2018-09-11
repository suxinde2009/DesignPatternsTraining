//
//  CpuBase.m
//  DesignPatternsPractices
//
//  Created by SuXinDe on 2018/9/12.
//  Copyright © 2018年 Su XinDe. All rights reserved.
//

#import "CpuBase.h"

@implementation CpuBase

- (void)calculate {
    NSLog(@"CPU超类");
}

@end

@implementation IntelCpu

- (void)calculate {
    NSLog(@"Intel CPU的针脚数：%@",@(self.pins));
}

@end

@implementation AMDCpu

- (void)calculate {
    NSLog(@"AMD的Cpu针脚数为：%@", @(self.pins));
}

@end

