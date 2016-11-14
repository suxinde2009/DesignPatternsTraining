//
//  ModifyCodeCommand.m
//  CommandPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "ModifyCodeCommand.h"
#import "CodeGroup.h"

@implementation ModifyCodeCommand

- (void)execute
{
    [self.cg find];
    [self.cg change];
    [self.cg plan];
}

@end
