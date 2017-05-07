//
//  SetStrokeColorCommand.m
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "SetStrokeColorCommand.h"

@implementation SetStrokeColorCommand

- (void)execute {
    CGFloat redValue = 0;
    CGFloat greenValue = 0;
    CGFloat blueValue = 0;
    
    [self.delegate command:self didRequestColorComponentsForRed:&redValue green:&greenValue blue:&blueValue];
    
    UIColor *color = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
    
    // Set current controller
    // ...
    
    [self.delegate command:self didFinishColorUpdateWithColor:color];
}

@end
