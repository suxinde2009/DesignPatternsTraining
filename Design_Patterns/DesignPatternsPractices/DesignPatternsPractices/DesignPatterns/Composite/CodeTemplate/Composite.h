//
//  Composite.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Composite_Component.h"

@interface Composite : Composite_Component
{
    NSMutableArray *mChildren;
}



@end
