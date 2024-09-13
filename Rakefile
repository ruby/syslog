require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/test_*.rb"]
end

require 'rake/extensiontask'
Rake::ExtensionTask.new("syslog_ext") do |ext|
  ext.ext_dir = 'ext/syslog'
end
task :default => :test
