//
//  Stroke.m
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "Stroke.h"

@interface Stroke ()
@property (nonatomic, strong) NSMutableArray<id<Mark>> *children;
@end

@implementation Stroke

@dynamic location;

- (instancetype)init {
    self = [super init];
    if (self) {
        _children = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

- (CGPoint)location {
    if (self.children.count > 0) {
        return [[self.children firstObject] location];
    }
    return CGPointZero;
}

- (void)setLocation:(CGPoint)location {
    
}

- (void)addMark:(id<Mark>)mark {
    [self.children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    if ([self.children containsObject:mark]) {
        [self.children removeObject:mark];
    } else {
        [self.children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    if (index > self.children.count) {
        return nil;
    }
    return self.children[index];
}

- (id<Mark>)lastChild {
    return self.children.lastObject;
}

- (NSUInteger)count {
    return self.children.count;
}

// MARK: - NSCopying Method
- (instancetype)copyWithZone:(NSZone *)zone {
    Stroke *strokeCopy = [[[self class] allocWithZone:zone] init];
    // Copy color
    strokeCopy.color = [UIColor colorWithCGColor:[self.color CGColor]];
    
    // Copy size
    strokeCopy.size = self.size;
    
    // Copy children
    for (id<Mark> mark in self.children) {
        id<Mark> markCopy = [mark copy];
        [strokeCopy addMark:markCopy];
        markCopy = nil;
    }
    return strokeCopy;
}

@end
