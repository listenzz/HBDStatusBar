Pod::Spec.new do |s|
  s.name             = 'HBDStatusBar'
  s.version          = '1.0.0'
  s.summary          = 'A library handling status bar hidden'
  s.description      = <<-DESC
A library handling status bar hidden.
                       DESC
  s.homepage         = 'https://github.com/listenzz/HBDStatusBar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Listen' => 'listenzz@163.com' }
  s.source           = { :git => 'https://github.com/listenzz/HBDStatusBar.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'HBDStatusBar/Classes/**/*'
  s.public_header_files = 'HBDStatusBar/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
