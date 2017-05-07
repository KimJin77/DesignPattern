//
//  ChasingGame.m
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "ChasingGame.h"
#import "Character.h"
#import "CharacterBuilder.h"

@implementation ChasingGame

- (Character *)createPlayer:(CharacterBuilder *)builder {
    [builder buildNewCharacter];
    [builder buildStrength:50.0];
    [builder buildStamina:25.0];
    [builder buildAgility:65.0];
    [builder buildIntelligence:75.0];
    [builder buildAggressivencess:35.0];
    return builder.character;
}
- (Character *)createEnemy:(CharacterBuilder *)builder {
    [builder buildNewCharacter];
    [builder buildStrength:10.0];
    [builder buildStamina:2.0];
    [builder buildAgility:35.0];
    [builder buildIntelligence:45.0];
    [builder buildAggressivencess:235.0];
    return builder.character;
}

@end
