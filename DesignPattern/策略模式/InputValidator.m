//
//  InputValidator.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "InputValidator.h"

@implementation InputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
    if (error) {
        *error = nil;
    }
    return NO;
}

@end
