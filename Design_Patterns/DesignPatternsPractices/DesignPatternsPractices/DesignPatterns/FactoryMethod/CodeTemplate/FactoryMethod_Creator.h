//
//  FactoryMethod_Creator.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FactoryMethod_Product.h"
@interface FactoryMethod_Creator : NSObject
- (FactoryMethod_Product *)factoryMethod;
@end
