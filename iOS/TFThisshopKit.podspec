Pod::Spec.new do |s|
  s.name             = 'TFThisshopKit'
  s.version          = '0.1.2'
  s.summary          = 'TFThisshopKit'
  s.homepage         = 'http://code.tft.link/rms/tft-demo'
  s.license          = { :type => 'Commercial', :text => "©2020 Thaifintech.com" }
  s.author           = { 'qqianng' => '736516184@qq.com' }
  s.source           = { :http => "https://github.com/thaifintech-hub/TFThisshopKit/blob/main/iOS/TFThisshopKit.framework.zip?raw=true" }
  s.ios.deployment_target = '9.0'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 4.0.1'
  s.vendored_frameworks ='TFThisshopKit.framework'
  s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end