# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use dotenv to hold your secrets
gem 'dotenv-rails', groups: [:development, :test]
# Use Puma as the app server
gem "puma", ">= 3.12.2"
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

gem 'bcrypt'
gem 'bootstrap', '~> 4.3.1'
gem 'devise', '>= 4.7.1'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'google-api-client', '~> 0.13.6'
gem 'jquery-rails'
gem 'msgpack'
gem 'nokogiri', '>= 1.10.4'
gem 'rake'
gem "rubyzip", ">= 1.3.0"

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'faker', git: 'https://github.com/faker-ruby/faker.git', branch: 'master'
  gem 'rspec-rails', '~> 3.8'
  gem 'standard'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'pry-rails'
  gem 'reek'
  gem 'rubocop', '~> 0.74.0', require: false
  gem 'solargraph'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'database_cleaner'
  gem 'rails-controller-testing'
  gem 'simplecov', require: false
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
