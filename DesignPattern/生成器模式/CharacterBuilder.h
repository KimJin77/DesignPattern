//
//  CharacterBuilder.h
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

@interface CharacterBuilder : NSObject

@property (nonatomic, readonly) Character *character;

- (CharacterBuilder *)buildNewCharacter;
- (CharacterBuilder *)buildStrength:(float)value;
- (CharacterBuilder *)buildStamina:(float)value;
- (CharacterBuilder *)buildIntelligence:(float)value;
- (CharacterBuilder *)buildAgility:(float)value;
- (CharacterBuilder *)buildAggressivencess:(float)value;

@end
