//
//  GianosViewController.h
//  verticalTabBar
//
//  Created by Gianos on 13/09/13.
//  Copyright (c) 2013 Gianos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VerticalTabBarController/FSVerticalTabBarController.h"

@interface GianosViewController : FSVerticalTabBarController<FSTabBarControllerDelegate>


@property (strong, nonatomic) NSMutableArray* navigationMap;

@end
