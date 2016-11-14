//
//  AddRequirementCommand.m
//  CommandPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "AddRequirementCommand.h"
#import "RequirementGroup.h"

@implementation AddRequirementCommand

- (void)execute
{
    [self.rg find];
    [self.rg add];
    [self.rg plan];
}

@end
