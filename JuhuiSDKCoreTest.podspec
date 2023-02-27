#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_openim_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'JuhuiSDKCoreTest'
  s.version          = '0.0.1'
  s.summary          = 'A Test core.'
  s.description      = <<-DESC
A Test core.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => 'LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  # s.source           = { :path => '.' }
  s.source       = { :git => "https://github.com/SylviaRu/PodTest-SDK-Core.git", :tag => "#{s.version}" }
  # s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  #s.dependency 'OpenIMSDKCore', :git => 'http://gitlab.ipebg.efoxconn.com/H2104846/juhui_sdk_core.git', :tag => '0.0.1'
  # s.dependency 'OpenIMSDKCore','2.0.9'
  s.static_framework = true
  s.vendored_frameworks = 'build/JuhuiSDKCoreTest.xcframework'
  # s.vendored_frameworks = 'Classes/frameworks/JuhuiSDKCore.framework'
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64' }
  s.swift_version = '5.0'
end
