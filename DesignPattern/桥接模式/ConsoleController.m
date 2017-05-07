//
//  ConsoleController.m
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "ConsoleController.h"

@implementation ConsoleController

- (void)setCommand:(ConsoleCommand)command {
    [self.emulator loadInstructionsForCommand:command];
    [self.emulator executeInstructions];
}

@end
