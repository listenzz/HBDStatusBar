//
//  UIViewController+StatusBar.h
//
//  Created by Listen on 2018/12/17.
//  Copyright © 2018年 Listen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (StatusBar)

@property (nonatomic, assign) BOOL hbd_statusBarHidden;
@property (nonatomic, assign, readonly) BOOL hbd_inCall;

- (void)setStatusBarHidden:(BOOL)hidden;

@end

NS_ASSUME_NONNULL_END
