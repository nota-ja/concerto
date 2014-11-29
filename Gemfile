# Edit this Gemfile to bundle your application's dependencies.
source 'https://rubygems.org'

gem 'rails', '~> 4.2.0.beta2'

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
gem 'sass-rails', '~> 5.0.0.beta1'
gem 'sprockets', '~> 2.12.0'
gem 'therubyracer', '~> 0.12.1', :platforms => :ruby
gem 'execjs', '~> 2.2.0'
gem 'uglifier', '~> 2.5.0'

gem 'jquery-rails', '~> 3.1.0'
gem 'turbolinks', '~> 2.2.2'
gem 'jquery-timepicker-rails', '~> 1.3.8.1'
gem 'bootstrap-datepicker-rails', '~> 1.3.0.2'
gem 'twitter-bootstrap-rails-confirm', '~> 1.0.3'

#RMagick is used for image resizing and processing
gem 'rmagick', '~> 2.13.3', :require => 'RMagick', :platforms => :ruby

# Attachable does all the file work.
gem 'attachable', '~> 0.0.5'

gem 'devise', git: 'https://github.com/plataformatec/devise.git', branch: 'lm-rails-4-2'
gem 'cancancan', '~> 1.9.2'

gem 'json', '~> 1.8.1'
gem "rubyzip", '< 1.0.0'

# Process jobs in the background
gem 'foreman', '~> 0.71.0', :group => :development
gem 'delayed_job_active_record', '~> 4.0.1'
gem 'clockwork', '~> 0.7.5'

# Test Coverage
gem 'simplecov', '~> 0.8.2', :require => false, :group => :test

gem 'kaminari', '~> 0.16.1'

# Gem Auditing
gem 'bundler-audit', :require => false, :group => :test

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
gem 'sqlite3', '~> 1.3.9', :group => [:development, :test]

gem 'mysql2', :require => false, :group => :production, :platforms => mysql_platforms
gem 'pg', :require => false, :group => :production, :platforms => postgres_platforms

gem 'public_activity', '~> 1.4.1'

gem 'redcarpet', '~> 3.2.0'
gem 'concerto_docsplit'

# NProgress provides progress bars for pages loaded via Turbolinks
gem 'nprogress-rails', '~> 0.1.6.3'
gem 'google-analytics-turbolinks', '~> 0.0.4'

gem 'i18n-tasks', '~> 0.4.5', :group => :development
