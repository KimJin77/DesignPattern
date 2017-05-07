//
//  CoordinatingController.h
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ButtonTag) {
    ButtonTagDefault,
    ButtonTagOpenPaletteView,
    ButtonTagOpenThumbnailView,
};

@interface CoordinatingController : NSObject

@property (nonatomic, readonly) UIViewController *activeViewController;
@property (nonatomic, readonly) UIViewController *canvasViewController;

+ (instancetype)sharedInstance;
- (IBAction)requestViewChangeByObject:(id)object;

@end
