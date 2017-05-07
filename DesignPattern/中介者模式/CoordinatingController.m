//
//  CoordinatingController.m
//  DesignPattern
//
//  Created by Kim on 2017/5/7.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "CoordinatingController.h"

@interface CoordinatingController ()
@property (nonatomic, readwrite, strong) UIViewController *activeViewController;
@end

@implementation CoordinatingController

+ (instancetype)sharedInstance {
    static CoordinatingController *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[[self class] alloc] init];
    });
    return _instance;
}

// MARK: - A method for view transition
- (IBAction)requestViewChangeByObject:(id)object {
    if ([object isKindOfClass:[UIBarButtonItem class]]) {
        switch ([(UIBarButtonItem *)object tag]) {
            case ButtonTagOpenPaletteView: {
                UIViewController *paletteController = [[UIViewController alloc] init];
                [self.canvasViewController presentViewController:paletteController animated:YES completion:nil];
                self.activeViewController = paletteController;
            }
                break;
            case ButtonTagOpenThumbnailView: {
                UIViewController *thumbnailController = [[UIViewController alloc] init];
                [self.canvasViewController presentViewController:thumbnailController animated:YES completion:nil];
                self.activeViewController = thumbnailController;
            }
                break;
            default: {
                [self.canvasViewController dismissViewControllerAnimated:YES completion:nil];
                self.activeViewController = self.canvasViewController;
            }
                break;
        }
    } else {
        [self.canvasViewController dismissViewControllerAnimated:YES completion:nil];
        self.activeViewController = self.canvasViewController;
    }
}

@end
