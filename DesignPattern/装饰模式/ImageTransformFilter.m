//
//  ImageTransformFilter.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "ImageTransformFilter.h"

@implementation ImageTransformFilter

- (instancetype)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform {
    self = [super initWithImageComponent:component];
    if (self) {
        _transform = transform;
    }
    return self;
}

- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextConcatCTM(context, self.transform);
}

@end
