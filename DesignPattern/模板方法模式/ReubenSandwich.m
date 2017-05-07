//
//  ReubenSandwich.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "ReubenSandwich.h"

@implementation ReubenSandwich

- (void)prepareBread {
    [self curRyeBread];
}

- (void)addMeat {
    [self addCornBeef];
}

- (void)addCondiments {
    [self addSauerkraut];
    [self addThousandIslandDressing];
    [self addSwissCheese];
}

// MARK: - ReubenSandwich Specific Methods
- (void)curRyeBread {
    
}

- (void)addCornBeef {
    
}

- (void)addSauerkraut {
    
}

- (void)addThousandIslandDressing {
    
}

- (void)addSwissCheese {
    
}

@end
