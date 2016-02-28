//
//  Command.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Commands

//Base Command
@interface BaseCommand : NSObject
-(void) execute;
-(void) undo;
@end

//First Command
@interface FirstCommand : BaseCommand
{
@private NSString *_originalString;
@private NSString *_currentString;
}
-(id) initWithArguments: (NSString *) anArgument;
-(void) printString;
@end

//Second Command
@interface SecondCommand : BaseCommand
{
@private int _originalNumber;
@private int _currentNumber;
}
-(id) initWithArguments: (int) aNumber;
-(void) printNumber;
@end

#pragma mark Executor

//Command Executor
@interface CommandExecutor : NSObject
{
@private NSMutableArray *_arrayOfCommands;
}
-(void) addCommand:(BaseCommand *) aCommand;
-(void) executeCommands;
-(void) undoAll;
@end

#pragma mark [Application Interface]

//Application Interface
@interface Command : NSObject
@end
