//
//  Command.h
//  CommandPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RequirementGroup,PageGroup,CodeGroup;

@interface Command : NSObject

@property (nonatomic, strong, readonly) RequirementGroup *rg;
@property (nonatomic, strong, readonly) PageGroup *pg;
@property (nonatomic, strong, readonly) CodeGroup *cg;

- (void)execute;

@end
