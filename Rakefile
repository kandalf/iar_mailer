require 'bundler'
require 'rubygems'
require 'rake/gempackagetask'
require 'rake/testtask'
require 'rake/rdoctask'

$:.unshift(File.expand_path(File.dirname(__FILE__) + '/lib'))

require './lib/action_mailer/ar_sendmail'

Bundler::GemHelper.install_tasks(:name => :iar_mailer)

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the iar_mailer gem.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib' << 'test'
  t.test_files = FileList['test/**/test_*.rb'].exclude("test/test_helper.rb")
  t.verbose = true
end
