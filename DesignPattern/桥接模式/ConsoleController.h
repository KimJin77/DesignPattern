//
//  ConsoleController.h
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleCommands.h"
#import "ConsoleEmulator.h"

@interface ConsoleController : NSObject

@property (nonatomic, strong) ConsoleEmulator *emulator;

- (void)setCommand:(ConsoleCommand)command;

@end
