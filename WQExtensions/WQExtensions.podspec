
Pod::Spec.new do |s|

  s.name         = "WQExtensions"
  s.version      = "0.0.5"
  s.summary      = "Extensions"
  s.homepage     = "https://github.com/KevinLex/WQExtensions"
  s.license      = "MIT"
  s.author             = { "KevinLex" => "email@address.com" }
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/KevinLex/WQExtensions.git", :tag => s.version }
  s.source_files  = "WQExtensions", "WQExtensions/WQAddtions/WQAddtions.h"

  s.requires_arc = true

    s.subspec 'WQExtensions' do |ss|
        ss.source_files = "WQExtensions", "WQExtensions/WQAddtions/WQExtensions/*.{h,m}"
    end


    s.subspec 'WQSubclasses' do |ss|
        ss.source_files = "WQExtensions", "WQExtensions/WQAddtions/WQSubclasses/*.{h,m}"
    end

    s.subspec 'WQTools' do |ss|
        ss.source_files = "WQExtensions", "WQExtensions/WQAddtions/WQTools/*.{h,m}"
    end

end
