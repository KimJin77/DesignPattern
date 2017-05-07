//
//  CarDriver.m
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "CarDriver.h"
#import "Taximeter.h"
#import "Car.h"

@implementation CarDriver

- (void)driverToLocation:(CGPoint)x {
    Taximeter *meter = [[Taximeter alloc] init];
    [meter start];
    
    Car *car = [[Car alloc] init];
    [car releaseBrakes];
    [car changeGears];
    [car pressAccelerator];
    
    [car releaseAccelerator];
    [car pressBrakes];
    [meter stop];
}

@end
