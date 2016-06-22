//
//  StandardCharacterBuilder.h
//  BuilderDemo01
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CharacterBuilder.h"

@interface StandardCharacterBuilder : CharacterBuilder

// overriden methods from the abstract CharacterBuilder
- (CharacterBuilder *)buildStrength:(float) value;
- (CharacterBuilder *)buildStamina:(float) value;
- (CharacterBuilder *)buildIntelligence:(float) value;
- (CharacterBuilder *)buildAgility:(float) value;
- (CharacterBuilder *)buildAggressiveness:(float) value;

@end
