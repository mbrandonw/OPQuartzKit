Pod::Spec.new do |s|
  s.name     = 'OPQuartzKit'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  
  s.summary  = 'OPQuartzKit'
  s.homepage = 'https://brandonwilliams.beanstalkapp.com/opquartzkit'
  s.author   = { 'Brandon Williams' => 'brandon@opetopic.com' }
  s.source   = { :git => 'git@brandonwilliams.beanstalkapp.com:/opquartzkit.git' }
  
  s.source_files = 'Source/**/*.{h,m}'
  
  s.frameworks = 'QuartzCore'
  
end