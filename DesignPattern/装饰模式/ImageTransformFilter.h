//
//  ImageTransformFilter.h
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageTransformFilter : ImageFilter

@property (nonatomic, assign) CGAffineTransform transform;

- (instancetype)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform;
- (void)apply;

@end
