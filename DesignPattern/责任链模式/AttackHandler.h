//
//  AttackHandler.h
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Attack.h"

@interface AttackHandler : NSObject

@property (nonatomic, strong) AttackHandler *nextAttackHandler;

- (void)handleAttack:(Attack *)attack;

@end
