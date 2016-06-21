//
//  AbstractCellPhoneDecorator.m
//  DecoratorDemo01
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "AbstractCellPhoneDecorator.h"

@implementation AbstractCellPhoneDecorator

- (void)setComponents:(AbstractCellPhone *)component
{
    self.abstractCellPhone = component;
}

- (NSString *)call
{
    return [self.abstractCellPhone call];
}

- (NSString *)sendMsg
{
    return [self.abstractCellPhone sendMsg];
}

@end
