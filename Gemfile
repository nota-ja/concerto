# Edit this Gemfile to bundle your application's dependencies.
source 'https://rubygems.org'

gem 'rails', '~> 4.2.1'

# Get the absolute path of this Gemfile so the includes below still work
# when the current directory for a bundler command isn't the application's
# root directory.
basedir = File.dirname(__FILE__)

# Load the gems used for remote reporting.
if File.exists?("#{basedir}/Gemfile-reporting")
  eval File.read("#{basedir}/Gemfile-reporting")
end

# The Gemfile-plugins gem list is managed by Concerto itself,
# through the ConcertoPlugins controller.
group :concerto_plugins do
  eval File.read("#{basedir}/Gemfile-plugins") if File.exists?("#{basedir}/Gemfile-plugins")
end

# Load a local Gemfile if it exists
if File.exists?("#{basedir}/Gemfile.local")
  eval File.read("#{basedir}/Gemfile.local")
end

# Gems used only for assets and not required
# in production environments by default.
gem 'sass-rails', '~> 5.0.3'
gem 'sprockets', '~> 2.12.0'
gem 'therubyracer', '~> 0.12.1', :platforms => :ruby
gem 'execjs', '~> 2.2.2'
gem 'uglifier', '~> 2.7.1'

gem 'jquery-rails', '~> 3.1.2'
gem 'turbolinks', '~> 2.5.3'
gem 'jquery-timepicker-rails', '~> 1.4.3'
gem 'bootstrap-datepicker-rails', '~> 1.4.0'
gem 'twitter-bootstrap-rails-confirm', '~> 1.0.4'

#RMagick is used for image resizing and processing
gem 'rmagick', '~> 2.14.0', :require => 'rmagick', :platforms => :ruby

# Attachable does all the file work.
gem 'attachable', '~> 0.0.5'

gem 'devise', '~> 3.4.1'
gem 'cancancan', '~> 1.10.1'

gem 'json', '~> 1.8.2'
gem 'rubyzip', '~> 1.1.7'

# Process jobs in the background
gem 'foreman', '~> 0.78.0', :group => :development
gem 'delayed_job_active_record', '~> 4.0.3'
gem 'clockwork', '~> 1.1.0'

# Test Coverage
gem 'simplecov', '~> 0.9.2', :require => false, :group => :test

gem 'kaminari', '~> 0.16.3'

# Gem Auditing
gem 'bundler-audit', '~> 0.3.1', :require => false, :group => :test

require "#{Dir.getwd}/lib/command_check.rb"
if system_has_mysql?
  mysql_platforms = Bundler::Dependency::PLATFORM_MAP.keys
else
  mysql_platforms = [:mswin]
end
if system_has_postgres?
  postgres_platforms = Bundler::Dependency::PLATFORM_MAP.keys
else
  postgres_platforms = [:mswin]
end

# In production we prefer MySQL over sqlite3.  If you are only
# interested in development and don't want to bother with production,
# run `bundle install --without production` to ignore MySQL.
gem 'sqlite3', '~> 1.3.10', :group => [:development, :test]

gem 'mysql2', :require => false, :group => :production, :platforms => mysql_platforms
gem 'pg', :require => false, :group => :production, :platforms => postgres_platforms

gem 'public_activity', '~> 1.4.2'

gem 'redcarpet', '~> 3.2.3'
gem 'concerto_docsplit', '~> 0.7.5'

# NProgress provides progress bars for pages loaded via Turbolinks
gem 'nprogress-rails', '~> 0.1.6.6'
gem 'google-analytics-turbolinks', '~> 0.0.4'

# I18n Tasks
group :development do
  gem 'i18n-tasks', '~> 0.7.13'
  gem 'slop', '~> 3.6.0' # Required due to https://github.com/glebm/i18n-tasks/issues/118
end

gem 'i18n-js', '>= 3.0.0.rc8', '< 3.1.0'

