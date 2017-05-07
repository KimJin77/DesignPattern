//
//  SetStrokeColorCommandDelegate.h
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Command.h"

@class SetStrokeColorCommand;

@protocol SetStrokeColorCommandDelegate <NSObject>

- (void)command:(SetStrokeColorCommand *)command didRequestColorComponentsForRed:(CGFloat *)red green:(CGFloat *)green blue:(CGFloat *)blue;
- (void)command:(SetStrokeColorCommand *)command didFinishColorUpdateWithColor:(UIColor *)color;

@end
