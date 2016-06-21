//
//  AbstractCellPhoneDecorator.h
//  DecoratorDemo01
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "AbstractCellPhone.h"

@interface AbstractCellPhoneDecorator : AbstractCellPhone

@property (nonatomic, strong) AbstractCellPhone *abstractCellPhone;

- (void)setComponents:(AbstractCellPhone *)component;

@end
