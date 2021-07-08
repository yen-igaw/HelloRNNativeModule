require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-demo-yp"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/yen-igaw/react-native-demo-yp.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm}"

  s.dependency "React-Core"
end
require 'json'
pkg = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|
  s.name         = pkg["name"]
  s.version      = pkg["version"]
  s.summary      = pkg["description"]
  s.requires_arc = true
  s.license      = pkg["license"]
  s.homepage     = pkg["homepage"]
  s.author       = pkg["author"]
  s.source       = { :git => pkg["repository"]["url"] }
  s.source_files = 'ios/**/*.{h,m}'
  s.platform     = :ios, "9.0"
  # s.dependency 'AdBrixRemastered'
  # s.dependency 'AdBrixRemastered', '1.6.5801'
  s.dependency 'React'
end