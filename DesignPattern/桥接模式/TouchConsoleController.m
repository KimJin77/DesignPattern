//
//  TouchConsoleController.m
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "TouchConsoleController.h"
#import "ConsoleEmulator.h"

@implementation TouchConsoleController

- (void)up {
    [super setCommand:ConsoleCommandUp];
}

- (void)down {
    [super setCommand:ConsoleCommandDown];
}

- (void)left {
    [super setCommand:ConsoleCommandLeft];
}

- (void)right {
    [super setCommand:ConsoleCommandRight];
}

- (void)select {
    [super setCommand:ConsoleCommandSelect];
}

- (void)start {
    [super setCommand:ConsoleCommandStart];
}

- (void)action1 {
    [super setCommand:ConsoleCommandAction1];
}

- (void)action2 {
    [super setCommand:ConsoleCommandAction2];
}

@end
