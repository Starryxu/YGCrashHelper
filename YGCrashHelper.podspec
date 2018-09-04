Pod::Spec.new do |s|

s.name         = "YGCrashHelper"
s.version      = "1.0.3"
s.summary      = "处理程序未识别方法及容器类方法操作造成的崩溃问题"
s.homepage     = "https://github.com/Starryxu/YGCrashHelper.git"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "xuyaguang" => "xu_yaguang@163.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/Starryxu/YGCrashHelper.git", :tag => s.version.to_s }
s.source_files  = "YGCrashHelper/YGCrashHelper/*.{h,m}"
s.requires_arc = true

end
