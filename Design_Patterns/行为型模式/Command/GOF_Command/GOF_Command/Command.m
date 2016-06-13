//
//  Command.m
//  GOF_Command
//
//  Created by suxinde on 16/6/13.
//  Copyright © 2016年 suxinde. All rights reserved.
//

#import "Command.h"

#pragma mark - Commands

@implementation BaseCommand

- (void)execute {}

- (void)undo {}

@end

@implementation FirstCommand

- (id)initWithArguments:(NSString *)anArgument
{
    if (self = [super init]) {
        _originalString = anArgument;
        _currentString = anArgument;
    }
    return self;
}

- (void)execute
{
    NSLog(@"First Execute command called");
    _currentString = [_currentString stringByAppendingString:@"_Changed"];
    [self printString];
}

- (void)undo
{
    NSLog(@"First Undo command called");
    _currentString = _originalString;
    [self printString];
}

- (void)printString
{
     NSLog(@"Current string is equal to %@", _currentString);
}

@end

@implementation SecondCommand

- (id)initWithArguments:(int)aNumber
{
    if (self = [super init]) {
        _originalNumber = aNumber;
        _currentNumber = aNumber;
    }
    return self;
}

- (void)execute
{
    NSLog(@"Second Execute command called");
    _currentNumber++;
    [self printNumber];
}

- (void)undo
{
    NSLog(@"Second Undo command called");
    if (_currentNumber > _originalNumber) {
        _currentNumber--;
    }
    [self printNumber];
}

- (void)printNumber
{
    NSLog(@"Current number is %i", _currentNumber);
}

@end


@implementation CommandExecutor

- (id)init
{
    if (self = [super init]) {
        _commands = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return self;
}

- (void)addCommand:(BaseCommand *)aCommand
{
    [_commands addObject:aCommand];
}

- (void)executeCommands
{
    for (BaseCommand *command in _commands) {
        [command execute];
    }
}

- (void)undoAll
{
    for(BaseCommand *command in _commands) {
        [command undo];
    }
}

@end

@implementation Command

+ (void)test
{
    NSLog(@"Command created");
    
    CommandExecutor *comandExecutor = [[CommandExecutor alloc] init];
    BaseCommand *firstCommand = [[FirstCommand alloc] initWithArguments:@"Init String"];
    BaseCommand *secondCommand = [[SecondCommand alloc] initWithArguments:0];
    [comandExecutor addCommand:firstCommand];
    [comandExecutor addCommand:secondCommand];
    
    [comandExecutor executeCommands];
    [comandExecutor undoAll];
    
}

@end
