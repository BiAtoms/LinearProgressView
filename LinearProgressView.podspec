Pod::Spec.new do |s|
    s.name             = 'LinearProgressView'
    s.version          = '1.0.0'
    s.summary          = 'A simple linear progress bar.'
    s.homepage         = 'https://github.com/BiAtoms/LinearProgressView'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Orkhan Alikhanov' => 'orkhan.alikhanov@gmail.com' }
    s.source           = { :git => 'https://github.com/BiAtoms/LinearProgressView.git', :tag => s.version.to_s }

    s.ios.deployment_target = '8.0'
    s.source_files = 'Source/*.swift'
end
