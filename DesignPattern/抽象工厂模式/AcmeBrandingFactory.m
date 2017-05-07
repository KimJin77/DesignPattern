//
//  AcmeBrandingFactory.m
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "AcmeBrandingFactory.h"
#import "AcmeView.h"
#import "AcmeButton.h"
#import "AcmeToolbar.h"

@implementation AcmeBrandingFactory

- (UIView *)brandedView {
    return [[AcmeView alloc] init];
}

- (UIButton *)brandedButton {
    return [[AcmeButton alloc] init];
}

- (UIToolbar *)brandedToolbar {
    return [[AcmeToolbar alloc] init];
}

@end
