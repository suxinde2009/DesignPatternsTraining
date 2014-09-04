//
//  Handler.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-4.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Handler : NSObject
{
    Handler *mSuccessor;
}

- (void)setSuccessor:(Handler *)successor;
- (void)handleRequest:(int)request;

@end
