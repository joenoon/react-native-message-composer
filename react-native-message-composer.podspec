require "json"
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name          = package['name']
  s.version       = package["version"]
  s.summary       = package['description']
  s.requires_arc  = true
  s.author        = { 'anarchicknight' => 'anarchicknight@gmail.com' }
  s.license       = package["license"]
  s.homepage      = package["homepage"]
  s.source        = { :git => 'https://github.com/anarchicknight/react-native-message-composer.git' }
  s.platform      = :ios, '8.0'
  s.dependency      'React'
  s.source_files = 'RNMessageComposer/*.{h,m}'
end
