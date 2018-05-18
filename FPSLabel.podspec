Pod::Spec.new do |s|
  s.name         = "FPSLabel"
  s.version      = "1.0.1"
  s.summary      = "A draggble label that display FPS."                 
  s.homepage     = "https://github.com/qkzhu/FPSLabel"
  s.license      = { :type => 'MIT' }
  s.author       = { "qiankun" => "zqkun.public@gmail.com" }

  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/qkzhu/FPSLabel.git", :tag => s.version }
  s.source_files = "FPSLabel/*.{h,m}"
  s.requires_arc = true
end
