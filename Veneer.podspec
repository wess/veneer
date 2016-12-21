Pod::Spec.new do |s|
  s.name          = "Veneer"
  s.version       = "1.0"
  s.summary       = "Building NSAttributedStrings with style"
  s.description   = "A simple library for building attributed strings, for a more civilized age."
  s.homepage      = "https://github.com/wess/veneer"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = "Wess Cope"
  s.platform      = :ios, '9.0'
  s.source        = { :git => "https://github.com/wess/veneer.git", :tag => "1.0" }
  s.source_files  = "Veneer/Sources/*.*"
end
