//
//  FlowerFactory.h
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, FlowerType) {
    FlowerTypeAnemone,
    FlowerTypeCosmos,
    FlowerTypeGerberas,
    FlowerTypeHollyhock,
    FlowerTypeJasmine,
    FlowerTypeZinnia,
    FlowerTypeTotalNumberOfFlowerType
};

@interface FlowerFactory : NSObject

@property (nonatomic, strong) NSMutableDictionary *flowerPool;

- (UIView *)flowerViewWithType:(FlowerType)type;

@end
