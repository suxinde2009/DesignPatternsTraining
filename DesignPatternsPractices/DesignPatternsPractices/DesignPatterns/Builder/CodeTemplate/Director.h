//
//  Director.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-8.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Builder.h"

@interface Director : NSObject

- (void)construct:(Builder *)builder;

@end
