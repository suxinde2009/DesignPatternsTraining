//
//  CarModel.h
//  BuilderPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarModel : NSObject

@property (nonatomic, strong) NSMutableArray *sequence;

- (void)start;
- (void)stop;
- (void)alarm;
- (void)engineBoom;

- (void)run;

@end
