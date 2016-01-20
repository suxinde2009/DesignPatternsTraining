//
//  Adaptee.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-1.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Adaptee <NSObject>
@optional
- (void)specificRequest;
@end
