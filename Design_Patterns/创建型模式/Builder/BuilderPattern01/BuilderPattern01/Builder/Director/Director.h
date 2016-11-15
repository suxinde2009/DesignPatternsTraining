//
//  Director.h
//  BuilderPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BenzModel.h"
#import "BMWModel.h"

@interface Director : NSObject

@property (nonatomic, strong, readonly) BenzModel *benzModelA;
@property (nonatomic, strong, readonly) BenzModel *benzModelB;
@property (nonatomic, strong, readonly) BMWModel *bmwModelX;
@property (nonatomic, strong, readonly) BMWModel *bmwModelY;

@end
