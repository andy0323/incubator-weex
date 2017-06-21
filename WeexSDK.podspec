# coding: utf-8
Pod::Spec.new do |s|

  s.name         = "WeexSDK"

  s.version      = "0.0.7"

  s.summary      = "WeexSDK Source ."

  s.description  = <<-DESC
                   A framework for building Mobile cross-platform UI
                   DESC

  s.homepage     = "https://github.com/andy0323/incubator-weex"
  s.license = {
    :type => 'Copyright',
    :text => <<-LICENSE
          RMB-WeexSDK
    LICENSE
  }
  s.authors      = { "andy0323"      => "andy_ios@163.com"
                   }
  s.platform     = :ios
  s.ios.deployment_target = '7.0'
  s.source       = { :git => "https://github.com/andy0323/incubator-weex.git", :tag => "#{s.version}" }
  s.source_files = 'ios/sdk/WeexSDK/Sources/**/*.{h,m,mm,c}'
  s.resources = 'pre-build/native-bundle-main.js', 'ios/sdk/WeexSDK/Resources/wx_load_error@3x.png'

  s.user_target_xcconfig  = { 'FRAMEWORK_SEARCH_PATHS' => "'$(PODS_ROOT)/WeexSDK'" }
  s.requires_arc = true
  s.prefix_header_file = 'ios/sdk/WeexSDK/Sources/Supporting Files/WeexSDK-Prefix.pch'

#  s.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DEBUG=1' }

  s.xcconfig = { "OTHER_LINK_FLAG" => '$(inherited) -ObjC'}

  s.frameworks = 'CoreMedia','MediaPlayer','AVFoundation','AVKit','JavaScriptCore', 'GLKit'

  s.dependency 'SocketRocket'
  s.libraries = "stdc++"

end
