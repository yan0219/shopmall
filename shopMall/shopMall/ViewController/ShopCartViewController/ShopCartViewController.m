//
//  ShopCartViewController.m
//  shopMall
//
//  Created by yjl on 18/3/31.
//  Copyright © 2018年 yjl. All rights reserved.
//

#import "ShopCartViewController.h"

@interface ShopCartViewController ()

@end

@implementation ShopCartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createNavigationItemWithTitle:@"购物车" IsHaveBack:NO];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view from its nib.
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
