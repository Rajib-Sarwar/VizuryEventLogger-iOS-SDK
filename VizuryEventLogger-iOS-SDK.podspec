#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = 'VizuryEventLogger-iOS-SDK'
  spec.version      = '1.0.0'
  spec.summary      = 'VizuryEventLogger for iOS'
  spec.description  = <<-DESC
                      VizuryEventLogger is a mobile marketing automation company.
                      DESC

  spec.homepage     = 'https://www.vizury.com'
  spec.documentation_url = 'https://github.com/Rajib-Sarwar/VizuryEventLogger-iOS-SDK'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { 'Ayon Chowdhury' => 'ayon.chowdhury@affle.com' }
  spec.platform     = :ios
  spec.ios.deployment_target = '9.0'
  
  spec.source       = {
                       :git => 'https://github.com/Rajib-Sarwar/VizuryEventLogger-iOS-SDK.git',
                       :tag => spec.version.to_s }


  spec.ios.vendored_frameworks = 'Frameworks/VizuryEventLogger/VizuryEventLogger.framework'
  spec.preserve_paths =  'Frameworks/VizuryEventLogger/VizuryEventLogger.framework'
  spec.module_map = 'Frameworks/VizuryEventLogger/VizuryEventLogger.framework/Modules/module.modulemap'

  spec.requires_arc = true
  spec.frameworks = 'Foundation', 'UIKit', 'SystemConfiguration' , 'Security'
  spec.weak_framework = 'UserNotifications',  'WebKit'
  spec.dependency 'Firebase'
end
