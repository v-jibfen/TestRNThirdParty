
Pod::Spec.new do |s|
  s.name         = "RNTestRnThirdParty"
  s.version      = "1.0.0"
  s.summary      = "RNTestRnThirdParty"
  s.description  = "native library link test"
  s.homepage     = "https://github.com/v-jibfen/TestRNThirdParty"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNTestRnThirdParty.git", :tag => "master" }
  s.source_files  = "RNTestRnThirdParty/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  