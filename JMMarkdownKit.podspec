Pod::Spec.new do |spec|
    spec.name         = 'JMMarkdownKit'
    spec.version      = '1.0.0'
    spec.license      = { :type => 'MIT' }
    spec.homepage     = 'https://github.com/bronenos'
    spec.authors      = { 'Stan Potemkin' => 'potemkin@jivosite.com' }
    spec.summary      = 'JMMarkdownKit'
  
    spec.ios.deployment_target  = '10.0'
  
    spec.source       = { :git => '' }
    spec.source_files = '**/*.{h,m,swift}'
  
    spec.framework    = 'SystemConfiguration'
  
    spec.dependency     'CDMarkdownKit'
    spec.dependency     'TypedTextAttributes'
    spec.dependency     'JMDesignKit'
  
    spec.exclude_files = 'Info.plist'
  end