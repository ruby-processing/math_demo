lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'math_demo/version'
require 'rake'

Gem::Specification.new do |spec|
  spec.name = 'math_demo'
  spec.version = MathDemo::VERSION
  spec.author = 'monkstone'
  spec.email = 'mamba2928@yahoo.co.uk'
  spec.description = <<-EOS
  Geomerative art using the ruby Matrix class to generate circumcircles around
  triangles, created from moving points
  EOS
  spec.summary = %q{An example of a propane app as gem.}
  spec.homepage = "https://ruby-processing.github.io/math_demo/"
  spec.post_install_message = %q{Congratulations you've just installed propane.}
  spec.license = 'GPL-3.0'
  spec.files = FileList['bin/**/*', 'lib/**/*'].exclude(/jar/).to_a
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.6'
  spec.add_runtime_dependency 'propane', '~> 3.11'
  spec.platform      = 'java'
  spec.add_development_dependency 'rake', '~> 13'
  spec.add_development_dependency 'minitest', '~> 5.10'
end
