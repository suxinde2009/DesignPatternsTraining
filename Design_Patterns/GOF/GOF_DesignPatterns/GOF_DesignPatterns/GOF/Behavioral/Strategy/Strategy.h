//
//  Strategy.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Strategy

//Basic Strategy
@interface BasicStrategy : NSObject
-(void) actionCharacter1;
-(void) actionCharacter2;
-(void) actionCharacter3;
@end

//Attack Strategy
@interface AttackStrategy : BasicStrategy
@end

//Defence Strategy
@interface DefenceStrategy : BasicStrategy
@end

#pragma mark Player

//Player
@interface Player : NSObject
@property (nonatomic, strong) BasicStrategy *_strategy;
-(void) makeAction;
-(void) changeStrategy:(BasicStrategy *) strategy;
@end

#pragma mark [Application Interface]

//Application Interface
@interface Strategy : NSObject
@end

