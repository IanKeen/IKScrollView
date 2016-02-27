Pod::Spec.new do |spec|
  spec.name         = 'IKScrollView'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/iankeen/'
  spec.authors      = { 'Ian Keen' => 'iankeen82@gmail.com' }
  spec.summary      = 'Autolayout for UIScrollView made totally easy...'
  spec.source       = { :git => 'https://github.com/iankeen/ikscrollview.git', :tag => spec.version.to_s }

  spec.source_files = 'IKScrollView/**/**.{swift}'
  
  spec.requires_arc = true
  spec.platform     = :ios
  spec.ios.deployment_target = "8.0"
end
