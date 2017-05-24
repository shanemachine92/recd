source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end



gem 'rails', '~> 5.1.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "rspec-rails", :group => [:development, :test]
gem 'friendly_id', '~> 5.1.0'
gem 'devise', '~> 4.3'

gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'petergate', '~> 1.7', '>= 1.7.3'
gem 'redis', '~> 3.3', '>= 3.3.1'
gem 'rubypython', '~> 0.6.3'
gem 'twitter', '~> 6.1'
gem 'oauth', '~> 0.5.2'
gem 'twitter_oauth', '~> 0.4.94'
gem 'dotenv', '~> 2.2', '>= 2.2.1'
gem 'will_paginate', '~> 3.1', '>= 3.1.5'
gem 'capybara', '~> 2.14'
gem 'rails-controller-testing', '~> 1.0', '>= 1.0.2'
gem 'gritter', '~> 1.2'

ruby "2.4.0"
