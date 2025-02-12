#
# Be sure to run `pod lib lint AuthenticationLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AuthenticationLibrary'
  s.version          = '0.1.0'
  s.summary          = 'A library for implementing an authentication flow using AWS Cognito.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/DionicioCrz/AuthenticationLibrary'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DionicioCrz' => 'dioniciocruzvelazquez@gmail.com' }
  s.source           = { :git => 'https://github.com/DionicioCrz/AuthenticationLibrary.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.swift_version = "5.0"

  s.source_files = 'AuthenticationLibrary/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AuthenticationLibrary' => ['AuthenticationLibrary/Assets/*.png']
  # }

  s.dependency 'AWSMobileClient', '~> 2.30.2'
  s.dependency 'AWSUserPoolsSignIn', '~> 2.30.2'
  s.dependency 'AWSAuthUI', '~> 2.30.2'
  s.dependency 'KeychainSwift'
  s.frameworks = 'SwiftUI', 'Combine'
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
