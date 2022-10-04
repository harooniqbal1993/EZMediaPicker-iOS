 #
# Be sure to run `pod lib lint EZMediaPicker-iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EZMediaPicker-iOS'
  s.version          = '0.1.0'
  s.summary          = 'EZMediaPicker-iOS is media picker library for quick integration for developers while picking images or videos. Developers only need to write one line code to integrate it.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Easy to use and quick with Error Handling.
                       DESC

  s.homepage         = 'https://github.com/harooniqbal1993/EZMediaPicker-iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'harooniqbl1993' => 'harooniqbal1993@gmail.com' }
  s.source           = { :git => 'https://github.com/harooniqbal1993/EZMediaPicker-iOS.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.linkedin.com/in/haroon-iqbal-95b90a115/'

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'

  s.source_files = 'Source/**/*.swift'
  
  # s.resource_bundles = {
  #   'EZMediaPicker-iOS' => ['EZMediaPicker-iOS/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
