//
//  Adapter.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-1.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "AdapteeImpl.h"
#import "Target.h"

@interface Adapter : AdapteeImpl <Target>

@end
