//
//  NumericInputValidator.h
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "InputValidator.h"

@interface NumericInputValidator : InputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error;

@end
