//
//  ViewManager.h
//  testNow
//
//  Created by yjl on 18/3/25.
//  Copyright © 2018年 yjl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface ViewManager : NSObject


+ (instancetype)shareInit;

- (UITabBarController *)createRootViewController;

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;

@end
