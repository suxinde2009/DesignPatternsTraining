//
//  Strategy.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Strategy.h"

#pragma mark Strategy

//Basic Strategy
@implementation BasicStrategy
-(void) actionCharacter1{}
-(void) actionCharacter2{}
-(void) actionCharacter3{}
@end

//Attack Strategy
@implementation AttackStrategy
-(void) actionCharacter1
{
    NSLog(@"Character 1: Attack all enemies!");
}
-(void) actionCharacter2
{
    NSLog(@"Character 2: Attack all enemies!");
}
-(void) actionCharacter3
{
    NSLog(@"Character 3: Attack all enemies!");
}
@end

//Defence Strategy
@implementation DefenceStrategy
-(void) actionCharacter1
{
    NSLog(@"Character 1: Attack all enemies!");
}
-(void) actionCharacter2
{
    NSLog(@"Character 2: Healing Character 1!");
}
-(void) actionCharacter3
{
    NSLog(@"Character 3: Protecting Character 2!");
}
@end

#pragma mark Player

//Player
@implementation Player
-(void) makeAction
{
    [self._strategy actionCharacter1];
    [self._strategy actionCharacter2];
    [self._strategy actionCharacter3];
}
-(void) changeStrategy:(BasicStrategy *)strategy
{
    NSLog(@"Applying %@", [strategy class]);
    self._strategy = strategy;
}
@end

#pragma mark [Application Interface]

//[Application Interface]
@implementation Strategy
- (id)init
{
    NSLog(@"Strategy Created");
    
    Player *p = [Player new];
    AttackStrategy *a = [AttackStrategy new];
    DefenceStrategy *d = [DefenceStrategy new];
    [p changeStrategy:a];
    [p makeAction];
    [p changeStrategy:d];
    [p makeAction];
    
    NSLog(@"\n");
    return self;
}
@end

