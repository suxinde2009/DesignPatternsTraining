//
//  MainBoardBase.m
//  DesignPatternsPractices
//
//  Created by SuXinDe on 2018/9/12.
//  Copyright © 2018年 Su XinDe. All rights reserved.
//

#import "MainBoardBase.h"

@implementation MainBoardBase

- (void)installCpuHoles {
    NSLog(@"主板父类");
}

@end

@implementation IntelMainBoard

- (void)installCpuHoles {
    NSLog(@"Intel的主板Cpu插槽总数为：%@", @(self.cpuHoles));
}

@end


@implementation AMDMainBoard

- (void)installCpuHoles {
    NSLog(@"AMD的主板Cpu插槽总数为：%@", @(self.cpuHoles));
}

@end
