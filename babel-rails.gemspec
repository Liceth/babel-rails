# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'babel/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "babel-rails"
  spec.version       = Babel::Rails::VERSION
  spec.authors       = ["Liceth Ovalles", "Santiago Pastorino"]
  spec.email         = ["liceova22@gmail.com", "santiago@wyeworks.com"]

  spec.summary       = %q{ES2015+ adapter for the Rails asset pipeline.}
  spec.description   = %q{ES2015+ adapter for the Rails asset pipeline.}
  spec.homepage      = "https://github.com/Liceth/babel-rails."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'railties', '~> 5.0'
  spec.add_runtime_dependency 'sprockets', '>= 4.0.0.beta4'
  spec.add_runtime_dependency 'babel-transpiler', '~> 0.7', '>= 0.7.0'
  spec.add_runtime_dependency 'sprockets4-commonjs', '~> 0.0', '>= 0.0.7'

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
