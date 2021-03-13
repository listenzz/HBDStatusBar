# HBDStatusBar

官方提供了一套 API 来控制状态栏的显示和隐藏

```objc

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation;

- (UIViewController *)childViewControllerForStatusBarHidden;

- (BOOL)prefersStatusBarHidden;

- (void)setNeedsStatusBarAppearanceUpdate;

```

这一套规则在没有使用 UINavigationBar 之前，是正常的，生活是美好的。但是一旦涉及到 UINavigationBar, 就令人抓狂了，经历过的都懂，无须多言。

本库因此而生，解决有 UINavigationBar 时，隐藏状态栏带来的各种问题。

## Usage

使用  `hbd_statusBarHidden`  取代  `prefersStatusBarHidden`
使用  `hbd_setNeedsStatusBarHiddenUpdate`  取代  `setNeedsStatusBarAppearanceUpdate`

在需要隐藏状态栏的控制器中编写如下代码

```objc
#import <HBDStatusBar/UIViewController+StatusBar.h>

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.hbd_statusBarHidden = YES;
}
```

或者

```objc
- (BOOL)hbd_statusBarHidden {
    return YES;
}
```

这是声明式 API，其它不需要隐藏状态栏的页面什么也不需要做。

如果需要动态隐藏或显示状态栏，在设置  `hbd_statusBarHidden`  后调用 `hbd_setNeedsStatusBarHiddenUpdate` 即可。

本库可以和 UINavigationBar 友好相处

你仍然可以通过 `preferredStatusBarUpdateAnimation` 来指定状态栏显示或隐藏时的动画，仍然可以通过 `childViewControllerForStatusBarHidden` 来指定由哪个子控制器来决定是否隐藏状态栏

如果你遇到 UINavigationBar 的相关问题，请访问 [HBDNavigationBar](https://github.com/listenzz/HBDNavigationBar)。

## 更新至 iOS 13

为了适配 iOS 13, 在需要隐藏状态栏的 UIViewController 中实现如下方法

```objc
- (BOOL)prefersStatusBarHidden {
    if (@available(iOS 13.0, *)) {
        // 返回值和 self.hbd_barHidden 设定的值一致
        // 千万别返回 self.hbd_barHidden，因为 prefersStatusBarHidden 比 viewDidLoad 先执行
        return YES;
    } else {
        // 固定返回 NO, 由 self.hbd_barHidden 决定是否隐藏状态栏
        return NO;
    }
}
```

为什么不用 method swizzle 搞定 prefersStatusBarHidden？

因为我搞不定，如果你搞定了，请务必告诉我。感谢。


## Installation

HBDStatusBar is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HBDStatusBar'
```

## Author

listenzz@163.com

## License

HBDStatusBar is available under the MIT license. See the LICENSE file for more info.
