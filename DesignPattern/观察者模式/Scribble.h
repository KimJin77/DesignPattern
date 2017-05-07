//
//  Scribble.h
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Scribble : NSObject

- (void)addMark:(id<Mark>)aMark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark;
- (void)removeMark:(id<Mark>)aMark;

@end
