//
//  BMWBuilder.m
//  BuilderPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "BMWBuilder.h"


@implementation BMWBuilder

@synthesize carModel = _carModel;

- (CarModel *)carModel
{
    if (_carModel == nil) {
        _carModel = [BMWModel new];
    }
    return _carModel;
}

- (void)setSequence:(NSMutableArray *)sequence
{
    self.carModel.sequence = sequence;
}

@end
