//
//  CustomTextField.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL)validate {
    NSError *error = nil;
    BOOL validationResult = [self.inputValidator validateInput:self error:&error];
    if (!validationResult) {
        // Do something with error
    }
    return validationResult;
}

@end
