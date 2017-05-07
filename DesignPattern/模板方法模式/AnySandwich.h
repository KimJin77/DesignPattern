//
//  AnySandwich.h
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnySandwich : NSObject

- (void)make;
- (void)prepareBread;
- (void)putBreadOnPlate;
- (void)addMeat;
- (void)addCondiments;
- (void)serve;

@end
