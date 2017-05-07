//
//  BrandViewController.m
//  DesignPattern
//
//  Created by Kim on 2017/5/6.
//  Copyright © 2017年 Kim. All rights reserved.
//

#import "BrandViewController.h"
#import "BrandingFactory.h"

@interface BrandViewController ()

@end

@implementation BrandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BrandingFactory *factory = [BrandingFactory factory];
    UIView *view = [factory brandedView];
    UIButton *button = [factory brandedButton];
    UIToolbar *toolbar = [factory brandedToolbar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
