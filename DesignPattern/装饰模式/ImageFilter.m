//
//  ImageFilter.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter

- (instancetype)initWithImageComponent:(id<ImageComponent>)component {
    self = [super init];
    if (self) {
        _component = component;
    }
    return self;
}

- (void)apply {
    // Override by subclass
}

- (instancetype)forwardingTargetForSelector:(SEL)aSelector {
    NSString *selectorName = NSStringFromSelector(aSelector);
    if ([selectorName hasPrefix:@"draw"]) {
        [self apply];
    }
    return self.component;
}

@end
