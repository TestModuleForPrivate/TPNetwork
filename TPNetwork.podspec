
Pod::Spec.new do |s|
  s.name             = 'TPNetwork'
  s.version          = '0.1.0'
  s.summary          = 'This is TPNetwork'


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/TestModuleForPrivate/TPNetwork'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TPQuietBro' => '1186886308@qq.com' }
  s.source           = { :git => 'https://github.com/TestModuleForPrivate/TPNetwork.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'TPNetwork/Classes/**/*'

  s.dependency 'AFNetworking', '~> 3.1'
end
