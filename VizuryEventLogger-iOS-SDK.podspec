
Pod::Spec.new do |spec|

  spec.name         = 'VizuryEventLogger-iOS-SDK'
  spec.version      = '1.0.0'
  spec.summary      = 'VizuryEventLogger for iOS'
  spec.description  = <<-DESC
                      This is vizury iOS SDK. This helps to setup sdk automatically
                      DESC

  spec.homepage     = 'https://github.com/Rajib-Sarwar/VizuryEventLogger-iOS-SDK'
  spec.documentation_url = 'https://bitbucket.org/vizury/ios-sdk/src/master/Readme.md'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { 'Chowdhury Md Rajib Sarwar' => 'ayon.chowdhury@affle.com' }
  spec.platform     = :ios
  spec.ios.deployment_target = '9.0'


  spec.source       = {
                       :git => "https://github.com/Rajib-Sarwar/VizuryEventLogger-iOS-SDK.git",
                       :tag => spec.version.to_s  }


  spec.ios.vendored_frameworks = 'Frameworks/VizuryEventLogger/VizuryEventLogger.framework'
  spec.preserve_paths = "Frameworks/VizuryEventLogger/VizuryEventLogger.framework"
  spec.module_map = 'Frameworks/VizuryEventLogger/VizuryEventLogger.framework/Modules/module.modulemap'

  
 spec.requires_arc = true
 spec.frameworks = 'Foundation', 'UIKit', 'Security', 'SystemConfiguration'
 spec.weak_framework = 'WebKit', 'UserNotifications'
 spec.dependency 'Firebase'

end
