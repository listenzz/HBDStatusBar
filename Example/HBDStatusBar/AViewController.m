//
//  AViewController.m
//  HBDStatusBar_Example
//
//  Created by Listen on 2018/12/17.
//  Copyright © 2018 Listen. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (BOOL)hidesBottomBarWhenPushed {
    return (self.navigationController.topViewController != self);
}

@end
