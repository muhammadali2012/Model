Pod::Spec.new do |s|
  s.name         = 'Model'
  s.version      = '1.0.0'
  s.summary      = 'Add super powers to your codable Models'
  s.description  = 'Using codable with value that is sometimes an Int and other times a String, Swift Decodable Optional Key, Swift Codable null handling, Server Json types to Swift native types conevrsion using nested compose swift propoerty wrappers.'
  s.homepage     = 'https://github.com/muhammadali2012/Model'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Muhammad Ali' => 'aliarham2012@gmail.com' }
  s.source       = { :git => 'https://github.com/muhammadali2012/Model.git', :tag => s.version.to_s }
  s.swift_version = '5.0' 

  s.source_files = 'Model/*' # Include your source files
end

