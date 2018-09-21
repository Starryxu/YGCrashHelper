Pod::Spec.new do |s|

s.name         = "YGCrashHelper"
s.version      = "1.1.1"
s.summary      = "异常操作处理"
s.description  = <<-DESC
                    本次更新新增NSMutableArray几个方法的异常d拦截处理.
                    DESC
s.homepage     = "https://github.com/Starryxu/YGCrashHelper.git"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "xuyaguang" => "xu_yaguang@163.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/Starryxu/YGCrashHelper.git", :tag => s.version.to_s }
s.source_files  = "YGCrashHelper/YGCrashHelper/*.{h,m}"
s.requires_arc = true

end
