//
//  StandardCharacterBuilder.h
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "CharacterBuilder.h"

@interface StandardCharacterBuilder : CharacterBuilder

- (CharacterBuilder *)buildStrength:(float)value;
- (CharacterBuilder *)buildStamina:(float)value;
- (CharacterBuilder *)buildIntelligence:(float)value;
- (CharacterBuilder *)buildAgility:(float)value;
- (CharacterBuilder *)buildAggressivencess:(float)value;

@end
