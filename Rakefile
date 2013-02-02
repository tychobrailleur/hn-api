# encoding: utf-8
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "hn-api"
  gem.homepage = "http://github.com/tychobrailleur/hn-api"
  gem.license = "MIT"
  gem.summary = %Q{Ruby interface to api.ihackernews.com}
  gem.description = %Q{Ruby interface to api.ihackernews.com}
  gem.email = "sebastien@weblogism.com"
  gem.authors = ["Sébastien Le Callonnec"]

  # Add executable to gem for debug purposes.
  gem.executables = ['hn-api']
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "hn-api #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
