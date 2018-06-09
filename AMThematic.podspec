
Pod::Spec.new do |s|
s.name             = 'AMThematic'
s.version          = '0.1.0'
s.summary          = 'A Lightweight Theme Engine'

s.description      = <<-DESC
A Lightweight Theme Engine, completely written in Swift!
DESC

s.homepage         = 'https://www.twitter.com/atticmanatee'
s.license          = { :type => 'CC0', :file => 'LICENSE' }
s.author           = { 'Joao Pires' => 'atticmanatee@gmail.com' }
s.source           = { :git => 'https://github.com/atticmanatee/AMThemed.git', :tag => s.version.to_s }

s.ios.deployment_target = '11.0'
s.source_files = 'AMThematic/*.swift'

end
