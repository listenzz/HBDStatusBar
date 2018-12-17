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

- (BOOL)hidesBottomBarWhenPushed {
    return (self.navigationController.topViewController != self);
}

@end
