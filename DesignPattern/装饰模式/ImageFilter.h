//
//  ImageFilter.h
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIImage+ImageComponent.h"

@interface ImageFilter : NSObject

@property (nonatomic, strong) id<ImageComponent> component;

- (void)apply;
- (instancetype)initWithImageComponent:(id<ImageComponent>)component;
- (instancetype)forwardingTargetForSelector:(SEL)aSelector;

@end
