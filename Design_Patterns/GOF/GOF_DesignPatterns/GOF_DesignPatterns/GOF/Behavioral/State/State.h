//
//  State.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark States

@class StateContext;

//SateLike
@interface StateLike : NSObject
- (void) writeName:(StateContext*) context andString:(NSString*)name;
@end

//StateA
@interface StateA : StateLike
@end

//StateB
@interface StateB : StateLike{
@private int i;
}
@end

#pragma mark Context

//Context
@interface StateContext : NSString{
@private StateLike *myState;
}
- (void) setState:(StateLike*)newState;
- (void) writeName:(NSString*)name;
@end

#pragma mark [Application Interface]

//Application Interface
@interface State : NSObject
@end
