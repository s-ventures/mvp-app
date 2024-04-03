Pod::Spec.new do |s|
  s.name             = 'CleafyPlugin'
  s.version          = '2.3.1'
  s.summary          = 'Flutter Cleafy Plugin'
  s.description      = <<-DESC
This plugin lets Dart language to integrate Cleafy Native SDK.
                       DESC
  s.homepage         = 'https://www.cleafy.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Cleafy' => 'support@cleafy.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'
  s.ios.vendored_frameworks = 'Cleafy.xcframework'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
