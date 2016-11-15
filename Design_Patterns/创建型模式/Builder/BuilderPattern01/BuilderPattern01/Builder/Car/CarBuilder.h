//
//  CarBuilder.h
//  BuilderPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarModel.h"

@interface CarBuilder : NSObject

@property (nonatomic, strong) NSMutableArray *sequence;

@property (nonatomic, strong) CarModel *carModel;

@end
