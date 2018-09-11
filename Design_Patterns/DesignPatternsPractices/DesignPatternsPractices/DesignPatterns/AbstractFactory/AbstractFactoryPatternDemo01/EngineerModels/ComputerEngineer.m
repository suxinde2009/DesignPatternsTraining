//
//  ComputerEngineer.m
//  DesignPatternsPractices
//
//  Created by SuXinDe on 2018/9/12.
//  Copyright © 2018年 Su XinDe. All rights reserved.
//

#import "ComputerEngineer.h"

@implementation ComputerEngineer

- (void)makeComputer:(FactoryBase*)factoryBase {
    /**
     * 组装机器的基本步骤
     */
    //1:首先准备好装机所需要的配件
    [self prepareHardwares:factoryBase];
    //2:组装机器
    //3:测试机器
    //4：交付客户
}
- (void)prepareHardwares:(FactoryBase*)factoryBase {
    //这里要去准备CPU和主板的具体实现，为了示例简单，这里只准备这两个
    //可是，装机工程师并不知道如何去创建，怎么办呢？
    
    //直接找相应的工厂获取
    self.cpu = [factoryBase createCpu];
    self.mainBoard = [factoryBase createMainBoard];
    //测试配件是否好用
    [self.cpu calculate];
    [self.mainBoard installCpuHoles];
}

@end
