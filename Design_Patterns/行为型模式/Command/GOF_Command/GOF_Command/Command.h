//
//  Command.h
//  GOF_Command
//
//  Created by suxinde on 16/6/13.
//  Copyright © 2016年 suxinde. All rights reserved.
//

#import <Foundation/Foundation.h>


// Command creates objects which encapsulate actions and parameters.

//In object-oriented programming, the command pattern is a behavioral design pattern in which an object is used to represent and encapsulate all the information needed to call a method at a later time. This information includes the method name, the object that owns the method and values for the method parameters.

//Four terms always associated with the command pattern are command, receiver, invoker and client. A command object has a receiver object and invokes a method of the receiver in a way that is specific to that receiver's class. The receiver then does the work. A command object is separately passed to an invoker object, which invokes the command, and optionally does bookkeeping about the command execution. Any command object can be passed to the same invoker object. Both an invoker object and several command objects are held by a client object. The client contains the decision making about which commands to execute at which points. To execute a command, it passes the command object to the invoker object.

//In this example we'll create a base command, and two concrete commmands that can be executed and undo, and a command executor [manager] to execute/undo commands. First command can change a string, and undo that action, cause it saves the original string. The second one does the same with an integer. As we can see our Command executor can execute/undo specific commands or, even all of them.


#pragma mark - Commands

@interface BaseCommand : NSObject

- (void)execute;

- (void)undo;

@end


@interface FirstCommand : BaseCommand {
@private
    NSString *_originalString;
    NSString *_currentString;
    
}

- (id)initWithArguments:(NSString *)anArgument;

@end


@interface SecondCommand : BaseCommand {
@private
    int _originalNumber;
    int _currentNumber;
}

- (id)initWithArguments:(int)aNumber;


@end

@interface CommandExecutor : NSObject {
@private
    NSMutableArray *_commands;
}

- (void)addCommand:(BaseCommand *)aCommand;
- (void)executeCommands;
- (void)undoAll;

@end

@interface Command : NSObject

+ (void)test;

@end
