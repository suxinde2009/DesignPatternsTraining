//
//  Facade.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-7.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SubSystemOne.h"
#import "SubSystemTwo.h"
#import "SubSystemThree.h"
#import "SubSystemFour.h"

@interface Facade : NSObject
{
@private
    SubSystemOne    *mSubSystemOne;
    SubSystemTwo    *mSubSystemTwo;
    SubSystemThree  *mSubSystemThree;
    SubSystemFour   *mSubSystemFour;
}

- (void)methodA;
- (void)methodB;

@end
