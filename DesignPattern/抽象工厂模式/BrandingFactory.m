//
//  BrandingFactory.m
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "BrandingFactory.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory

+ (BrandingFactory *)factory {
#if defined (USE_ACME)
    return [[AcmeBrandingFactory alloc] init];
#elif defined (USE_SIERAA)
    return [[SierraBrandingFactory alloc] init];
#else
    return nil;
#endif
}

- (UIView *)brandedView {
    return nil;
}

- (UIButton *)brandedButton {
    return nil;
}

- (UIToolbar *)brandedToolbar {
    return nil;
}

@end
