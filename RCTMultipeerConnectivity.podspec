require 'json'
package = JSON.parse(File.read('./package.json'))

Pod::Spec.new do |s|
  s.name         = "RCTMultipeerConnectivity"
  s.version      =  package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                    RCTMultipeerConnectivity
                   DESC
  s.homepage     = "n/a"
  s.license      = package['license']
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "Brian Henry" => "brianworkss@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/brianmak3/react-native-multipeer", :tag => "master" }
  s.source_files  = "RCTMultipeerConnectivity/**/*.{h,m}"
  s.requires_arc = true
  s.dependency "React"
  #s.dependency "others"
end

  