require 'rubygems'
require 'bundler'
Bundler.setup

#require 'spec/rake/spectask'
Rspec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features)

task :default => :features
task :features => :spec
