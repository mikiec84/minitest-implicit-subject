require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'spec'
  t.test_files = Dir['spec/**/*_spec.rb']
  t.name = :spec
  t.ruby_opts = ['-r spec_helper']
  t.verbose = true
end

task default: :spec
