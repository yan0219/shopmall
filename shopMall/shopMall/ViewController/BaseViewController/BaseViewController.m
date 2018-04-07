//
//  BaseViewController.m
//  shopMall
//
//  Created by yjl on 18/3/31.
//  Copyright © 2018年 yjl. All rights reserved.
//

#import "BaseViewController.h"


@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createNavigationItemWithTitle:(NSString *)NavTitle IsHaveBack:(BOOL)isHaveBack
{
    self.navigationItem.title = NavTitle;
    if (isHaveBack)
    {
        self.navigationItem.hidesBackButton = NO;
    }
    else
    {
        self.navigationItem.hidesBackButton = YES;
    }
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
