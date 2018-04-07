//
//  ViewManager.m
//  testNow
//
//  Created by yjl on 18/3/25.
//  Copyright © 2018年 yjl. All rights reserved.
//

#import "ViewManager.h"
#import "SMViewController.h"
#import "TKSchoolViewController.h"
#import "CommunityViewController.h"
#import "ShopCartViewController.h"
#import "SelfViewController.h"

static ViewManager* mViewManager;

@implementation ViewManager
{
    UITabBarController* rootTabBarController;
}


#pragma mark ------------------------- init
- (id)init
{
    self = [super init];
    if (self)
    {
        //其他初始化
    }
    return self;
}

+ (instancetype)shareInit
{
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        mViewManager = [[ViewManager alloc] init];
    }) ;
    
    return mViewManager ;
}


- (UITabBarController *)createRootViewController
{
    UINavigationController* SMNavigationController = [[UINavigationController alloc] initWithRootViewController:[[SMViewController alloc] init]];
    SMNavigationController.tabBarItem.title = @"主页";
    
    UINavigationController* TKSchoolNavigationController = [[UINavigationController alloc] initWithRootViewController:[[TKSchoolViewController alloc] init]];
    TKSchoolNavigationController.tabBarItem.title = @"天康学院";
    
    UINavigationController* CommunityNavigationController = [[UINavigationController alloc] initWithRootViewController:[[CommunityViewController alloc] init]];
    CommunityNavigationController.tabBarItem.title = @"社区";
    
    UINavigationController* ShopCartNavigationController = [[UINavigationController alloc] initWithRootViewController:[[ShopCartViewController alloc] init]];
    ShopCartNavigationController.tabBarItem.title = @"购物车";
    
    UINavigationController* SelfNavigationController = [[UINavigationController alloc] initWithRootViewController:[[SelfViewController alloc] init]];
    SelfNavigationController.tabBarItem.title = @"我的";
    
    UITabBarController* rootViewController = [[UITabBarController alloc] init];
    rootViewController.viewControllers = [[NSArray alloc] initWithObjects:SMNavigationController,TKSchoolNavigationController,CommunityNavigationController,ShopCartNavigationController,SelfNavigationController, nil];
    
    rootTabBarController = rootViewController;
    return rootViewController;
}


#pragma mark ---------------------------- viewController push
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    UINavigationController* nowNavVC = [self getNowNavigationController];
    [nowNavVC pushViewController:viewController animated:animated];
}


#pragma mark ---------------------------- another function
- (UINavigationController *)getNowNavigationController
{
    NSUInteger nowTabBarIndex = rootTabBarController.selectedIndex;
    
    if (nowTabBarIndex >= [rootTabBarController.viewControllers count])
    {
        NSLog(@"now TabBarIndex is not ");
        return nil;
    }
    
    if(![[rootTabBarController.viewControllers objectAtIndex:nowTabBarIndex] isKindOfClass:[UINavigationController class]])
    {
        NSLog(@"now NavVC is not");
        return nil;
    }
    return [rootTabBarController.viewControllers objectAtIndex:nowTabBarIndex];
    
}


@end
