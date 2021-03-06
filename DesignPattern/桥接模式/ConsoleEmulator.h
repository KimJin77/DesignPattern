//
//  ConsoleEmulator.h
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleCommands.h"

@interface ConsoleEmulator : NSObject

- (void)loadInstructionsForCommand:(ConsoleCommand)command;
- (void)executeInstructions;

@end
