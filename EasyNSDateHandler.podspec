#
# Be sure to run `pod lib lint EasyNSDateHandler.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "EasyNSDateHandler"
  s.version          = "0.1.0"
  s.summary          = "This library is created for avoiding boilerplate code when generating NSDate from year month date and when getting string output from NSDate."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "This library provides convenient methods to generate a NSDate object from year, month, date without bothering going through NSCalendar, NSDateComponent or such, as well as getting NSString output of NSDate content without creating NSDateFormatter, etc. Avoid lines of codes for just a single object creation."

  s.homepage         = "https://github.com/Kaopiz/EasyNSDateHandler.git"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Kaopiz@minhnh" => "minhnh.da@gmail.com" }
  s.source           = { :git => "https://github.com/Kaopiz/EasyNSDateHandler.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'EasyNSDateHandler' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
