//
//  MarkRender.h
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Dot.h"
#import "Vertex.h"
#import "Stroke.h"
#import "MarkVisitor.h"

@interface MarkRender : NSObject <MarkVisitor>

- (instancetype)initWithCGContext:(CGContextRef)context;

- (void)visitMark:(id<Mark>)mark;
- (void)visitDot:(Dot *)dot;
- (void)visitVertex:(Vertex *)vertex;
- (void)visitStroke:(Stroke *)stroke;

@end
