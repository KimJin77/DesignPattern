//
//  MarkRender.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "MarkRender.h"

@interface MarkRender ()
@property (nonatomic, assign) CGContextRef context;
@property (nonatomic, assign) BOOL shouldMoveContextToDot;
@end

@implementation MarkRender

- (instancetype)initWithCGContext:(CGContextRef)context {
    self = [super init];
    if (self) {
        _context = context;
        _shouldMoveContextToDot = YES;
    }
    return self;
}

- (void)visitMark:(id<Mark>)mark {
    
}

- (void)visitDot:(Dot *)dot {
    CGFloat x = dot.location.x;
    CGFloat y = dot.location.y;
    CGFloat frameSize = dot.size;
    CGRect frame = CGRectMake(x - frameSize / 2.0, y - frameSize / 2.0, frameSize, frameSize);
    CGContextSetFillColorWithColor(self.context, [dot.color CGColor]);
    CGContextFillRect(self.context, frame);
}

- (void)visitVertex:(Vertex *)vertex {
    CGFloat x = vertex.location.x;
    CGFloat y = vertex.location.y;
    
    if (self.shouldMoveContextToDot) {
        CGContextMoveToPoint(self.context, x, y);
        self.shouldMoveContextToDot = NO;
    } else {
        CGContextAddLineToPoint(self.context, x, y);
    }
}

- (void)visitStroke:(Stroke *)stroke {
    CGContextSetStrokeColorWithColor(self.context, [stroke.color CGColor]);
    CGContextSetLineWidth(self.context, stroke.size);
    CGContextSetLineCap(self.context, kCGLineCapRound);
    CGContextStrokePath(self.context);
    self.shouldMoveContextToDot = YES;
}

@end
