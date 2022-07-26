#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint authkeys.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'authkeys'
  s.version          = '0.0.1'
  s.summary          = 'A key based authentication plugin.'
  s.description      = <<-DESC
  A key based authentication plugin that aims to support WebAuthn, Fido u2f, and Key exchange mechanisms, while providing hooks for the specifics of each use.
                       DESC
  s.homepage         = 'https://github.com/xorsense/authkeys'
  s.license          = { :file => '../LICENSE' }
  s.authors          = { 'Michael Christenson II' => 'michael@xorsense.nl' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'
  s.swift_version = '5.0'

  # Flutter.framework does not contain a i386 slice.
  # Fixes M1 architecture bug
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => ['i386', 'arm64'] }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => ['i386', 'arm64']}
end
