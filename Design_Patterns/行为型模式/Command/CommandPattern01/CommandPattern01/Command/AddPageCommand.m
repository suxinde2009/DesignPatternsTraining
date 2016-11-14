//
//  AddPageCommand.m
//  CommandPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "AddPageCommand.h"
#import "PageGroup.h"

@implementation AddPageCommand

- (void)execute
{
    [self.pg find];
    [self.pg add];
    [self.pg plan];
}

@end
