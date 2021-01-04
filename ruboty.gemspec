lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruboty/version"

Gem::Specification.new do |spec|
  spec.name          = "ruboty"
  spec.version       = Ruboty::VERSION
  spec.authors       = ["Ryo Nakamura"]
  spec.email         = ["r7kamura@gmail.com"]
  spec.summary       = "Ruby + Bot = Ruboty"
  spec.homepage      = "https://github.com/r7kamura/ruboty"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.2.2"

  spec.add_dependency "activesupport"
  spec.add_dependency "bundler"
  spec.add_dependency "dotenv"
  spec.add_dependency "mem"
  spec.add_dependency "slop"
  spec.add_dependency "webrick"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "3.4.0"
  spec.add_development_dependency "simplecov"
end
