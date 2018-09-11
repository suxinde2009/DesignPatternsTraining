//
//  FactoryBase.m
//  DesignPatternsPractices
//
//  Created by SuXinDe on 2018/9/12.
//  Copyright © 2018年 Su XinDe. All rights reserved.
//

#import "FactoryBase.h"

#import "CpuBase.h"
#import "MainBoardBase.h"

@implementation FactoryBase

- (CpuBase *)createCpu {
    return nil;
}

- (MainBoardBase *)createMainBoard {
    return nil;
}

@end

@implementation IntelFactory

- (CpuBase *)createCpu {
    CpuBase* intelCpu = [IntelCpu new];
    intelCpu.pins = 755;
    return intelCpu;
}

- (MainBoardBase *)createMainBoard {
    MainBoardBase* intelMainBoard = [IntelMainBoard new];
    intelMainBoard.cpuHoles = 755;
    return intelMainBoard;
}

@end

@implementation AMDFactory

- (CpuBase *)createCpu {
    CpuBase* intelCpu = [AMDCpu new];
    intelCpu.pins = 938;
    return intelCpu;
}

- (MainBoardBase *)createMainBoard {
    MainBoardBase* intelMainBoard = [AMDMainBoard new];
    intelMainBoard.cpuHoles = 938;
    return intelMainBoard;
}

@end
