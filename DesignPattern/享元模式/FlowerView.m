//
//  FlowerView.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "FlowerView.h"

@implementation FlowerView

- (void)drawRect:(CGRect)rect {
    [self.image drawInRect:rect];
}

@end
