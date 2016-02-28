//
//  Interpreter.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - Context

//Context
@interface Context : NSObject
@property (nonatomic, retain) NSString *Input;
@property (nonatomic, retain) NSString *Output;
@end

#pragma mark - Structural Example

//Interpreter pattern -- Structural example
//Abstract Expression
@interface AbstractExpression : NSObject
-(void)InterpretFrom:(Context*)context;
@end

//Terminal Expression
@interface TerminalExpression : AbstractExpression
-(void)InterpretFrom:(Context*)context;
@end

//NonTerminal Expression
@interface NonTerminalExpression : AbstractExpression
-(void)InterpretFrom:(Context*)context;
@end

#pragma mark - Real World Example

// Interpreter pattern -- Real World example
//Real Abstract Expression
@interface RealAbstractExpression : NSObject
-(void)InterpretFrom:(Context*)context;
@property (nonatomic, retain) NSString *One;
@property (nonatomic, retain) NSString *Four;
@property (nonatomic, retain) NSString *Five;
@property (nonatomic, retain) NSString *Nine;
@property (nonatomic) int Multiplier;
@end

//Thousand Expression
@interface ThousandExpression : RealAbstractExpression
-(void)InterpretFrom:(Context*)context;
@end

//Hundred Expression
@interface HundredExpression : RealAbstractExpression
-(void)InterpretFrom:(Context*)context;
@end

//Ten Expression
@interface TenExpression : RealAbstractExpression
-(void)InterpretFrom:(Context*)context;
@end

//One Expression
@interface OneExpression : RealAbstractExpression
-(void)InterpretFrom:(Context*)context;
@end

#pragma mark [Application Interface]

//Application Interface
@interface Interpreter : NSObject
@end