require 'rubygems'
require 'rake'
require 'rake/clean'

require 'rspec/core/rake_task'

$LOAD_PATH << File.dirname(__FILE__) + '/lib/'
require 'www/favicon'

NAME = 'www-favicon'
VERS = WWW::Favicon::VERSION

CLEAN.include ['**/.*.sw?', '*.gem', '.config']

task :default => [:spec]

RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = ['--options', "spec/spec.opts"]
  t.pattern = ['spec/*_spec.rb']
end

task :build do
  system "gem build #{NAME}.gemspec"
end

task :install do
  name = "#{NAME}-#{VERS}.gem"
  system "rake build"
  system "sudo gem install #{name}"
end

task :uninstall => [:clean] do
  system "sudo gem uninstall #{NAME}"
end

desc 'Test against the provided URL'
task :try do
  url = ENV['URL']
  raise "URL is required." unless url

  require 'rubygems'
  require 'www/favicon'

  favicon_url = WWW::Favicon.new.find(url)
  puts "Favicon URL for #{url} is #{favicon_url.inspect}"
end
