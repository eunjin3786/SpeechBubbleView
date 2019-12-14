
Pod::Spec.new do |s|
  s.name             = 'SpeechBubbleView'
  s.version          = '0.1.3'
  s.summary          = 'Amazing SpeechBubbleView'
  s.description      = 'You can make various SpeechBubbleView with this!'
  s.homepage         = 'https://github.com/eunjin3786/SpeechBubbleView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'eunjin3786' => 'eunjin3786@naver.com' }
  s.source           = { :git => 'https://github.com/eunjin3786/SpeechBubbleView.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'Sources/SpeechBubbleView/Classes**/*'
  s.swift_version = '5.0'
end
