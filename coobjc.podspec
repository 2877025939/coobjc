Pod::Spec.new do |s|
  s.name         = "coobjc"
  s.version      = "1.0.1"
  s.summary      = "A coroutine framework for Objective-C"

  s.description  = <<-DESC
                    This library provides coroutine support for Objective-C and Swift. We added await method、generator and actor model like C#、Javascript and Kotlin. For convenience, we added coroutine categories for some Foundation and UIKit API in cokit framework like NSFileManager, JSON, NSData, UIImage etc. We also add tuple support in coobjc
                   DESC

  s.homepage     = "https://github.com/alibaba/coobjc"
  s.license = {
    :type => 'Copyright',
    :text => <<-LICENSE
           Alibaba-INC copyright
    LICENSE
  }

  s.author       = { "pengyutang125" => "pengyutang125@sina.com" }
  s.platform     = :ios

  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source =  { :git => "https://github.com/alibaba/coobjc.git", :tag => '1.0.0' } 
  s.source_files = 'coobjc/**/*.{h,m,s,c,mm}' 
  s.requires_arc = ['coobjc/api/*.m', 'coobjc/core/*.m', 'coobjc/csp/*.m', 'coobjc/promise/*.m', 'coobjc/util/*.m']

  s.library = 'c++'
  s.dependency 'fishhook', '~> 0.2.0'
end
