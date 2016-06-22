//
//  StandardCharacterBuilder.m
//  BuilderDemo01
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "StandardCharacterBuilder.h"

@implementation StandardCharacterBuilder

- (CharacterBuilder *)buildStrength:(float)value
{
    // update the protection value of the character
    mCharacter.protection *= value;
    
    // update the power value of the character
    mCharacter.power *= value;
    
    // finally set the strength value and return this builder
    return [super buildStrength:value];
}


- (CharacterBuilder *)buildStamina:(float) value
{
    // update the protection value of the character
    mCharacter.protection *= value;
    
    // update the power value of the character
    mCharacter.power *= value;
    
    // finally set the strength value and return this builder
    return [super buildStamina:value];
}

- (CharacterBuilder *)buildIntelligence:(float) value
{
    // update the protection value of the character
    mCharacter.protection *= value;
    
    // update the power value of the character
    mCharacter.power /= value;
    
    // finally set the strength value and return this builder
    return [super buildIntelligence:value];
}

- (CharacterBuilder *) buildAgility:(float) value
{
    // update the protection value of the character
    mCharacter.protection *= value;
    
    // update the power value of the character
    mCharacter.power /= value;
    
    // finally set the strength value and return this builder
    return [super buildAgility:value];
}

- (CharacterBuilder *) buildAggressiveness:(float) value
{
    // update the protection value of the character
    mCharacter.protection /= value;
    
    // update the power value of the character
    mCharacter.power *= value;
    
    // finally set the strength value and return this builder
    return [super buildAggressiveness:value];
}


@end
