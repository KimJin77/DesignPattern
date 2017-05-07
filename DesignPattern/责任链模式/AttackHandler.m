//
//  AttackHandler.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "AttackHandler.h"

@implementation AttackHandler

- (void)handleAttack:(Attack *)attack {
    [self.nextAttackHandler handleAttack:attack];
}

@end
