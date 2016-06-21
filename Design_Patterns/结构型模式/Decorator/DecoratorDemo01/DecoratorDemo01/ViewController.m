//
//  ViewController.m
//  DecoratorDemo01
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "ViewController.h"

#import "NokiaPhone.h"
#import "AbstractCellPhone.h"
#import "CellPhoneDecoratorGPS.h"
#import "CellPhoneDecoratorBluetooth.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    // http://www.tuicool.com/articles/jyeU3mu
    /*
     饰模式（Decorator），动态地为一个对象添加额外的职责，是继承的替代方案，属于结构型模式。通过装饰模式扩展对象的功能比继承子类方式更灵活，使用继承子类的方式，是在编译时静态决定的，即编译时绑定，而且所有的子类都会继承相同的行为。然而，如果使用组合的方式扩展对象的行为，就可以在运行时动态地进行扩展，将来如果需要也可以动态的撤销，而不会影响原类的行为。
     */
    /*
     说明：
     AbstractCellPhone:           对应图片中的Component
     NokiaPhone:                  对应图片中的ConcreteComponent
     AbstractCellPhoneDecorator:  对应图片中的Decorator
     CellPhoneDecoratorGPS:       对应图片中的ConcreteDecoratorA
     CellPhoneDecoratorBluetooth: 对应图片中的ConcreteDecoratorB
     */
    //核心思想就是通过AbstractCellPhoneDecorator各种子类来为NokiaPhone添加各种功能。而不需要改变NokiaPhone。
    
    NokiaPhone *phone = [NokiaPhone new];
    NSLog(@"%@",[phone call]);
    NSLog(@"%@",[phone sendMsg]);
    
    CellPhoneDecoratorGPS *gpsDecorator = [CellPhoneDecoratorGPS new];
    [gpsDecorator setComponents:phone];
    NSLog(@"%@",[gpsDecorator call]);
    NSLog(@"%@",[gpsDecorator sendMsg]);
    
    CellPhoneDecoratorBluetooth *bluetoothDecorator = [CellPhoneDecoratorBluetooth new];
    [bluetoothDecorator setComponents:phone];
    NSLog(@"%@",[bluetoothDecorator call]);
    NSLog(@"%@",[bluetoothDecorator sendMsg]);
    
    /*
    [bluetoothDecorator setComponents:gpsDecorator];
    NSLog(@"%@",[bluetoothDecorator call]);
    NSLog(@"%@",[bluetoothDecorator sendMsg]);
     */
    
}


@end
