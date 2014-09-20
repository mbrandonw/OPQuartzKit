Pod::Spec.new do |spec|
  spec.name         = 'OPQuartzKit'
  spec.version      = '0.1.0'
  spec.license      = { type: 'BSD' }
  spec.homepage     = 'https://github.com/mbrandonw/OPQuartzKit'
  spec.authors      = { 'Brandon Williams' => 'mbw234@gmail.com' }
  spec.summary      = ''
  spec.source       = { :git => 'https://github.com/mbrandonw/OPQuartzKit.git' }
  spec.source_files = 'OPQuartzKit/*.{h,m}'
  spec.requires_arc = true
end
