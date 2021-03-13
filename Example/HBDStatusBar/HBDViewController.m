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

- (void)viewDidLoad {
    [super viewDidLoad];
    self.hbd_statusBarHidden = YES;
    self.hbd_barHidden = YES;
}

- (BOOL)prefersStatusBarHidden {
    // 暂时找不到方法 method swizzle, 如果你知道，请告诉我
    if (@available(iOS 13.0, *)) {
        // 返回值和 self.hbd_barHidden 设定的值一致
        // 千万别返回 self.hbd_barHidden，因为 prefersStatusBarHidden 比 viewDidLoad 先执行
        return YES;
    } else {
        // 固定返回 NO, 由 self.hbd_barHidden 决定是否隐藏状态栏
        return NO;
    }
}

- (BOOL)hidesBottomBarWhenPushed {
    return (self.navigationController.topViewController != self);
}

@end
