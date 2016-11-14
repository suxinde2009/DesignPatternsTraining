//
//  PageGroup.m
//  CommandPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "PageGroup.h"

@implementation PageGroup

- (void)find {
    NSLog(@"找到美工组...");
}

- (void)add {
    NSLog(@"客户要求增加一个页面...");
}

- (void)deleted {
    NSLog(@"客户要求删除一个页面...");
}

- (void)change {
    NSLog(@"客户要求修改一个页面...");
}

- (void)plan {
    NSLog(@"客户要求页面变更计划...");
}


@end
