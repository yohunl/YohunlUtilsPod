Pod::Spec.new do |s|
  s.name             = "YohunlUtilsPod"
  s.version          = "1.0.0"
  s.summary          = "测试pod生成framework的YohunlUtilsPod."

  s.description      = "测试用的,我们用来测试使用pod lib create 生成的framework工程"

  s.homepage         = "https://github.com/yohunl/YohunlUtilsPod"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "yohunl" => "yohunl@163.com" }
  s.source           = { :git => "https://github.com/yohunl/YohunlUtilsPod.git", :tag => s.version.to_s }

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'YohunlUtilsPod' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'AFNetworking'
end
