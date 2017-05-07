//
//  FlowerFactory.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "FlowerFactory.h"
#import "FlowerView.h"

@implementation FlowerFactory

- (UIView *)flowerViewWithType:(FlowerType)type {
    if (!self.flowerPool) {
        self.flowerPool = [[NSMutableDictionary alloc] initWithCapacity:FlowerTypeTotalNumberOfFlowerType];
    }
    
    UIView *flowerView = [self.flowerPool objectForKey:[NSNumber numberWithInt:type]];
    if (!flowerView) {
        UIImage *flowerImage;
        switch (type) {
            case FlowerTypeAnemone:
                flowerImage = [UIImage imageNamed:@"Anemone"];
                break;
            case FlowerTypeCosmos:
                flowerImage = [UIImage imageNamed:@"Cosmos"];
                break;
            case FlowerTypeGerberas:
                flowerImage = [UIImage imageNamed:@"Gerberas"];
                break;
            case FlowerTypeHollyhock:
                flowerImage = [UIImage imageNamed:@"Hollyhock"];
                break;
            case FlowerTypeJasmine:
                flowerImage = [UIImage imageNamed:@"Jasmine"];
                break;
            case FlowerTypeZinnia:
                flowerImage = [UIImage imageNamed:@"Zinnia"];
                break;
            default:
                break;
        }
        flowerView = [[FlowerView alloc] initWithImage:flowerImage];
        [self.flowerPool setObject:flowerView forKey:[NSNumber numberWithInt:type]];
    }
    return flowerView;
}

@end
