//
//  CellPhoneDecoratorGPS.m
//  DecoratorDemo01
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "CellPhoneDecoratorGPS.h"

@implementation CellPhoneDecoratorGPS

- (NSString *)call
{
    return [NSString stringWithFormat:@"%@ with GPS", [super call]];
}

- (NSString *)sendMsg
{
    return [NSString stringWithFormat:@"%@ with GPS", [super sendMsg]];
}


@end
