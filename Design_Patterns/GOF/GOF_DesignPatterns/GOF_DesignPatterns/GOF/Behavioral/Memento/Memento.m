//
//  Memento.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Memento.h"

#pragma mark Originator

//OriginatorState
@implementation OriginatorState
@end

//Originator
@implementation Originator
-(id) init
{
    self = [super init];
    _localState = [OriginatorState new];
    _localState.intValue = 100;
    _localState.stringValue = @"Code Monkey!";
    
    return self;
}

-(void) changeValues
{
    _localState.intValue++;
    _localState.stringValue = [NSString stringWithFormat:@"%@ %@", _localState.stringValue, @"!"];
    NSLog(@"Current state = %i, key = %@", _localState.intValue, _localState.stringValue);
}

-(OriginatorState *) getState
{
    return _localState;
}

-(void) setState:(OriginatorState *)oldState
{
    _localState = oldState;
    
    NSLog(@"State Loaded  = %i, key = %@", _localState.intValue, _localState.stringValue);
}
@end

#pragma mark State Saver

//State Saver
@implementation StateSaver
-(id) initWithState:(OriginatorState *)state
{
    self = [super init];
    
    _localState = [OriginatorState new];
    [_localState setIntValue:state.intValue];
    [_localState setStringValue:state.stringValue];
    
    return self;
}
-(OriginatorState *) getState
{
    return _localState;
}
@end

#pragma mark Caretaker

//Caretaker
@implementation Caretaker
-(void) changeValue
{
    if (!_originator)
        _originator = [Originator new];
    
    [_originator changeValues];
}
-(void) saveState
{
    _stateSaver = [[StateSaver alloc] initWithState:[_originator getState]];
    NSLog(@"State Saved   = %i, key = %@",[[_stateSaver getState] intValue ], [[_stateSaver getState] stringValue ]);
}
-(void) loadState
{
    [_originator setState:[_stateSaver getState]];
}
@end

@implementation Memento
- (id)init
{
    NSLog(@"Memento Created");
    
    Caretaker *careTaker = [Caretaker new];
    [careTaker changeValue];
    [careTaker saveState];
    [careTaker changeValue];
    [careTaker changeValue];
    [careTaker changeValue];
    [careTaker loadState];
    
    NSLog(@"\n");
    return self;
}
@end
