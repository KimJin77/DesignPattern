//
//  CharacterBuilder.m
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "CharacterBuilder.h"

@interface CharacterBuilder ()
@property (nonatomic, readwrite) Character *character;
@end

@implementation CharacterBuilder

- (CharacterBuilder *)buildNewCharacter {
    _character = [[Character alloc] init];
    return self;
}

- (CharacterBuilder *)buildStrength:(float)value {
    _character.strength = value;
    return self;
}

- (CharacterBuilder *)buildStamina:(float)value {
    _character.stamina = value;
    return self;
}

- (CharacterBuilder *)buildIntelligence:(float)value {
    _character.intelligence = value;
    return self;
}

- (CharacterBuilder *)buildAgility:(float)value {
    _character.agility = value;
    return self;
}

- (CharacterBuilder *)buildAggressivencess:(float)value {
    _character.aggressivences = value;
    return self;
}

@end
