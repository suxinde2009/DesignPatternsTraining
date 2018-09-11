//
//  FactoryBase.h
//  DesignPatternsPractices
//
//  Created by SuXinDe on 2018/9/12.
//  Copyright © 2018年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CpuBase, MainBoardBase;

@interface FactoryBase : NSObject

- (CpuBase *)createCpu;

- (MainBoardBase *)createMainBoard;

@end

@interface IntelFactory : FactoryBase

@end

@interface AMDFactory : FactoryBase

@end
