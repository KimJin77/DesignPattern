//
//  StandardCharacterBuilder.m
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "StandardCharacterBuilder.h"

@implementation StandardCharacterBuilder

- (CharacterBuilder *)buildStrength:(float)value {
    self.character.protection *= value;
    self.character.power *= value;
    return [super buildStrength:value];
}

- (CharacterBuilder *)buildStamina:(float)value {
    self.character.protection *= value;
    self.character.power *= value;
    return [super buildStamina:value];
}

- (CharacterBuilder *)buildIntelligence:(float)value {
    self.character.protection *= value;
    self.character.power /= value;
    return [super buildIntelligence:value];
}

- (CharacterBuilder *)buildAgility:(float)value {
    self.character.protection *= value;
    self.character.power /= value;
    return [super buildAgility:value];
}

- (CharacterBuilder *)buildAggressivencess:(float)value {
    self.character.protection /= value;
    self.character.power *= value;
    return [super buildAggressivencess:value];
}

@end
