//
//  Memento.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Originator

//OriginatorState
@interface OriginatorState : NSObject
@property (nonatomic) int intValue;
@property (nonatomic) NSString *stringValue;
@end

//Originator
@interface Originator : NSObject
{
@private OriginatorState *_localState;
}

-(void) changeValues;
-(OriginatorState *) getState;
-(void) setState:(OriginatorState *)oldState;
@end

#pragma mark State Saver

//State Saver
@interface StateSaver : NSObject
{
@private OriginatorState *_localState;
}

-(id) initWithState:(OriginatorState *)state;
-(OriginatorState*) getState;
@end

#pragma mark Caretaker

//Caretaker
@interface Caretaker : NSObject
{
@private Originator *_originator;
@private StateSaver *_stateSaver;
}

-(void) changeValue;
-(void) saveState;
-(void) loadState;
@end

#pragma mark [Application Interface]

//Application Interface
@interface Memento : NSObject
@end
