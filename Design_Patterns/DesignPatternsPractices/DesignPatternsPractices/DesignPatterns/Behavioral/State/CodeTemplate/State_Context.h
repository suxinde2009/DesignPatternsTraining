//
//  State_Context.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-11.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class State_Context;

@protocol State_State <NSObject>

- (void)handle:(State_Context *)context;

@end

@interface State_Context : NSObject
{
    id<State_State> mState;
}

- (id)initWithState:(id<State_State>)state;
- (id<State_State>)state;
- (void)setState:(id<State_State>)state;
- (void)request;


@end
