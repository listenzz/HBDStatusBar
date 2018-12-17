# HBDStatusBar


非官方推荐方式隐藏状态栏，解决有 UINavigationBar 时，隐藏状态栏带来的各种问题。

和官方一样，暂不支持刘海屏隐藏状态栏

## Usage

在需要隐藏状态栏的控制器中编写如下代码

```objc
#import <HBDStatusBar/UIViewController+StatusBar.h>

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.hbd_statusBarHidden = YES;
}
```

这是声明式 API，其它不需要隐藏状态栏的页面什么也不需要做。

在来电模式，状态栏会显示出来。


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
