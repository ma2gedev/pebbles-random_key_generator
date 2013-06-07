# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pebbles/random_key_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "pebbles-random_key_generator"
  spec.version       = Pebbles::RandomKeyGenerator::VERSION
  spec.authors       = ["Takayuki Matsubara"]
  spec.email         = ["takayuki.1229@gmail.com"]
  spec.description   = %q{Simply generates random key from CLI.}
  spec.summary       = %q{Simply generates random key from CLI. Execute `random_key_generator` with key length args.}
  spec.homepage      = "https://github.com/ma2gedev/pebbles-random_key_generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
