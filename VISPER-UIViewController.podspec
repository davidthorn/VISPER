#
# Be sure to run `pod lib lint VISPER-Wireframe.podspec' to ensure this is a

Pod::Spec.new do |s|
  s.name             = 'VISPER-UIViewController'
  s.version          = '3.0.0'
  s.summary          = 'Extends UIViewController with presenters which are notified on viewDidLoad, viewWillApperar, etc'

  s.description      = <<-DESC
Extends UIViewController with presenters which are notified on viewDidLoad, viewWillApperar, etc ...
                       DESC

  s.homepage         = 'https://github.com/barteljan/VISPER'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jan Bartel' => 'barteljan@yahoo.de' }
  s.source           = { :git => 'https://github.com/barteljan/VISPER.git', :tag => 'VISPER-UIViewController-'+String(s.version) }
  s.social_media_url = 'https://twitter.com/janbartel'

  s.ios.deployment_target = '8.0'

  s.source_files = 'VISPER-UIViewController/Classes/**/*'
  s.dependency 'VISPER-Objc','~> 3.0.0'
  s.dependency 'VISPER-Presenter','~> 3.0.0'
end
