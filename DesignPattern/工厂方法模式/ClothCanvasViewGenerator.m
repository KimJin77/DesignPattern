//
//  ClothCanvasViewGenerator.m
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "ClothCanvasViewGenerator.h"
#import "ClothCanvasView.h"

@implementation ClothCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame {
    return [[ClothCanvasView alloc] initWithFrame:aFrame];
}

@end
