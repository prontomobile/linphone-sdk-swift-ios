Pod::Spec.new do |s|
  s.name         = "linphone-sdk-novideo-pronto"
  s.version      = "5.6.0-amrwb-1"
  s.summary      = "Pronto custom Linphone SDK (no-video, AMR-WB enabled)."
  s.description  = "Custom Pronto build of linphone-sdk 5.6.0 with AMR-WB enabled via -DENABLE_NON_FREE_FEATURES=ON -DENABLE_AMRWB=ON. Drop-in replacement for linphone-sdk-novideo."
  s.homepage     = "https://github.com/prontomobile/linphone-sdk"
  s.license      = { :type => "GPL", :file => "LICENSE" }
  s.author       = { "Pronto Mobile" => "engineering@hellopronte.com" }
  s.platform     = :ios, "13.0"
  s.source       = { :http => "https://github.com/prontomobile/linphone-sdk/releases/download/v5.6.0-amrwb-1/linphone-sdk-novideo-pronto-v5.6.0-amrwb-1.zip" }
  s.vendored_frameworks = "linphone-sdk-novideo/apple-darwin/XCFrameworks/**"
  s.pod_target_xcconfig = { 'VALID_ARCHS' => "arm64 x86_64" }
  s.user_target_xcconfig = { 'VALID_ARCHS' => "arm64 x86_64" }
  s.module_name   = 'linphonesw'
  s.swift_version = '4.0'
  s.source_files  = "linphone-sdk-novideo/apple-darwin/share/linphonesw/*.swift"
  s.framework     = 'linphone', 'belle-sip', 'bctoolbox'
end
