//
//  CanvasViewController.h
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CanvasView, CanvasViewGenerator;

@interface CanvasViewController : UIViewController

@property (nonatomic, strong) CanvasView *canvasView;

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator;

@end
