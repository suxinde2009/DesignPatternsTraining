//
//  Command.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Command.h"

#pragma mark Commands

//Base Command
@implementation BaseCommand
-(void)execute{}
-(void)undo{}
@end

//First Command
@implementation FirstCommand
-(id) initWithArguments:(NSString *)anArgument
{
    self = [super init];
    _originalString =  anArgument;
    _currentString = anArgument;
    
    return self;
}
-(void) execute
{
    NSLog(@"First Execute command called");
    _currentString = [_originalString stringByAppendingString:@" Changed"];
    [self printString];
}

-(void) undo
{
    NSLog(@"First Undo command called");
    _currentString = _originalString;
    [self printString];
}

-(void) printString
{
    NSLog(@"Current string is equal to %@", _currentString);
}
@end

//Second Command
@implementation SecondCommand
-(id) initWithArguments:(int)aNumber
{
    self = [super init];
    
    _originalNumber = aNumber;
    _currentNumber = aNumber;
    
    return self;
}

-(void) execute
{
    NSLog(@"Second Execute command called");
    _currentNumber++;
    [self printNumber];
}

-(void) undo
{
    NSLog(@"Second Undo command called");
    if (_currentNumber > _originalNumber)
        _currentNumber--;
    [self printNumber];
}

-(void) printNumber
{
    NSLog(@"Current number is %i", _currentNumber);
}
@end

#pragma mark Executor

//Command Executor
@implementation CommandExecutor
-(id) init
{
    self = [super init];
    _arrayOfCommands = [NSMutableArray new];
    return self;
}

-(void) addCommand:(BaseCommand *) aCommand
{
    [_arrayOfCommands addObject:aCommand];
}

-(void) executeCommands
{
    for (BaseCommand *command in _arrayOfCommands)
    {
        [command execute];
    }
}

-(void) undoAll
{
    for (BaseCommand *command in _arrayOfCommands)
    {
        [command undo];
    }
}
@end

#pragma mark [Application Interface]

//Application Interface
@implementation Command
- (id)init
{
    NSLog(@"Command created");
    
    CommandExecutor *commandExecutor = [CommandExecutor new];
    BaseCommand *firstCommand = [[FirstCommand alloc] initWithArguments:@"Initial String"];
    BaseCommand *secondCommand = [[SecondCommand alloc] initWithArguments:0];
    [commandExecutor addCommand:firstCommand];
    [commandExecutor addCommand:secondCommand];
    
    [commandExecutor executeCommands];
    [commandExecutor undoAll];
    
    NSLog(@"\n");
    return self;
}
@end
