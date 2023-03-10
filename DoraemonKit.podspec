Pod::Spec.new do |s|
  s.name         = "DoraemonKit"
  s.version      = "1.0.0"
  s.summary      = "iOS 各式各样的工具集合"
  s.description  = <<-EOS
  iOS 各式各样的工具集合
  就是Dokit的重新修改, 为了编译
  参考: https://github.com/didi/DoraemonKit.git
  EOS
  s.homepage     = "https://github.com/ghostcrying/DoraemonKit"
  s.author       = { "ghost" => "czios1501@gmail.com" }
  s.ios.deployment_target = '11.0'
  s.source       = { :git => "https://github.com/ghostcrying/DoraemonKit.git", :tag => s.version }
  
  s.default_subspec = "Core"
  
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
  s.swift_version = '5.0'
  s.cocoapods_version = '>= 1.4.0'
  
  s.subspec 'Core' do |ss|
    ss.source_files  = 'Sources/DoraemonKit/Core/**/*.{h,m,c,mm}'
    ss.resource_bundle = {
      'DoraemonKit' => 'Sources/DoraemonKit/Resources/**/*'
    }
    ss.dependency 'GCDWebServer'
    ss.dependency 'GCDWebServer/WebUploader'
    ss.dependency 'GCDWebServer/WebDAV'
    ss.dependency 'FMDB'
  end
  
end
