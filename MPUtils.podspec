#
# Be sure to run `pod lib lint MPUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MPUtils'
  s.version          = '0.3.2'
  s.summary          = 'Swift utility classes and extensions'
  s.swift_version    = '4.2'
  s.description      = <<-DESC
  Couple of Swift utility methods and extensions
DESC

  s.homepage         = 'https://github.com/martinpucik/MPUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'martinpucik' => 'martin@martinpucik.com' }
  s.source           = { :git => 'https://github.com/martinpucik/MPUtils.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/MartinPucik'

  s.ios.deployment_target = '10.0'
  s.source_files = 'Source/**/*'
  s.frameworks = 'UIKit', 'Foundation'

end
