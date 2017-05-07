//
//  Character.m
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "Character.h"

@implementation Character

- (instancetype)init {
    self = [super init];
    if (self) {
        _protection = 1.0;
        _power = 1.0;
        _strength = 1.0;
        _stamina = 1.0;
        _intelligence = 1.0;
        _agility = 1.0;
        _aggressivences = 1.0;
    }
    return self;
}

@end
