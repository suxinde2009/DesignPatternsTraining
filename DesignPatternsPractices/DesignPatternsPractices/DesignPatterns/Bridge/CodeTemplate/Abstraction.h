//
//  Abstraction.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-6.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Implementor.h"

@interface Abstraction : NSObject
{
@protected
    Implementor *mImplementor;
    
}

@property (nonatomic, retain) Implementor *implementor;

- (void)operation;

@end
