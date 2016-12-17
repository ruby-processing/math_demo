require 'java'
require 'rake/testtask'

desc 'Default'
task default: [:test, :gem]

desc 'Test'
task :test do
  sh 'jruby test/circumcircle_test.rb'
  # "Uncomment attr_reader triangle_point.rb for next test to run"
  # sh 'jruby test/triangle_points_test.rb'
end

desc 'Gem'
task :gem do
  sh 'gem build math_demo.gemspec'
end

desc 'clean'
task :clean do
  sh "rm *.gem"
end
