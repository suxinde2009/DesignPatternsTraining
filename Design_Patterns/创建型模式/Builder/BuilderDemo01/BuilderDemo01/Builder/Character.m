//
//  Character.m
//  BuilderDemo01
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "Character.h"

@implementation Character

- (id)init {
    if (self = [super init]) {
        [self defaulInit];
    }
    return self;
}


- (void)defaulInit
{
    self.protection = 1.0;
    self.power = 1.0;
    self.strength = 1.0;
    self.stamina = 1.0;
    self.intelligence = 1.0;
    self.agility = 1.0;
    self.aggressiveness = 1.0;
}

@end
