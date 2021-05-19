#
# Be sure to run `pod lib lint KHWKWebViewControllerKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KHWKWebViewControllerKit'
  s.version          = '0.1.0'
  s.summary          = 'KHWKWebViewControllerKit 是一个WKWebView的网页控制器实现'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  KHWKWebViewControllerKit 是一个WKWebView的网页控制器实现
                       DESC

  s.homepage         = 'https://github.com/keroushe/KHWKWebViewControllerKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'keroushe' => '935823671@qq.com' }
  s.source           = { :git => 'https://github.com/keroushe/KHWKWebViewControllerKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'KHWKWebViewControllerKit/Classes/**/*'
  
  s.resource     = 'KHWKWebViewControllerKit/Assets/KHWKWebView.bundle'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'WebKit'
  s.dependency 'Masonry', '~> 1.1.0'
end
