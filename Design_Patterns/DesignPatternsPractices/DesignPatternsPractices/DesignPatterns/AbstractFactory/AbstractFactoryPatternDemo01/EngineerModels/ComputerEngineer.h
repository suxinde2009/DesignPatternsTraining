//
//  ComputerEngineer.h
//  DesignPatternsPractices
//
//  Created by SuXinDe on 2018/9/12.
//  Copyright © 2018年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CpuBase.h"
#import "MainBoardBase.h"
#import "FactoryBase.h"

@interface ComputerEngineer : NSObject

@property (nonatomic,retain) CpuBase* cpu;
@property (nonatomic,retain) MainBoardBase* mainBoard;

- (void)makeComputer:(FactoryBase*)factoryBase;
- (void)prepareHardwares:(FactoryBase*)factoryBase;

@end
