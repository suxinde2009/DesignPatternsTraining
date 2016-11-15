//
//  CarModel.m
//  BuilderPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "CarModel.h"

@implementation CarModel

- (void)start{}
- (void)stop{}
- (void)alarm{}
- (void)engineBoom{}

- (void)run {
    for (NSString *tmp in self.sequence) {
        if ([tmp isEqualToString:@"start"]) {
            [self start];
        }else if ([tmp isEqualToString:@"stop"]){
            [self stop];
        }else if ([tmp isEqualToString:@"alarm"]){
            [self alarm];
        }else if ([tmp isEqualToString:@"engine boom"]){
            [self engineBoom];
        }
    }
}

#pragma mark -
#pragma synthesize- setSequence

- (void)setSequence:(NSMutableArray *)sequence {
    _sequence = sequence;
}


@end
