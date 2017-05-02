Pod::Spec.new do |s|

  s.name         = "WQExtensions"
  s.version      = "0.0.3"
  s.summary      = "Extensions,Subclasses,Tools from WQ"


  s.homepage     = "https://github.com/KevinLex/WQExtensions"

  s.license      = "MIT"


  s.author             = { "wuqiang" => "qiang.wu@w-oasis.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/KevinLex/WQExtensions.git", :tag => s.version }


  s.source_files  = "WQAddtions/**/*.{h,m}"

  # s.public_header_files = "Classes/**/*.h"

  s.requires_arc = true


end
