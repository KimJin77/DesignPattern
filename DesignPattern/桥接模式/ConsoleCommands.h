//
//  ConsoleCommands.h
//  Painter
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ConsoleCommand) {
    ConsoleCommandUp,
    ConsoleCommandDown,
    ConsoleCommandLeft,
    ConsoleCommandRight,
    ConsoleCommandSelect,
    ConsoleCommandStart,
    ConsoleCommandAction1,
    ConsoleCommandAction2,
};

@interface ConsoleCommands : NSObject

@end
