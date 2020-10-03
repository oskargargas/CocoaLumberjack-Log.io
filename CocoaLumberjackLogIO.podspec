#
# Be sure to run `pod lib lint CocoaLumberjackLogIO.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CocoaLumberjackLogIO'
  s.version          = '0.0.1'
  s.summary          = 'Log.io logger for CocoaLumberjack.'

  s.description      = <<-DESC
  Log.io logger for CocoaLumberjack.
  Add your self hosted Log.io instance as remote logger for all your CocoaLumberjack logs.
                       DESC

  s.homepage         = 'https://github.com/sergiog90/CocoaLumberjack-Log.io'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sergio García' => 'sergiog90@icloud.com' }
  s.source           = { :git => 'https://github.com/sergiog90/CocoaLumberjack-Log.io.git', :tag => s.version.to_s }

  s.swift_versions = '5.0'
  s.ios.deployment_target = '9.3'

  s.source_files = 'CocoaLumberjackLogIO/Classes/**/*'

  s.dependency 'CocoaAsyncSocket', '~> 7.6.4'
  s.dependency 'CocoaLumberjack', '~> 3.6.0'
end
