//
//  SetStrokeColorCommand.h
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "Command.h"
#import "SetStrokeColorCommandDelegate.h"

@interface SetStrokeColorCommand : Command

@property (nonatomic, weak) id<SetStrokeColorCommandDelegate> delegate;

- (void)execute;

@end
