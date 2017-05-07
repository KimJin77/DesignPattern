//
//  CustomTextField.h
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

@interface CustomTextField : UITextField

@property (nonatomic, strong) InputValidator *inputValidator;

- (BOOL)validate;

@end
