#
#  Be sure to run `pod spec lint ZHLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "ZHLib"
  s.version      = "0.0.1"

  s.homepage     = "https://www.yuenvshen.com"
  s.license      = "BSD"
  s.author             = { "zhzenghui" => "zhzenghui@gmail.com" }

  s.ios.deployment_target = "6.0"

  s.source       = { :git => "https://github.com/zhzenghui/ZHLib.git", :tag => "0.0.1" }


  s.source_files  = "ZHLib", "ZHLib/**/*.{h,m}"
  s.public_header_files = "ZHLib/**/*.h"
  s.requires_arc = true

end
