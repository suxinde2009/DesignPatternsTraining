//
//  State.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "State.h"

#pragma mark States

//SateLike
@implementation StateLike
- (void) writeName:(StateContext*) context andString:(NSString*)stringName{};
@end

//StateA
@implementation StateA
-(void)writeName:(StateContext *)context andString:(NSString *)name{
    NSLog(@"%@", [name lowercaseString]);
    [context setState:[StateB new]];
}
@end

//StateB
@implementation StateB
-(void)writeName:(StateContext *)context andString:(NSString *)name{
    NSLog(@"%@", [name uppercaseString]);
    if(++i > 1)
        [context setState:[StateA new]];
}
@end

#pragma mark Context

//Context
@implementation StateContext
- (id)init
{
    myState = [StateA new];
    return self;
}
- (void) setState:(StateLike*)newState{
    myState = newState;
}
- (void) writeName:(NSString*)name{
    [myState writeName:self andString:name];
}
@end

#pragma mark [Application Interface]

//Application Interface
@implementation State
- (id)init
{
    NSLog(@"State Created");
    
    StateContext *stateContext = [StateContext new];
    [stateContext writeName:@"Sunday"];
    [stateContext writeName:@"Monday"];
    [stateContext writeName:@"Tuesday"];
    [stateContext writeName:@"Wednesday"];
    [stateContext writeName:@"Thursday"];
    [stateContext writeName:@"Friday"];
    [stateContext writeName:@"Saturday"];
    
    NSLog(@"\n");
    return self;
}
@end

