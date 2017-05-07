//
//  GameBoyEmulator.h
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "ConsoleEmulator.h"

@interface GameBoyEmulator : ConsoleEmulator
- (void)loadInstructionsForCommand:(ConsoleCommand)command;
- (void)executeInstructions;
@end
