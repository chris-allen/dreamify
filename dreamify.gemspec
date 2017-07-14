# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dream/version"

Gem::Specification.new do |spec|
  spec.name          = "dreamify"
  spec.version       = Dreamify::VERSION
  spec.authors       = ["Chris Allen"]
  spec.email         = ["chris@apaxsoftware.com"]

  spec.summary       = "This is the summary"
  spec.description   = "This is the description"
  spec.homepage      = "http://apaxsoftware.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "berkshelf", "~> 6.2"
end