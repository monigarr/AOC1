//
//  AppDelegate.h
//  tabbased
//
//  Created by Monica Peters on 7/31/12.
//  Copyright (c) 2012 Web & Mobile Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
