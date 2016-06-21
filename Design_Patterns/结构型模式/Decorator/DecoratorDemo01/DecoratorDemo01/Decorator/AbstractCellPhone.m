//
//  AbstractCellPhone.m
//  DecoratorDemo01
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "AbstractCellPhone.h"

@implementation AbstractCellPhone

- (NSString *)call
{
    return @"call someBody";
}

- (NSString *)sendMsg
{
    return @"send a message to somebody";

}

@end
