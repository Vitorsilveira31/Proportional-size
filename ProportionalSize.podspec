Pod::Spec.new do |s|
  s.name             = 'ProportionalSize'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ProportionalSize.'

  s.description      = <<-DESC
The goal of this library is to make available sizes proportional to the device used, helping to create a layout more similar to prototypes.
                       DESC

  s.homepage         = 'https://github.com/vitorsilveira31/Proportional-size'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vitor Silveira' => 'vitorsilveira31@gmail.com' }
  s.source           = { :git => 'https://github.com/Vitorsilveira31/Proportional-size.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/vitusilveira31'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ProportionalSize/Classes/**/*'

end
