//
//  CellPhoneDecoratorBlueTooth.m
//  DecoratorDemo01
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "CellPhoneDecoratorBluetooth.h"

@implementation CellPhoneDecoratorBluetooth

- (NSString *)call
{
    return [NSString stringWithFormat:@"%@ with Bluetooth", [super call]];
}

- (NSString *)sendMsg
{
    return [NSString stringWithFormat:@"%@ with Bluetooth", [super sendMsg]];
}

@end
