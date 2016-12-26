//
//  ConcreteBuilder2.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-8.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Builder.h"
#import "Product.h"
@interface ConcreteBuilder2 : Builder
{
    Product *mProduct;
}

@end
