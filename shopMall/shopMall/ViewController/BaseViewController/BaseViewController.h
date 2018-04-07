//
//  BaseViewController.h
//  shopMall
//
//  Created by yjl on 18/3/31.
//  Copyright © 2018年 yjl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewManager.h"

@interface BaseViewController : UIViewController

- (void)createNavigationItemWithTitle:(NSString*)NavTitle IsHaveBack:(BOOL)isHaveBack;

@end
