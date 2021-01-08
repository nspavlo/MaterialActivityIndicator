Pod::Spec.new do |s|
  s.name             = 'MaterialActivityIndicator'
  s.version          = '0.0.6'
  s.summary          = 'Material activity indicator'
  s.description      = <<-DESC
Material activity indicator (Circular progress indicator)
                       DESC
  s.swift_version    = '5.3'

  s.homepage         = 'https://github.com/nspavlo/MaterialActivityIndicator'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nspavlo' => 'jans.pavlovs@gmail.com' }
  s.source           = { :git => 'https://github.com/nspavlo/MaterialActivityIndicator.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'

  s.source_files = 'Sources/MaterialActivityIndicator/**/*'
  s.frameworks = 'UIKit'
end
