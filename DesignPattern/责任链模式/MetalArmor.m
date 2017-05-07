//
//  MetalArmor.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "MetalArmor.h"
#import "SwordAttack.h"

@implementation MetalArmor

- (void)handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[SwordAttack class]]) {
        NSLog(@"%@", @"No damage from a sword attack!");
    } else {
        NSLog(@"I don't know this attack: %@", [attack class]);
        [super handleAttack:attack];
    }
}

@end
