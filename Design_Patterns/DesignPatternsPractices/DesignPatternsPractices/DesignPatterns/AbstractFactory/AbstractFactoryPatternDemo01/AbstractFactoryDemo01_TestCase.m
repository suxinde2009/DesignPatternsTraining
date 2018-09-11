//
//  AbstractFactoryDemo01_TestCase.m
//  DesignPatternsPractices
//
//  Created by SuXinDe on 2018/9/12.
//  Copyright © 2018年 Su XinDe. All rights reserved.
//

#import "AbstractFactoryDemo01_TestCase.h"
#import "ComputerEngineer.h"

@implementation AbstractFactoryDemo01_TestCase

+ (void)mainTest {
    //创建装机工程师对象
    ComputerEngineer* cf = [ComputerEngineer new];
    
    //客户选择并创建需要使用的产品对象
    FactoryBase *factory = [[IntelFactory alloc] init];
    //FactoryBase* af = [[AMDFactory alloc] init];
    
    //告诉装机工程师自己选择的产品，让装机工程师组装电脑
    [cf makeComputer:factory];
    
}

@end
