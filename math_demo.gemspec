lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'math_demo/version'
require 'rake'

Gem::Specification.new do |s|
  s.name = 'math_demo'
  s.version = MathDemo::VERSION
  spec.email = 'mamba2928@yahoo.co.uk'
  spec.description = <<-EOS
  Math Demo uses propane (a ruby wrapper for the processing art framework)
  EOS
  spec.summary = %q{Example of creating a propane app.}
  spec.homepage = "https://ruby-processing.github.io/propane/"
  spec.license = 'GPL3'

  spec.files = FileList['bin/**/*', 'lib/**/*', 'library/**/*', 'samples/**/*', 'vendors/Rakefile'].exclude(/jar/).to_a
  spec.files << 'lib/rpextras.jar'

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.3'
  spec.add_development_dependency 'rake', '~> 11.2'
  spec.add_development_dependency 'minitest', '~> 5.8'
  spec.requirements << 'A decent graphics card'
  spec.requirements << 'java runtime >= 1.8.0_111+'
end
