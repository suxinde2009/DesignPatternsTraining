//
//  CharacterBuilder.m
//  BuilderDemo01
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "CharacterBuilder.h"

@implementation CharacterBuilder

- (Character *)character
{
    return mCharacter;
}


- (CharacterBuilder *)buildNewCharacter
{
    mCharacter = nil;
    mCharacter = [[Character alloc] init];
    return self;
}

- (CharacterBuilder *)buildStrength:(float)value
{
    mCharacter.strength = value;
    return self;
}

- (CharacterBuilder *)buildStamina:(float)value
{
    mCharacter.stamina = value;
    return self;
}

- (CharacterBuilder *)buildIntelligence:(float)value
{
    mCharacter.intelligence = value;
    return self;
}

- (CharacterBuilder *)buildAgility:(float)value
{
    mCharacter.agility = value;
    return self;
}

- (CharacterBuilder *)buildAggressiveness:(float)value
{
    mCharacter.aggressiveness = value;
    return self;
}

@end
