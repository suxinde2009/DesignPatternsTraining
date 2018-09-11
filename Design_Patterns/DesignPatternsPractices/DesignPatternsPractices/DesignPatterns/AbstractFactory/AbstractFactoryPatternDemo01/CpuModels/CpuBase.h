//
//  CpuBase.h
//  DesignPatternsPractices
//
//  Created by SuXinDe on 2018/9/12.
//  Copyright © 2018年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CpuBase : NSObject

@property (nonatomic, assign) NSInteger pins;//针脚数

- (void)calculate;

@end

@interface IntelCpu : CpuBase

@end

@interface AMDCpu : CpuBase

@end
