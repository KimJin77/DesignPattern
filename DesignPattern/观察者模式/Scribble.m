//
//  Scribble.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "Scribble.h"
#import "Stroke.h"

@interface Scribble ()
@property (nonatomic, strong) id<Mark> mark;
@end

@implementation Scribble

- (instancetype)init {
    self = [super init];
    if (self) {
        _mark = [[Stroke alloc] init];
    }
    return self;
}

// MARK: - Methods for Mark management
- (void)addMark:(id<Mark>)aMark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark {
    [self willChangeValueForKey:@"mark"];
    
    if (shouldAddToPreviousMark) {
        [[self.mark lastChild] addMark:aMark];
    } else {
        [self.mark addMark:aMark];
    }
    
    [self didChangeValueForKey:@"mark"];
}

- (void)removeMark:(id<Mark>)aMark {
    if (aMark == self.mark) {
        return;
    }
    
    [self willChangeValueForKey:@"mark"];
    [self.mark removeMark:aMark];
    [self didChangeValueForKey:@"mark"];
}

@end
