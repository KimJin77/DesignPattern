//
//  PaperCanvasView.m
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "PaperCanvasView.h"

@implementation PaperCanvasView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIImage *image = [UIImage imageNamed:@"xxx"];
        UIImageView *backgroundView = [[UIImageView alloc] initWithImage:image];
        [self addSubview:backgroundView];
    }
    return self;
}

@end
