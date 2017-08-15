

Pod::Spec.new do |s|
  s.name             = 'MGK3DButton'
  s.version          = '0.1.0'
  s.summary          = '3DButton,Button with Shadow'

  s.description      = <<-DESC
An override of UIButton class with 3d Push Effects.
                       DESC

  s.homepage         = 'https://github.com/mohammadghk/MGK3DButton'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mohammadghk' => 'mohammadghk@gmail.com' }
  s.source           = { :git => 'https://github.com/mohammadghk/MGK3DButton.git', :tag => s.version.to_s }
  #s.social_media_url = 'https://twitter.com/Mohammadghk'

  s.ios.deployment_target = '9.0'

  s.source_files = 'MGK3DButton/Classes/**/*'

   s.frameworks = 'UIKit'

end
