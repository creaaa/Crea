Pod::Spec.new do |s|
  s.name        = "Crea"
  s.version     = "0.0.17"
  s.summary     = "My own framework"
  s.homepage    = "https://github.com/creaaa/Crea"
  s.license     = { :type => "MIT" }
  s.authors     = { "Crea" => "masataka0504@gmail.com" }

  s.requires_arc = true
  s.osx.deployment_target = "10.12"
  s.ios.deployment_target = "10.3"
  #s.watchos.deployment_target = "2.0"
  #s.tvos.deployment_target = "9.0"
  s.source   = { :git => "https://github.com/creaaa/Crea", :tag => "v#{s.version}" }
  s.source_files = "Sources/*.swift"
  s.pod_target_xcconfig =  {
        'SWIFT_VERSION' => '3.0',
  }
end