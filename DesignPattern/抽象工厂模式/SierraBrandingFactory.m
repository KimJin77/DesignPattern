//
//  SierraBrandingFactory.m
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "SierraBrandingFactory.h"
#import "SierraView.h"
#import "SierraButton.h"
#import "SierraToolbar.h"

@implementation SierraBrandingFactory

- (UIView *)brandedView {
    return [[SierraView alloc] init];
}

- (UIButton *)brandedButton {
    return [[SierraButton alloc] init];
}

- (UIToolbar *)brandedToolbar {
    return [[SierraToolbar alloc] init];
}

@end
