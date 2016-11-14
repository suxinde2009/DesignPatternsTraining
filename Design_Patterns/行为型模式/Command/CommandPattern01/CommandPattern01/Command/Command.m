//
//  Command.m
//  CommandPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Command.h"

#import "RequirementGroup.h"
#import "PageGroup.h"
#import "CodeGroup.h"


@interface Command ()

@property (nonatomic, strong) RequirementGroup *rg;
@property (nonatomic, strong) PageGroup *pg;
@property (nonatomic, strong) CodeGroup *cg;

@end

@implementation Command

- (instancetype)init {
    if (self = [super init]) {
        _rg = [RequirementGroup new];
        _pg = [PageGroup new];
        _cg = [CodeGroup new];
    }
    return self;
}

- (void)execute {
    
}

@end
