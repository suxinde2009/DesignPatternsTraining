//
//  MainBoardBase.h
//  DesignPatternsPractices
//
//  Created by SuXinDe on 2018/9/12.
//  Copyright © 2018年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainBoardBase : NSObject

@property (nonatomic, assign) NSInteger cpuHoles;//CPU插槽数

- (void)installCpuHoles;//统计CPU插槽数

@end


@interface IntelMainBoard : MainBoardBase

@end

@interface AMDMainBoard : MainBoardBase

@end
