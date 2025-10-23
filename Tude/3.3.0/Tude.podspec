Pod::Spec.new do |s|
  s.name             = 'Tude'
  s.version          = '3.3.0'
  s.summary          = 'Tude SDK'
  s.homepage         = 'https://www.aditude.com'
  s.license          = { :type => 'Custom', :file => 'LICENSE' }
  s.author           = { 'ios.team' => 'integrations@aditude.io' }
  s.source           = { :git => 'https://github.com/aditudeinc/cloud-ios-binaries.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.cocoapods_version = '>= 1.10'
  s.requires_arc = true

  s.static_framework = true
  s.vendored_frameworks = 'Tude.xcframework'
  s.preserve_paths =  'Tude.xcframework/*'
    
  s.dependency 'PrebidMobile', '3.1.1'
  s.dependency 'Google-Mobile-Ads-SDK', '12.9.0'
  s.dependency 'AmazonPublisherServicesSDK', '~> 4.9.7'

  s.resource_bundles = {
    'TudeResources' => ['Tude.xcframework/ios-arm64/PrivacyInfo.xcprivacy'] 
  }

  s.user_target_xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
    'SWIFT_INCLUDE_PATHS' => '"$(PODS_ROOT)/Tude/**" "$(PODS_XCFRAMEWORKS_BUILD_DIR)/**"'
  }
end
