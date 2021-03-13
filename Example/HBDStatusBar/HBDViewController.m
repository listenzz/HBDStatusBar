//
//  HBDViewController.m
//  HBDStatusBar
//
//  Created by Listen on 12/17/2018.
//  Copyright (c) 2018 Listen. All rights reserved.
//

#import "HBDViewController.h"
#import <HBDStatusBar/UIViewController+StatusBar.h>
#import <HBDNavigationBar/UIViewController+HBD.h>

@interface HBDViewController ()

@end

@implementation HBDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.hbd_statusBarHidden = YES;
    self.hbd_barHidden = YES;
}

- (BOOL)prefersStatusBarHidden {
    // 暂时找不到方法 method swizzle, 如果你知道，请告诉我
    if (@available(iOS 13.0, *)) {
        // 按正常流程走
        return YES;
    } else {
        // 委托给 self.hbd_barHidden
        return NO;
    }
}

- (BOOL)hidesBottomBarWhenPushed {
    return (self.navigationController.topViewController != self);
}

@end
