//
//  Vertex.m
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

- (instancetype)initWithLocation:(CGPoint)aLocation {
    self = [super init];
    if (self) {
        _location = aLocation;
    }
    return self;
}

// 默认属性什么也不做
- (void)setColor:(UIColor *)color {}
- (UIColor *)color { return nil; }
- (void)setSize:(CGFloat)size {}
- (CGFloat)size { return 0.0; }

// Mark操作也什么都不做
- (void)addMark:(id<Mark>)mark {}
- (void)removeMark:(id<Mark>)mark {}
- (id<Mark>)childMarkAtIndex:(NSUInteger)index { return nil; }
- (id<Mark>)lastChild { return nil; }
- (NSUInteger)count { return 0; }
- (NSEnumerator *)enumerator { return nil; }

// MARK: - NSCopying Method
- (instancetype)copyWithZone:(NSZone *)zone {
    // 使用[self class]来生成新的实例是因为希望子类也能够复用这个复制方法
    Vertex *vertex = [[[self class] allocWithZone:zone] initWithLocation: _location];
    return vertex;
}

@end
