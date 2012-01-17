Pod::Spec.new do |s|
  s.name     = 'OPQuartzKit'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  
  s.summary  = 'OPQuartzKit'
  s.homepage = 'https://github.com/mbrandonw/OPQuartzKit'
  s.author   = { 'Brandon Williams' => 'brandon@opetopic.com' }
  s.source   = { :git => 'git@github:mbrandonw/OPQuartzKit.git' }
  
  s.source_files = 'OPQuartzKit/Source/**/*.{h,m}'
  
  s.frameworks = 'QuartzCore'
  
end