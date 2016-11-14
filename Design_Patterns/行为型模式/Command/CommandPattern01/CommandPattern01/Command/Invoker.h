//
//  Invoker.h
//  CommandPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Command;

@interface Invoker : NSObject

@property (nonatomic, strong) Command *command;

- (void)action;

@end
