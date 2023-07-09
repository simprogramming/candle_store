# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"
gem "cssbundling-rails"
gem "jbuilder"
gem "jsbundling-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.5"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
# gem "redis", "~> 4.0"
# gem "kredis"
# gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
# gem "sassc-rails"
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "web-console"
  # gem "rack-mini-profiler"
  # gem "spring"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"

  gem "simplecov", require: false
  gem "simplecov-console", require: false
end

group :development, :test do
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "rubocop-rspec", require: false
end

gem "devise"
gem 'devise-i18n'
gem "draper"
gem "haml-rails"
gem "html2haml"
gem "i18n-tasks"
gem "rails-i18n", "~> 7.0.0"
gem "pundit"
gem "rubocop"
gem "rubocop-performance"
gem "rubocop-rails_config"
gem "simple_form"
