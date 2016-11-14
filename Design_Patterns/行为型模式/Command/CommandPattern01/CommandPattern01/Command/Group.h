//
//  Group.h
//  CommandPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IGroup <NSObject>

- (void)find;

- (void)add;

- (void)deleted;

- (void)change;

- (void)plan;

@end


