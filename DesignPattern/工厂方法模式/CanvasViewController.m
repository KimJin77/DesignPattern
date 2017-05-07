//
//  CanvasViewController.m
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "CanvasViewController.h"
#import "CanvasView.h"
#import "CanvasViewGenerator.h"

@interface CanvasViewController ()

@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CanvasViewGenerator *defaultGenerator = [[CanvasViewGenerator alloc] init];
    [self loadCanvasViewWithGenerator:defaultGenerator];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// MARK: - Loading a CanvasView from a CanvasViewGenerator
- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator {
    [self.canvasView removeFromSuperview];
    CanvasView *aCanvasView = [generator canvasViewWithFrame:self.view.bounds];
    self.canvasView = aCanvasView;
    [self.view addSubview:self.canvasView];
}

@end
